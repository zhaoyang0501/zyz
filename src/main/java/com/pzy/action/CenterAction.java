package com.pzy.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.pzy.entity.Worker;
import com.pzy.service.WorkerService;

@Namespace("/")
@ParentPackage("json-default") 
public class CenterAction extends PageAction {
	private String tip;
	
	private Worker user;
	@Autowired
	private WorkerService workerService;
	
	@Action(value = "center", results = { @Result(name = "success", location = "/WEB-INF/views/center.jsp") })
	public String center() {
		Worker user=(Worker)ActionContext.getContext().getSession().get("user");
		return SUCCESS;
	}
	
	@Action(value = "docenter", results = { @Result(name = "success", location = "/WEB-INF/views/center.jsp") })
	public String doregister() throws Exception {
		workerService.save(user);
		ActionContext.getContext().getSession().put("user", user);
		tip="用户信息修改成功！";
		return SUCCESS;
	}
	
	public Worker getUser() {
		return user;
	}

	public void setUser(Worker user) {
		this.user = user;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
}
