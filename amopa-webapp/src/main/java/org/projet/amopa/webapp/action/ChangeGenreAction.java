package org.projet.amopa.webapp.action;

import java.util.List;

import org.projet.amopa.model.Activity;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeGenreAction extends AbstractAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8613511286699573357L;
	
	private List<Activity> listActivity; 
	private int idactivity;
	private String genreActivity;
	
	public List<Activity> getListActivity() {
		return listActivity;
	}

	public void setListActivity(List<Activity> listActivity) {
		this.listActivity = listActivity;
	}
	
	public int getIdactivity() {
		return idactivity;
	}
	
	public void setIdactivity(int idactivity) {
		this.idactivity = idactivity;
	}
	
	public String getGenreActivity() {
		return genreActivity;
	}
	
	public void setGenreActivity(String genreActivity) {
		this.genreActivity = genreActivity;
	}

	public String execute() {
		
		setListActivity(getManagerFactory().getActivityManager().getActivity());
		Activity activity = getManagerFactory().getActivityManager().getActivity(idactivity);
		activity.getGenre();
		activity.setGenre(genreActivity);
		addActionMessage("Le genre de l'activité est modifié.");
		getManagerFactory().getActivityManager().updateActivity(activity);
		return ActionSupport.SUCCESS;		
	}
}