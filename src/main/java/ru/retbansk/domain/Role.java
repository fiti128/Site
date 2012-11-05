package ru.retbansk.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * @author Legres 
 *
 */
@Entity
@Table(name = "role")
public class Role implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String roleId;
	private String description;
	private Set<Account> users = new HashSet<Account>(0);

	public Role() {
	}

	public Role(String roleId) {
		this.roleId = roleId;
	}

	public Role(String roleId, String description, Set<Account> users) {
		this.roleId = roleId;
		this.description = description;
		this.users = users;
	}

	@Id
	@Column(name = "ROLE_ID")
	public String getRoleId() {
		return this.roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	@Column(name = "DESCRIPTION")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "athorities")
	public Set<Account> getAccounts() {
		return this.users;
	}

	public void setAccounts(Set<Account> users) {
		this.users = users;
	}

}

