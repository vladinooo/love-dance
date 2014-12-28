package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.ProfileEditForm;
import com.vladinooo.lovedance.entity.Profile;
import com.vladinooo.lovedance.entity.User;
import com.vladinooo.lovedance.repository.UserRepository;
import com.vladinooo.lovedance.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly = true)
public class ProfileServiceImpl implements ProfileService {

	private UserRepository userRepository;

	@Autowired
	public ProfileServiceImpl(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public void editProfile(long userId, ProfileEditForm profileEditForm) {
		User loggedIn = Util.getSessionUser();
		Util.validate(loggedIn.isAdmin() || loggedIn.getId() == userId, "noPermissions");
		User user = userRepository.findOne(userId);
		if (user.getProfile() == null) {
			Profile profile = new Profile();
			user.setProfile(profile);
		}
		user.getProfile().setFirstname(profileEditForm.getFirstname());
		user.getProfile().setSurname(profileEditForm.getSurname());
		user.getProfile().setPhone(profileEditForm.getPhone());
		user.getProfile().setBiography(profileEditForm.getBiography());
		userRepository.save(user);
	}



}
