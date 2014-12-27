package com.vladinooo.lovedance.controller;

import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.service.UserService;
import com.vladinooo.lovedance.util.Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

@Controller
public class FileUploadController {    

	private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);
	
	private UserService userService;
	
	@Autowired
	public FileUploadController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/uploadProfilePhoto", method = RequestMethod.POST)
	public String uploadFileHandler(@RequestParam("file") MultipartFile file,
			RedirectAttributes redirectAttributes) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String rootPath = "/Users/vladh/Downloads";
				User user = userService.getUser(Util.getSessionUser().getId());
				File dir = new File(rootPath + File.separator + "profile-photos");
				if (!dir.exists())
					dir.mkdirs();

				File serverFile = new File(dir.getAbsolutePath() + File.separator + "profile-photo-" + user.getId() + getImageExtension(file));
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="+ serverFile.getAbsolutePath());
				logger.info("You successfully uploaded profile photo");
				Util.flash(redirectAttributes, "success", "profilePhotoUploadSuccess");
				return "redirect:/user/photo/upload";
			} catch (Exception e) {
				logger.info("Profile photo upload failed: " + e.getMessage());
				Util.flash(redirectAttributes, "danger", "profilePhotoUploadFailure");
				return "redirect:/user/photo/upload";
			}
		} else {
			logger.info("No file specified");
			Util.flash(redirectAttributes, "danger", "profilePhotoUploadFailure2");
			return "redirect:/user/photo/upload";
		}
	}
	
	private String getImageExtension(MultipartFile file) {
		String extension = "";
		switch(file.getContentType()) {
			case "image/jpeg":
				extension = ".jpg";
				break;
			case "image/pjpeg":
				extension = ".jpg";
				break;
			case "image/png":
				extension = ".png";
				break;
			case "image/gif":
				extension = ".gif";
				break;
		}
		return extension;
	}

}
