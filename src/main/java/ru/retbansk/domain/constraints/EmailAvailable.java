package ru.retbansk.domain.constraints;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import ru.retbansk.domain.constraints.impl.EmailAvailableValidator;
/**
 * 
 * @author Legres
 *You will have no errors if email is available
 */
@Target({ ElementType.FIELD,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = EmailAvailableValidator.class)
public @interface EmailAvailable {
String message();

Class<?>[] groups() default {};

Class<? extends Payload>[] payload() default {};
}

