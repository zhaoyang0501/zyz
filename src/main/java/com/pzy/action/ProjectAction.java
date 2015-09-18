package com.pzy.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.pzy.service.ActionService;

@Namespace("/")
@ParentPackage("json-default") 
public class ProjectAction extends PageAction {
	
	private Long id;
	
	private com.pzy.entity.Action project;
	
	private List<com.pzy.entity.Action> projects;
	@Autowired
	private ActionService actionService;
	
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

	
}
