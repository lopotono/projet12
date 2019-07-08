package org.projet.amopa.business.impl;

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
		return getDaoFactory().getReservationDao().getReservation(id);
	}

	public void canceledReservation(Reservation reservation) {
		getDaoFactory().getReservationDao().canceledReservation(reservation);	
	}
}