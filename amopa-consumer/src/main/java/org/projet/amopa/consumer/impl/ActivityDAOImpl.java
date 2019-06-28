package org.projet.amopa.consumer.impl;

import java.sql.Types;
import java.util.List;

import org.projet.amopa.consumer.contract.ActivityDAO;
import org.projet.amopa.consumer.impl.rowmapper.ActivityRowMapper;
import org.projet.amopa.model.Activity;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

public class ActivityDAOImpl extends AbstractDaoImpl implements ActivityDAO {

	public void addActivity(Activity activity) {

		String vSQL = "INSERT INTO activity (image, title, genre, description, place, station, places_disponibles, hour, date, lieu, price, pricesesame, conferenciere) VALUES (:image,:title,:genre,:description,:place,:station,:places_disponibles,:hour,:date,:lieu,:price,:pricesesame,:conferenciere)";

		MapSqlParameterSource vParams = new MapSqlParameterSource();
		vParams.addValue("image", activity.getImage(), Types.BINARY);
		vParams.addValue("title", activity.getTitle(), Types.VARCHAR);
		vParams.addValue("genre", activity.getGenre(), Types.VARCHAR);
		vParams.addValue("description", activity.getDescription(), Types.VARCHAR);
		vParams.addValue("place", activity.getPlace(), Types.VARCHAR);
		vParams.addValue("station", activity.getStation(), Types.VARCHAR);
		vParams.addValue("places_disponibles", activity.getPlacesdisponibles(), Types.INTEGER);
		vParams.addValue("hour", activity.getHour(), Types.VARCHAR);
		vParams.addValue("date", activity.getDate(), Types.VARCHAR);
		vParams.addValue("lieu", activity.getLieu(), Types.VARCHAR);
		vParams.addValue("price", activity.getPrice(), Types.INTEGER);
		vParams.addValue("pricesesame", activity.getPricesesame(), Types.INTEGER);
		vParams.addValue("conferenciere", activity.getConferenciere(), Types.VARCHAR);
		vParams.addValue("lienweb", activity.getLienweb(), Types.VARCHAR);

		NamedParameterJdbcTemplate vJdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

		try {
			vJdbcTemplate.update(vSQL, vParams);
		} catch (DuplicateKeyException vEx) {

		}
	}

	public Activity getActivity(int idactivity) {

		String vSQL = "SELECT * FROM activity WHERE id_activity=" + idactivity;

		ActivityRowMapper vRowMapper = new ActivityRowMapper();

		List<Activity> activity = getJdbcTemplate().query(vSQL, vRowMapper);

		return activity.get(0);
	}

	public List<Activity> getListActivityByExpo(String genre) {

		String vSQL = "SELECT * FROM activity WHERE genre='exposition'";

		ActivityRowMapper vRowMapper = new ActivityRowMapper();

		List<Activity> vListActivity = getJdbcTemplate().query(vSQL, vRowMapper);

		return vListActivity;
	}

	public int getActivityByPlacesId(int idactivity) {

		String vSQL = "SELECT places_disponibles FROM activity WHERE id_activity=:id_activity";

		MapSqlParameterSource vParams = new MapSqlParameterSource();
		vParams.addValue("id_activity", idactivity, Types.INTEGER);

		NamedParameterJdbcTemplate vJdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());
		
		Integer value = vJdbcTemplate.queryForObject(vSQL, vParams, Integer.class);

		if (value == null) {
			value = 0;
		}
		return value;
	}

	public List<Activity> getListActivityByConcert(String genre) {
		
		String vSQL = "SELECT * FROM activity WHERE genre='concert'";
		
		ActivityRowMapper vRowMapper = new ActivityRowMapper();

		List<Activity> vListActivity = getJdbcTemplate().query(vSQL, vRowMapper);
	
		return vListActivity;
	}

	public List<Activity> getListActivityByConf(String genre) {

		String vSQL = "SELECT * FROM activity WHERE genre='conference'";
		
		ActivityRowMapper vRowMapper = new ActivityRowMapper();
		
		List<Activity> vListActivity = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return vListActivity;
	}

	public List<Activity> getListActivityByVoyage(String genre) {

		String vSQL = "SELECT * FROM activity WHERE genre='voyage'";
		
		ActivityRowMapper vRowMapper = new ActivityRowMapper();
		
		List<Activity> vListActivity = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return vListActivity;
	}

	public List<Activity> getListActivityByVoyageplus(String genre) {

		String vSQL = "SELECT * FROM activity WHERE genre='voyageplus'";
		
		ActivityRowMapper vRowMapper = new ActivityRowMapper();
		
		List<Activity> vListActivity = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return vListActivity;
	}

	public List<Activity> getListActivityByAG(String genre) {

		String vSQL = "SELECT * FROM activity WHERE genre='AG'";
		
		ActivityRowMapper vRowMapper = new ActivityRowMapper();
		
		List<Activity> vListActivity = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return vListActivity;
	}
}