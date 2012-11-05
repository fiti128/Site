package ru.retbansk.domain.constraints.impl;





import javax.annotation.Resource;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import ru.retbansk.domain.constraints.EmailAvailable;
import ru.retbansk.service.AccountService;

public class EmailAvailableValidator implements
ConstraintValidator<EmailAvailable, String> {
@Resource(name="accountService")	
AccountService userService;
@Override
public void initialize(EmailAvailable arg0) {
}

@Override
public boolean isValid(String email, ConstraintValidatorContext arg1) {
 if (userService.get(email) != null) {
	 return false;
 }
return true;
}

}