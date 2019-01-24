package com.webaid.domain;

import java.util.Date;

public class CustomerVO {

	private int mno;
	private String name;
	private String phone;
	private String email;
	private Date regdate;

	public CustomerVO() {
		super();
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "CustomerVO [mno=" + mno + ", name=" + name + ", phone=" + phone + ", email=" + email + ", regdate="
				+ regdate + "]";
	}

}
