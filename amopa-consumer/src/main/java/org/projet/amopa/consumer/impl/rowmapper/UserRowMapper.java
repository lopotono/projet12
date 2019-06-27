package org.projet.amopa.consumer.impl.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.projet.amopa.model.User;
import org.springframework.jdbc.core.RowMapper;

public class UserRowMapper implements RowMapper<User> {

	public User mapRow(ResultSet pRS, int pRowNum) throws SQLException {
		User vUser = new User();
		vUser.setIduser(pRS.getInt("id_utilisateur"));
		vUser.setMember(pRS.getString("membre"));
		vUser.setSurname(pRS.getString("surname"));
		vUser.setFirstname(pRS.getString("firstname"));
		vUser.setPassword(pRS.getString("password"));
		vUser.setMail(pRS.getString("mail"));
		vUser.setPhone(pRS.getInt("phone"));
		vUser.setCellphone(pRS.getInt("cellphone"));
		vUser.setId_address(pRS.getInt("id_address"));
		return vUser;
	}
}