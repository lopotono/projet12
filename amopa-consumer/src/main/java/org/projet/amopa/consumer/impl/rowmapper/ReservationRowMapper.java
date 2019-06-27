package org.projet.amopa.consumer.impl.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import org.projet.amopa.model.Reservation;
import org.springframework.jdbc.core.RowMapper;

public class ReservationRowMapper implements RowMapper<Reservation> {

	public Reservation mapRow(ResultSet pRS, int pRowNum) throws SQLException {
		Reservation vReservation = new Reservation();
		vReservation.setId(pRS.getInt("id_reservation"));
		Calendar cal = Calendar.getInstance();
		cal.setTime(pRS.getDate("date_reservation"));
		vReservation.setDatereservation(cal);
		vReservation.setNbreparticipants(pRS.getInt("participant"));
		vReservation.setEtat(pRS.getString("etat"));
		Calendar cal1 = Calendar.getInstance();
		cal1.setTime(pRS.getDate("date_reservation_sms"));
		vReservation.setDateresasms(cal1);
		Calendar cal2 = Calendar.getInstance();
		cal2.setTime(pRS.getDate("date_confirmation_sms"));
		vReservation.setDateconfsms(cal2);
		Calendar cal3 = Calendar.getInstance();
		cal3.setTime(pRS.getDate("date_rappel_sms"));
		vReservation.setDaterappelsms(cal3);
		vReservation.setId_activity(pRS.getInt("id_activity"));
		vReservation.setId_user(pRS.getInt("id_utilisateur"));
		return vReservation;
	}
}