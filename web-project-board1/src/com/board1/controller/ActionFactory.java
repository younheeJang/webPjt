package com.board1.controller;
import com.board1.controller.action.*;
public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory(){
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory:"+command);
		if(command.equals("board1List")) {
			action = new Board1ListAction();
		}else if(command.equals("board1_write_form")){
			action = new Board1WriteFormAction();
		}else if(command.equals("board1_write")){
			action = new Board1WriteAction();
		}else if(command.equals("board1_view")){
			action = new Board1ViewAction();
		}else if(command.equals("board1_check_pass_form")){
			action = new Board1CheckPassFormAction();
		}else if(command.equals("board1_check_pass")){
			action = new Board1CheckPassAction();
		}else if(command.equals("board1_update_form")){
			action = new Board1UpdateFormAction();
		}else if(command.equals("board1_update")){
			action = new Board1UpdateAction();
		}else if(command.equals("board1_delete")){
			action = new Board1DeleteAction();
		}
		
		
		return action;
	}
}
