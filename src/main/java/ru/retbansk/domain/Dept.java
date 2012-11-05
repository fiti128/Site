package ru.retbansk.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotBlank;


@Entity
public class Dept {
	private Long deptId;
	private String who;
	private String details;
	private int sum;
	private Account appUser;
	
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
	public Long getDeptId() {
		return deptId;
	}
	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}
	@NotNull
	@NotBlank
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	@NotNull
	@NotBlank
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	@NotNull
	@Min(value=1)
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	
	@ManyToOne
	@JoinColumn(name="email")
	public Account getAppUser() {
		return appUser;
	}
	public void setAppUser(Account appUser) {
		this.appUser = appUser;
	}


}
