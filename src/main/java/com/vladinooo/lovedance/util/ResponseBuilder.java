package com.vladinooo.lovedance.util;


import com.vladinooo.lovedance.dto.ErrorMessage;
import com.vladinooo.lovedance.dto.SubmitResponse;
import com.vladinooo.lovedance.dto.ValidationResponse;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import java.util.ArrayList;
import java.util.List;

public class ResponseBuilder {

    public static ValidationResponse createValidationResponse(BindingResult result) {

        ValidationResponse validationResponse = new ValidationResponse();
        if (result.hasErrors()) {
            validationResponse.setStatus("FAIL");
            List<FieldError> allErrors = result.getFieldErrors();
            List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
            for (FieldError objectError : allErrors) {
                String message = objectError.getDefaultMessage();
                if (message == null) {
                    message = Util.getMessage(objectError.getCode());
                }
                errorMesages.add(new ErrorMessage(objectError.getField(), message));
            }
            validationResponse.setErrorMessageList(errorMesages);
        } else {
            validationResponse.setStatus("SUCCESS");
        }
        return validationResponse;
    }

    public static SubmitResponse createSubmitResponse(BindingResult result, String submitSuccessMsgCode) {
        SubmitResponse postResponse = new SubmitResponse();
        if (result.hasErrors()) {
            postResponse.setStatus("FAIL");
            postResponse.setMessage(Util.getMessage(result.getAllErrors().get(0).getCode()));
        } else {
            postResponse.setStatus("SUCCESS");
            postResponse.setMessage(Util.getMessage(submitSuccessMsgCode));
        }
        return postResponse;
    }
}
