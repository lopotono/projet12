package org.projet.amopa.batch;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.projet.amopa.business.contract.ManagerFactory;
import org.projet.amopa.model.Activity;
import org.projet.amopa.model.Reservation;
import org.projet.amopa.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@EnableAutoConfiguration(exclude = { DataSourceAutoConfiguration.class })
@ImportResource({ "classpath:businessContext.xml", "classpath:consumerContext.xml" })
public class Application {

	@Autowired
	@Qualifier("projetMailSender")
	private MailSender ms;

	@Autowired
	private ManagerFactory mf;

	public static void main(String[] args) throws Exception {
		SpringApplication.run(Application.class, args);
	}

	// mail utilisateur
	public void reservationMail() {
		// Récupérer la liste des réservations
		List<Reservation> list = mf.getReservationManager().getReservations();
		for (Reservation resa : list) {
			// Réservation par utilisateur
			User vUser = mf.getUserManager().getUser(resa.getId_user());
			Activity activity = mf.getActivityManager().getActivity(resa.getId_activity());
			String body = "Le " + resa.getDatereservation() + ", vous avez réservé " + resa.getNbreparticipants()
					+ " place(s) pour l'activité " + activity.getTitle() + ".";
			ms.sendMail("terragef@gmail.com", vUser.getMail(), "Réservation d'une activité", body);
		}
	}

	// mail de confirmation trésorier
	public void confirmationMail() {
		// Récupérer la liste des réservations
		List<Reservation> list = mf.getReservationManager().getReservations();
		for (Reservation resa : list) {
			// Récupérer la liste des réservations par utilisateur et par activité
			List<Reservation> listUserActivity = mf.getReservationManager()
					.getListReservationByUserAndActivity(resa.getId_user(), resa.getId_activity());
			for (Reservation listUser : listUserActivity) {
				// Récupération de la date du jour
				Calendar dateJour = Calendar.getInstance();
				// Insérer la date du jour dans date de confirmation
				listUser.setDateconfsms(dateJour);
				// Passer l'état à "confirmée"
				listUser.setEtat("CONFIRMEE");
				sendMail(resa);
			}
		}
	}

	private void sendMail(Reservation resa) {

		Activity activity = mf.getActivityManager().getActivity(resa.getId_activity());
		String subject = "Confirmation de votre réservation.";
		String body = "Votre réservation du " + resa.getDatereservation() + " pour l'activité " + activity.getTitle()
				+ " est confirmée. Vous recevrez par la suite un courriel de rappel.";
		User vUser = mf.getUserManager().getUser(resa.getId_user());
		ms.sendMail("terragef@gmail.com", vUser.getMail(), subject, body);
		mf.getReservationManager().updateReservation(resa);
	}

	// mail de rappel
	public void recallMail() {
		// Récupérer la liste des réservations
		List<Reservation> list = mf.getReservationManager().getReservations();
		for (Reservation resa : list) {
			// Récupérer la liste des réservations par utilisateur
			List<Reservation> listUser = mf.getReservationManager().getReservationByUser(resa.getId_user());
			for (Reservation resaUser : listUser) {
				// Récupérer la date du jour
				Calendar dateJour = Calendar.getInstance();
				// Insérer la date du jour dans la date de rappel
				resaUser.setDaterappelsms(dateJour);
				Activity activity = mf.getActivityManager().getActivity(resa.getId_activity());
				Calendar dateActivity = activity.getDate();
				dateActivity.add(Calendar.DATE, -2);
				// Comparer les dates de l'activité et du jour
				if (dateActivity.compareTo(dateJour) < 0) {
					User user = mf.getUserManager().getUser(resaUser.getId_user());
					dateActivity.add(Calendar.DATE, +2);
					Date date = dateActivity.getTime();
					SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
					String subject = "Rappel de réservation d'une activité.";
					String body = "Ce mail est un rappel de votre réservation pour l'activité " + activity.getTitle()
							+ ", qui se déroulera dans deux jours, le " + sdf.format(date) + "."
							+ " Rappel : adresse de l'activité : " + activity.getLieu() + " heure de rendez-vous : "
							+ activity.getHour();
					ms.sendMail("terragef@gmail.com", user.getMail(), subject, body);
				}
			}
		}
	}
}