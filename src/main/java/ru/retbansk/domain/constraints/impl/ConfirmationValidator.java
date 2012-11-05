package ru.retbansk.domain.constraints.impl;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.beanutils.BeanUtils;

import ru.retbansk.domain.constraints.Confirmation;

public class ConfirmationValidator implements ConstraintValidator<Confirmation, Object> {

	private String field;
	private String fieldConfirm;
	@Override
	public void initialize(Confirmation constraintAnnotation) {
		field = constraintAnnotation.first();
		fieldConfirm = constraintAnnotation.second();
		
	}

	@Override
	public boolean isValid(Object value, ConstraintValidatorContext context) {
		try 
		{
			final Object first = BeanUtils.getProperty(value, field);
			final Object second = BeanUtils.getProperty(value, fieldConfirm);
			return first == null && second == null || first != null && second.equals(first);
		} catch (final Exception e) {}
		
		return false;
	}

}
