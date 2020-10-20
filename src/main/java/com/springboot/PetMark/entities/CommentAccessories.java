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

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class CommentAccessories implements Serializable {

	private static final long serialVersionUID = 1454194405927354429L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	private String content;
	@Column(name = "dateComment")
	private Date dateComment;

	public CommentAccessories() {
		// TODO Auto-generated constructor stub
	}

	public CommentAccessories(Accessories accessories, Account account, String content, Date date) {
		// TODO Auto-generated constructor stub
		this.accessories = accessories;
		this.account = account;
		this.content = content;
		this.dateComment = date;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Accessories getAccessories() {
		return accessories;
	}

	public void setAccessories(Accessories accessories) {
		this.accessories = accessories;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDateComment() {
		return dateComment;
	}

	public void setDateComment(Date dateComment) {
		this.dateComment = dateComment;
	}

	@Override
	public String toString() {
		return "CommentAccessories [id=" + id + ", accessories=" + accessories + ", account=" + account + ", content="
				+ content + ", dateComment=" + dateComment + "]";
	}

}