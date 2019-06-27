package org.projet.amopa.webapp.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.projet.amopa.model.User;
import org.apache.commons.lang3.StringUtils;
import com.opensymphony.xwork2.ActionSupport;

import javassist.NotFoundException;

public class LoginAction extends AbstractAction implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5793507482989598167L;
	
	private String name;
	private String password;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> pSession) {
		this.session = pSession;
		
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String login() {
		
		String vResult = ActionSupport.INPUT;
		
		if(!StringUtils.isAllEmpty(name, password)) {
			try {
				User vUser = getManagerFactory().getUserManager().getUser(name, password);
				
				if (vUser == null) {
					throw new NotFoundException("Erreur");
				}
				this.session.put("user", vUser);
				
				vResult = ActionSupport.SUCCESS;
				
			} catch (NotFoundException pE) {
				this.addActionError("Identifiant ou mot de passe invalide !");
			}
		}
		return vResult;
		
	}
	
	public String logout() {
		
		this.session.remove("user");
		
		return ActionSupport.SUCCESS;
	}
}