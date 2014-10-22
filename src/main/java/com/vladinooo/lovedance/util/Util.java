package com.vladinooo.lovedance.util;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vladinooo.lovedance.dto.UserDetailsImpl;
import com.vladinooo.lovedance.entity.User;

@Component
public class Util {
	
	private static MessageSource messageSource;
	private static String hostAndPort;
	private static String activeProfiles;
	
	@Autowired
	public Util(MessageSource messageSource) {
		Util.messageSource = messageSource;
	}

    @Value("${hostAndPort}")
    public void setHostAndPort(String hostAndPort) {
    	Util.hostAndPort = hostAndPort;
    }
    
    @Value("${spring.profiles.active}")
    public void setActiveProfiles(String activeProfiles) {
    	Util.activeProfiles = activeProfiles;
    }
    
	public static void flash(RedirectAttributes redirectAttributes, String kind, String messageKey) {
		redirectAttributes.addFlashAttribute("flashKind", kind);
		redirectAttributes.addFlashAttribute("flashMessage", Util.getMessage(messageKey));
	}
	
    
	public static boolean isDev() {
    	return activeProfiles.equals("dev");
    }
    
    public static String hostUrl() {
		return (isDev() ? "http://" : "https://") + hostAndPort;
	}
	
	
	public static String getMessage(String messageKey, Object... args) {
		return messageSource.getMessage(messageKey, args, Locale.getDefault());
	}

	public static void validate(boolean valid, String msgContent, Object... args) {
		if (!valid)
			throw new RuntimeException(getMessage(msgContent, args));
	}

	public static User getSessionUser() {
		UserDetailsImpl auth = getAuth();
		return auth == null ? null : auth.getUser();
	}

	public static UserDetailsImpl getAuth() {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	
	    if (auth != null) {
	      Object principal = auth.getPrincipal();
	      if (principal instanceof UserDetailsImpl) {
	        return (UserDetailsImpl) principal;
	      }
	    }
	    return null;	  
	}

}