package com.webaid.domain;

public class EasySangdamVO {
	private String name;
	private String call;
	private String gender;
	private String marry;
	private String city;
	private String job;

	public EasySangdamVO() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCall() {
		return call;
	}

	public void setCall(String call) {
		this.call = call;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMarry() {
		return marry;
	}

	public void setMarry(String marry) {
		this.marry = marry;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Override
	public String toString() {
		return "EasySangdamVO [name=" + name + ", call=" + call + ", gender=" + gender + ", marry=" + marry + ", city="
				+ city + ", job=" + job + "]";
	}

}
