package com.pzy.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.pzy.entity.News;
import com.pzy.service.ActionService;
import com.pzy.service.NewsService;
/***
 * Introduction
 * @author panchaoyang
 *
 */
@Namespace("/notice")
@ParentPackage("json-default") 
public class ProjectAction extends PageAction {
	
	private List<com.pzy.entity.Action> actions;
	@Autowired
	private ActionService actionService;

	@Action(value = "project", results = { @Result(name = "success", location = "/WEB-INF/views/project.jsp") })
	public String project() {
		actions = actionService.findAll();
		return SUCCESS;
	}

	public List<com.pzy.entity.Action> getActions() {
		return actions;
	}

	public void setActions(List<com.pzy.entity.Action> actions) {
		this.actions = actions;
	}
	
	
}
