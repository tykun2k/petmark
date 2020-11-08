package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@Table(name = "blog")
public class Blog implements Serializable {

	private static final long serialVersionUID = -5296141252559185798L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	private String title;
	private String img;
	private String content;
	@Column(name = "date_submitted")
	private Date dateSubmitted;
	private String status;

	public Blog() {
		// TODO Auto-generated constructor stub
	}

	public Blog(int id, Account account, String title, String content, String img, Date date, String status) {
		this.id = id;
		this.account = account;
		this.title = title;
		this.content = content;
		this.img = img;
		this.dateSubmitted = date;
		this.status = status;
	}

	public Blog(Account account, String title, String content, String img, Date date, String status) {
		this.account = account;
		this.title = title;
		this.content = content;
		this.img = img;
		this.dateSubmitted = date;
		this.status = status;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDateSubmitted() {
		return dateSubmitted;
	}

	public void setDateSubmitted(Date dateSubmitted) {
		this.dateSubmitted = dateSubmitted;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Blog [id=" + id + ", account=" + account + ", title=" + title + ", img=" + img + ", content=" + content
				+ ", dateSubmitted=" + dateSubmitted + ", status=" + status + "]";
	}

}