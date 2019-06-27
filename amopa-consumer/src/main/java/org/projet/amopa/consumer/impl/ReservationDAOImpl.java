package org.projet.amopa.consumer.impl;

import java.sql.Types;
import java.util.List;

import org.projet.amopa.consumer.contract.ReservationDAO;
import org.projet.amopa.consumer.impl.rowmapper.ReservationRowMapper;
import org.projet.amopa.model.Reservation;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

public class ReservationDAOImpl extends AbstractDaoImpl implements ReservationDAO {

	public List<Reservation> getListReservationByUserAndActivity(int id_user, int id_activity) {

		String vSQL = "SELECT * FROM reservation WHERE id_activity AND id_user=" + id_activity + id_user;

		ReservationRowMapper vRowMapper = new ReservationRowMapper();

		List<Reservation> reservation = getJdbcTemplate().query(vSQL, vRowMapper);

		return reservation;
	}

	public void insertReservation(Reservation reservation) {

		String vSQL = "INSERT INTO reservation (date_reservation, participant, etat, date_reservation_sms, date_confirmation_sms, date_rappel_sms, id_activity, id_utilisateur) VALUES (:date_reservation,:participant,:etat,:date_reservation_sms,:date_confirmation_sms,:date_rappel_sms,:id_activity,:id_utilisateur)";

		MapSqlParameterSource vParams = new MapSqlParameterSource();
		vParams.addValue("date_reservation", reservation.getDatereservation(), Types.DATE);
		vParams.addValue("participant", reservation.getNbreparticipants(), Types.INTEGER);
		vParams.addValue("etat", reservation.getEtat(), Types.VARCHAR);
		vParams.addValue("date_reservation_sms", reservation.getDateresasms(), Types.DATE);
		vParams.addValue("date_confirmation_sms", reservation.getDateconfsms(), Types.DATE);
		vParams.addValue("date_rappel_sms", reservation.getDaterappelsms(), Types.DATE);
		vParams.addValue("id_activity", reservation.getId_activity(), Types.INTEGER);
		vParams.addValue("id_utilisateur", reservation.getId_user(), Types.INTEGER);

		NamedParameterJdbcTemplate vJdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

		try {
			vJdbcTemplate.update(vSQL, vParams);
		} catch (DuplicateKeyException vEx) {

		}
	}

	public List<Reservation> getReservationByIdActivity(int id) {

		String vSQL = "SELECT * FROM reservation WHERE id_activity=" + id;
		
		ReservationRowMapper vRowMapper = new ReservationRowMapper();
		
		List<Reservation> reservation = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return reservation;
	}

	public List<Reservation> getReservationByUser(int id) {

		String vSQL = "SELECT * FROM reservation WHERE id_utilisateur=" + id;
		
		ReservationRowMapper vRowMapper = new ReservationRowMapper();
		
		List<Reservation> reservation = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return reservation;
	}

	public List<Reservation> getReservations() {

		String vSQL = "SELECT * FROM reservation ORDER BY date_reservation";
		
		ReservationRowMapper vRowMapper = new ReservationRowMapper();
		
		List<Reservation> reservation = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return reservation;
	}
}