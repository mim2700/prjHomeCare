package com.home.care.bo;

public class User {
	private	String 	userName;
	private	String	name;
	private	String	role;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", name=" + name + ", role=" + role + "]";
	}
	
	
}
