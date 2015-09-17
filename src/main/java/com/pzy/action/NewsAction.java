package com.pzy.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.pzy.entity.News;
import com.pzy.service.NewsService;

@Namespace("/news")
@ParentPackage("json-default") 
public class NewsAction extends PageAction {
	
	private Integer page;
	
	private List<News> newss;
	@Autowired
	private NewsService newsService;

	@Action(value = "news", results = { @Result(name = "success", location = "/WEB-INF/views/news.jsp") })
	public String news() {
		Page<News> list = newsService.findAll(page, 20,1);
		newss=list.getContent();
		return SUCCESS;
	}
	
	
	public List<News> getNewss() {
		return newss;
	}

	public void setNewss(List<News> newss) {
		this.newss = newss;
	}
}
