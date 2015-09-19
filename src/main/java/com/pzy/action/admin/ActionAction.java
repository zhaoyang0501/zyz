package com.pzy.action.admin;

import java.security.acl.Owner;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.pzy.action.PageAction;
import com.pzy.service.ActionService;

@Namespace("/admin/action")
@ParentPackage("json-default") 
public class ActionAction extends PageAction {
	private String name;
	private Long id;
	private com.pzy.entity.Action action;
	private List<com.pzy.entity.Action> actions;
	private String tip;
	public ActionService getActionService() {
		return actionService;
	}


	public void setActionService(ActionService actionService) {
		this.actionService = actionService;
	}


	@Autowired
	private ActionService actionService;
	@Autowired
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/action/index.jsp") })
	public String index() {
		return SUCCESS;
	}
	
	
	@Action(value = "list", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String list() {
		int pageNumber = (int) (this.getIDisplayStart() / this.getIDisplayLength()) + 1;
		int pageSize =  this.getIDisplayLength();
		Page<com.pzy.entity.Action> list = actionService.findAll(pageNumber, pageSize,name);
		this.getResultMap().put("aaData", list.getContent());
		this.getResultMap().put("iTotalRecords", list.getTotalElements());
		this.getResultMap().put("iTotalDisplayRecords", list.getTotalElements());
		this.getResultMap().put("sEcho", getSEcho());
		return SUCCESS;
	}

	@Action(value = "delete", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String delete() {
		try {
			actionService.delete(id);
			getResultMap().put("state", "success");
			getResultMap().put("msg", "删除成功");
		} catch (Exception e) {
			 getResultMap().put("state", "error");
			 getResultMap().put("msg", "删除失败，外键约束");
		}
        return SUCCESS;
		
	}

	@Action(value = "get", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String get() {
		getResultMap().put("object", actionService.find(id));
		getResultMap().put("state", "success");
		getResultMap().put("msg", "操作成功");
		return SUCCESS;
	}

	@Action(value = "update", results = { @Result(name = "success",  type = "json",params={"ignoreHierarchy","false"}) })  
	public String update() {
		com.pzy.entity.Action bean = actionService.find(action.getId());
		/*bean.setCarno(action.getCarno());
		bean.setComefrom(action.getComefrom());
		bean.setName(action.getName());
		bean.setPhone(action.getPhone());*/
		actionService.save(bean);
		getResultMap().put("state", "success");
		getResultMap().put("msg", "修改成功");
		return SUCCESS;
	}
	@Action(value = "save", results = { @Result(name = "success",  type = "json",params={"ignoreHierarchy","false"}) })  
	public String save() {
		action.setCreateDate(new java.sql.Date(System.currentTimeMillis()));
		actionService.save(action);
		getResultMap().put("state", "success");
		getResultMap().put("msg", "保存成功");
		return SUCCESS;
	}
	
	public String getTip() {
		return tip;
	}


	public void setTip(String tip) {
		this.tip = tip;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public com.pzy.entity.Action getAction() {
		return action;
	}

	public void setAction(com.pzy.entity.Action action) {
		this.action = action;
	}

	public List<com.pzy.entity.Action> getActions() {
		return actions;
	}

	public void setActions(List<com.pzy.entity.Action> actions) {
		this.actions = actions;
	}

	
}
