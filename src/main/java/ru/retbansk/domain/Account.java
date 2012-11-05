package ru.retbansk.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import ru.retbansk.domain.constraints.Confirmation;

/**
 * 
 * @author Legres
 *
 */
@Entity
@Table(name= "account")
@Confirmation.List({
	 @Confirmation(first="password", second = "repeatPassword", message = " The passwords are not equal"),
	 @Confirmation(first="email", second = "repeatEmail", message = " The emails are not equal")
	 })
public class Account implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String email;
	private String password;
	private String repeatPassword;
	private String repeatEmail;
	private String conditions;
	private String firstName;
	private String lastName;
	private String birthYear;
	private String phone;
	private String gender;
	private String birthMonth;
	private String street;
	private Boolean children;
	private String country;
	private String city;
	private String nationality;
	private String webSite;
	private String textarea;
	private String birthDate;
	private Set<Role> athorities = new HashSet<Role>(0);
	private Set<Dept> depts = new HashSet<Dept>(0);
	
	public Account() {}
	

	
	

	@Id
	@Column(name="email")
	@NotNull
	@NotBlank
	@Email
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="password")
	@NotNull
	@Size(min = 6, max = 30)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name="firstName")
	@NotNull
	@Size(min = 2, max = 40)
	public String getFirstName() {
		return firstName;
	}
	@NotBlank(message = "You must accept to register")
	@Transient
	public String getConditions() {
		return conditions;
	}
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	@NotNull
	@Size(min = 6, max=30)
	@Transient
	public String getRepeatPassword() {
		return repeatPassword;
	}
	public void setRepeatPassword(String repeatPassword) {
		this.repeatPassword = repeatPassword;
	}
	@NotNull
	@Email
	@NotBlank
	@Transient
	public String getRepeatEmail() {
		return repeatEmail;
	}
	public void setRepeatEmail(String repeatEmail) {
		this.repeatEmail = repeatEmail;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name="account_roles",
				joinColumns=@JoinColumn(name="email"),
				inverseJoinColumns=@JoinColumn(name="role"))
	public Set<Role> getAthorities() {
		return athorities;
	}

	public void setAthorities(Set<Role> athorities) {
		this.athorities = athorities;
	}
	@NotNull
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@NotNull
	public String getBirthYear() {
		return birthYear;
	}
	
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}
	@NotNull
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@NotNull
	@NotBlank
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	@NotNull
	public String getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}
	@NotNull
	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}
	@NotNull
	public Boolean getChildren() {
		return children;
	}

	public void setChildren(Boolean children) {
		this.children = children;
	}

	@NotNull
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	@NotNull
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	@NotNull
	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	@NotNull
	public String getWebSite() {
		return webSite;
	}

	public void setWebSite(String webSite) {
		this.webSite = webSite;
	}
	@NotNull
	public String getTextarea() {
		return textarea;
	}

	public void setTextarea(String textarea) {
		this.textarea = textarea;
	}
	@NotNull
	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@OneToMany(mappedBy="appUser")
	public Set<Dept> getDepts() {
		return depts;
	}

	public void setDepts(Set<Dept> depts) {
		this.depts = depts;
	}
	
}
