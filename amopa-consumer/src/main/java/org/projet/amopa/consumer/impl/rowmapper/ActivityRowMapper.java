package org.projet.amopa.consumer.impl.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.projet.amopa.model.Activity;
import org.springframework.jdbc.core.RowMapper;

public class ActivityRowMapper implements RowMapper<Activity> {

	public Activity mapRow(ResultSet pRS, int pRowNum) throws SQLException {
		Activity vActivity = new Activity();
		vActivity.setIdactivity(pRS.getInt("id_activity"));
		vActivity.setImage(pRS.getByte("image"));
		vActivity.setTitle(pRS.getString("title"));
		vActivity.setGenre(pRS.getString("genre"));
		vActivity.setDescription(pRS.getString("description"));
		vActivity.setPlace(pRS.getString("place"));
		vActivity.setStation(pRS.getString("station"));
		vActivity.setPlacesdisponibles(pRS.getInt("places_disponibles"));
		vActivity.setHour(pRS.getString("hour"));
		vActivity.setDate(pRS.getString("date"));
		vActivity.setLieu(pRS.getString("lieu"));
		vActivity.setPrice(pRS.getInt("price"));
		vActivity.setPricesesame(pRS.getInt("pricesesame"));
		vActivity.setConferenciere(pRS.getString("conferenciere"));
		vActivity.setLienweb(pRS.getString("lienweb"));		
		return vActivity;
	}
}