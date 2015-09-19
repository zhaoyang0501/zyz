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
/***
 * 
 * @author qq:263608237
 *
 */
@Namespace("/")
@ParentPackage("json-default") 
public class IntroductionAction extends PageAction {
	
	private Integer page=1;
	
	private List<News> newss;
	@Autowired
	private NewsService newsService;

	@Action(value = "introduction", results = { @Result(name = "success", location = "/WEB-INF/views/introduction.jsp") })
	public String introduction() {
		Page<News> list = newsService.findAll(page, 15,3);
		newss=list.getContent();
		return SUCCESS;
	}
	
	

	public Integer getPage() {
		return page;
	}



	public void setPage(Integer page) {
		this.page = page;
	}



	public List<News> getNewss() {
		return newss;
	}

	public void setNewss(List<News> newss) {
		this.newss = newss;
	}
}
