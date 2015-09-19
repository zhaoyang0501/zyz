package com.pzy.action;

import java.sql.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.pzy.entity.Worker;
import com.pzy.entity.WorkerToAction;
import com.pzy.service.ActionService;
import com.pzy.service.WorkerToActionService;
/***
 * 
 * @author qq:263608237
 *
 */
@Namespace("/")
@ParentPackage("json-default") 
public class ProjectAction extends PageAction {
	
	private Long id;
	
	private String tip;

	private com.pzy.entity.Action project;
	
	private List<com.pzy.entity.Action> projects;
	@Autowired
	private ActionService actionService;
	@Autowired
	private WorkerToActionService workerToActionService;
	
	@Action(value = "project", results = { @Result(name = "success", location = "/WEB-INF/views/project.jsp") })
	public String park() {
		projects = actionService.findAll();
		return SUCCESS;
	}
	@Action(value = "projectdetail", results = { @Result(name = "success", location = "/WEB-INF/views/projectdetail.jsp") })
	public String detail() {
		project = actionService.find(id);
		return SUCCESS;
	}
	
	@Action(value = "join", results = { @Result(name = "success", location = "/WEB-INF/views/projectdetail.jsp") })
	public String join() {
		project = actionService.find(id);
		Worker worker=(Worker)ActionContext.getContext().getSession().get("user");
		List<WorkerToAction> lists=workerToActionService.findByActionAndWorker(project, worker);
		if(lists!=null&&lists.size()>0){
			tip="已经参与该项目，请不要重复参与";
			return SUCCESS;
		}else{
			WorkerToAction workerToAction=new WorkerToAction();
			workerToAction.setAction(project);
			workerToAction.setWorker(worker);
			workerToAction.setCreateDate(new Date(System.currentTimeMillis()));
			workerToActionService.save(workerToAction);
			tip="成功参与改项目！";
			return SUCCESS;
		}
	}
	public List<com.pzy.entity.Action> getProjects() {
		return projects;
	}

	public void setProjects(List<com.pzy.entity.Action> projects) {
		this.projects = projects;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public com.pzy.entity.Action getProject() {
		return project;
	}
	public void setProject(com.pzy.entity.Action project) {
		this.project = project;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	
}
