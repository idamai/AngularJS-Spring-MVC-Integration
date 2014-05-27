package com.spring.angularjs.model;

import java.io.Serializable;

public class Book implements Serializable {

	private static final long serialVersionUID = 4336389010424034378L;

	private String id;

	private String title;

	private String fullname;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String toString() {
		return "\nBook ID: " + id + "\nBook Title: " + title + "\nBook Name: "
				+ fullname;
	}

}
