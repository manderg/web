package com.hanains.http.action;

public class guestbookActionFactory extends ActionFactory{

	@Override
	public Action getAction(String actionName) {
		Action action = null;
		
		if("deleteform".equals(actionName)){
			action = new DeleteFormAction(); 
		}else if("add".equals(actionName)){
			action = new AddAction();		
		}else{
			action = new IndexAction();
		}	
		return action;
	}	
}
