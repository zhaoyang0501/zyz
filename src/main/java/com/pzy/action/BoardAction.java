package com.pzy.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.pzy.entity.MsgBoard;
import com.pzy.entity.Worker;
import com.pzy.service.MsgBoardService;
/***
 * 
 * @author qq:263608237
 *
 */
@ParentPackage("struts-default")  
@Namespace("/")
public class BoardAction extends ActionSupport {
	private String msg;
	private List<MsgBoard> msgBoards;
	private MsgBoard replyfor;
	@Autowired
	private MsgBoardService msgBoardService;
	public String execute() throws Exception {
		msgBoards=msgBoardService.findAll();
		return SUCCESS;
	}
	@Action(value = "saveMsgBoard", results = { @Result(name = "success",type="redirect", location = "board") })
	public String saveMsgBoard(){
		MsgBoard bean=new MsgBoard();
		bean.setCreateDate(new Date());
		bean.setMsg(msg);
		Worker user = (Worker) ServletActionContext.getRequest().getSession().getAttribute("user");
		bean.setUser(user);
		if(replyfor.getId()!=null)
			bean.setReplyfor(msgBoardService.findOne(replyfor.getId()));
		msgBoardService.save(bean);
		return SUCCESS;
	}
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List<MsgBoard> getMsgBoards() {
		return msgBoards;
	}
	public void setMsgBoards(List<MsgBoard> msgBoards) {
		this.msgBoards = msgBoards;
	}
	public MsgBoard getReplyfor() {
		return replyfor;
	}
	public void setReplyfor(MsgBoard replyfor) {
		this.replyfor = replyfor;
	}
}
