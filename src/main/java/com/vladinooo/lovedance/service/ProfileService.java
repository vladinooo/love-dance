package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.dto.ProfileEditForm;

public interface ProfileService {

	public abstract void editProfile(long userId, ProfileEditForm profileEditForm);

}
