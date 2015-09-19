package com.pzy.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.pzy.entity.Worker;
import com.pzy.entity.WorkerToAction;
import com.pzy.service.WorkerService;
import com.pzy.service.WorkerToActionService;
/***
 * 
 * @author qq:263608237
 *
 */
@Namespace("/")
@ParentPackage("json-default") 
public class CenterAction extends PageAction {
	private String tip;
	
	private List<WorkerToAction>  workerToActions;
	
	private Worker worker;
	@Autowired
	private WorkerService workerService;
	@Autowired
	private WorkerToActionService workerToActionService;
	@Action(value = "center", results = { @Result(name = "success", location = "/WEB-INF/views/center.jsp") })
	public String center() {
		Worker user=(Worker)ActionContext.getContext().getSession().get("user");
		workerToActions=workerToActionService.findByWorker(user);
		return SUCCESS;
	}
	
	@Action(value = "mydocenter", results = { @Result(name = "success", location = "/WEB-INF/views/center.jsp") })
	public String mydocenter() throws Exception {
		workerService.save(worker);
		ActionContext.getContext().getSession().put("user", worker);
		tip="用户信息修改成功！";
		return SUCCESS;
	}
	
	
	public Worker getWorker() {
		return worker;
	}

	public void setWorker(Worker worker) {
		this.worker = worker;
	}

	public List<WorkerToAction> getWorkerToActions() {
		return workerToActions;
	}

	public void setWorkerToActions(List<WorkerToAction> workerToActions) {
		this.workerToActions = workerToActions;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
}
