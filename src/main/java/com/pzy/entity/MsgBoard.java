package com.pzy.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
@Entity
@Table(name = "t_msgboard")
public class MsgBoard {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private MsgBoard replyfor;
	
	private String msg;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Worker user;
	
	private Date createDate;
	@Transient
	private List<MsgBoard> subMsg;
	public List<MsgBoard> getSubMsg() {
		return subMsg;
	}
	public void setSubMsg(List<MsgBoard> subMsg) {
		this.subMsg = subMsg;
	}
	public void setReplyfor(MsgBoard replyfor) {
		this.replyfor = replyfor;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Worker getUser() {
		return user;
	}
	public void setUser(Worker user) {
		this.user = user;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public MsgBoard getReplyfor() {
		return replyfor;
	}
}
