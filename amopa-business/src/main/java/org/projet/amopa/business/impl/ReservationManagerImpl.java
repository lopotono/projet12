package org.projet.amopa.business.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.projet.amopa.business.contract.ReservationManager;
import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;

public class ReservationManagerImpl extends AbstractManager implements ReservationManager {

	public List<Reservation> getListReservationByUserAndActivity(int id_user, int id_activity) {
		return getDaoFactory().getReservationDao().getListReservationByUserAndActivity(id_user, id_activity);
	}

	public void insertReservation(Reservation reservation) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date dateReserve = reservation.getDatereservation();
		String body = "Le " + sdf.format(dateReserve) + ", vous avez réservé " + reservation.getNbreparticipants()
				+ " place(s) pour l'activité " + reservation.getActivity().getTitle() + ".";
		getMs().sendMail("terragef@gmail.com", reservation.getvUser().getMail(), "Réservation d'une activité", body);
		getDaoFactory().getReservationDao().insertReservation(reservation);
	}

	public List<Reservation> getReservationByIdActivity(int id) {
		return getDaoFactory().getReservationDao().getReservationByIdActivity(id);
	}

	public List<Reservation> getReservationByUser(int id) {
		List<Reservation> list = getDaoFactory().getReservationDao().getReservationByUser(id);
		for (Reservation resa : list) {
			User user = getDaoFactory().getUserDao().getUser(resa.getId_user());
			resa.setvUser(user);
			Activity activity = getDaoFactory().getActivityDao().getActivity(resa.getId_activity());
			resa.setActivity(activity);
		}
		return list;
	}

	public List<Reservation> getReservations() {
		List<Reservation> list = getDaoFactory().getReservationDao().getReservations();
		for (Reservation resa : list) {
			User user = getDaoFactory().getUserDao().getUser(resa.getId_user());
			resa.setvUser(user);
			Activity activity = getDaoFactory().getActivityDao().getActivity(resa.getId_activity());
			resa.setActivity(activity);
		}
		return list;
	}

	public void deleteReservation(Reservation reservation) {
		getDaoFactory().getReservationDao().deleteReservation(reservation);
	}

	public Reservation getReservation(int id) {
		Reservation resa = getDaoFactory().getReservationDao().getReservation(id);
		User user = getDaoFactory().getUserDao().getUser(resa.getId_user());
		resa.setvUser(user);
		Activity activity = getDaoFactory().getActivityDao().getActivity(resa.getId_activity());
		resa.setActivity(activity);
		return resa;
	}

	public void canceledReservation(Reservation reservation) {
		getDaoFactory().getReservationDao().canceledReservation(reservation);
	}

	public void updateReservation(Reservation reservation) {
		getDaoFactory().getReservationDao().updateReservation(reservation);
	}

	public void confirmerReservation(Reservation reservation) {
		String subject = "Confirmation de votre réservation.";
		String body = "Votre réservation du " + reservation.getDatereservation() + " pour l'activité " + reservation.getActivity().getTitle()
				+ " est confirmée. Vous recevrez par la suite un courriel de rappel.";		
		getMs().sendMail("terragef@gmail.com", reservation.getvUser().getMail(), subject, body);
		getDaoFactory().getReservationDao().confirmerReservation(reservation);
	}
}