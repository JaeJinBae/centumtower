package com.webaid.domain;

public class NewsVO {
	private int bno;
	private String title;
	private String writer;
	private String company;
	private String url;
	private int cnt;

	public NewsVO() {
		super();
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "NewsVO [bno=" + bno + ", title=" + title + ", writer=" + writer + ", company=" + company + ", url="
				+ url + ", cnt=" + cnt + "]";
	}

		
	
}
