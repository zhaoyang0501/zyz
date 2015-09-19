package com.pzy.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pzy.entity.News;
import com.pzy.entity.Worker;
import com.pzy.service.NewsService;
import com.pzy.service.WorkerService;
/***
 * 
 * @author qq:263608237
 *
 */
@ParentPackage("struts-default")  
@Namespace("/")
public class IndexAction extends ActionSupport implements SessionAware{
	private Map<String,Object> session;
	private List<News> newss;
	private List<News> notice;
	private String tip;
	private Worker worker;
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private  WorkerService workerService;
	
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/index.jsp") })
	public String index() throws Exception {
		newss=newsService.findAll(1, 10, 1).getContent();
		notice=newsService.findAll(1, 10, 2).getContent();
		return SUCCESS;
	}
	@Action(value = "apply", results = { @Result(name = "success", location = "/WEB-INF/views/apply.jsp") })
	public String apply() throws Exception {
		return SUCCESS;
	}
	@Action(value = "login", results = { @Result(name = "success", location = "/WEB-INF/views/login.jsp") })
	public String login() throws Exception {
		return SUCCESS;
	}
	 @Action(value = "loginout", results = { @Result(name = "success", location = "/WEB-INF/views/index.jsp") })
     public String loginout(){
	 	ActionContext.getContext().getSession().remove("user");
	 	ActionContext.getContext().getSession().clear();
	 	newss=newsService.findAll(1, 10, 1).getContent();
		notice=newsService.findAll(1, 10, 2).getContent();
	 	tip="成功退出登陆";
	 	return SUCCESS;
     }
	 @Action(value = "dologin", 
	    		results = { @Result(name = "success" , location = "/WEB-INF/views/index.jsp") ,
	    					@Result(name = "login", location = "/WEB-INF/views/index.jsp") })  
	    public String dologin() throws Exception { 
		 Worker bean=workerService.login(worker.getUsername(),worker.getPassword() );
	    	if(bean!=null){
	    		session.put("user",bean );
	    		ActionContext.getContext().getSession().put("user", bean);
	    		this.tip="登录成功!";
	    		newss=newsService.findAll(1, 10, 1).getContent();
	    		notice=newsService.findAll(1, 10, 2).getContent();
	            return SUCCESS; 
	    	}
	    	else{
	    		ActionContext.getContext().getSession().clear();
	    		this.tip="登陆失败 不存在此用户名或密码!";
	    		newss=newsService.findAll(1, 10, 1).getContent();
	    		notice=newsService.findAll(1, 10, 2).getContent();
	    		return LOGIN;
	    	}
	    } 
	
	@Action(value = "register", results = { @Result(name = "success", location = "/WEB-INF/views/register.jsp") })
	public String register() throws Exception {
		return SUCCESS;
	}
	@Action(value = "doregister", results = { @Result(name = "success", location = "/WEB-INF/views/index.jsp") })
	public String doregister() throws Exception {
		newss=newsService.findAll(1, 10, 1).getContent();
		notice=newsService.findAll(1, 10, 2).getContent();
		workerService.save(worker);
		tip="注册成功！";
		return SUCCESS;
	}
	
	public List<News> getNewss() {
		return newss;
	}
	public void setNewss(List<News> newss) {
		this.newss = newss;
	}
	
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}
	
	
	public Worker getWorker() {
		return worker;
	}
	public void setWorker(Worker worker) {
		this.worker = worker;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public List<News> getNotice() {
		return notice;
	}
	public void setNotice(List<News> notice) {
		this.notice = notice;
	}
}
