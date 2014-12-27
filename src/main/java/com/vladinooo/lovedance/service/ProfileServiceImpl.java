package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.ProfileEditForm;
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
		user.setFirstname(profileEditForm.getFirstname());
		user.setSurname(profileEditForm.getSurname());
		user.setPhone(profileEditForm.getPhone());
		user.setBiography(profileEditForm.getBiography());
		userRepository.save(user);
	}



}
