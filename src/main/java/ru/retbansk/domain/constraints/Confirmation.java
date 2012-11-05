package ru.retbansk.domain.constraints;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import ru.retbansk.domain.constraints.impl.ConfirmationValidator;

/**
 *Validate two fields have the same value.
 * 
 *Example with one field:
 *@Confirmation(first="password", second = "confirmPassword", message = " The passwords are not equal")
 * 
 *Example with two fields:
 *@Confirmation.List({
 *	@Confirmation(first="password", second = "confirmPassword", message = " The passwords are not equal"),
 *	@Confirmation(first="email", second = "confirmEmail", message = " The emails are not equal")
 *})
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = ConfirmationValidator.class)
@Documented
public @interface Confirmation {
    String message();

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

    /**
     * @return The first field
     */
    String first();

    /**
     * @return The second field
     */
    String second();

    /**
     * Defines several <code>@FieldMatch</code> annotations on the same element
     *
     * @see FieldMatch
     */
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    @Documented
            @interface List
    {
        Confirmation[] value();
    }
}
