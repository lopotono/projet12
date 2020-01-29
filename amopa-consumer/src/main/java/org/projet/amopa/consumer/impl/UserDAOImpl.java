package org.projet.amopa.consumer.impl;

import java.sql.Types;
import java.util.List;

import org.projet.amopa.consumer.contract.UserDAO;
import org.projet.amopa.consumer.impl.rowmapper.UserRowMapper;
import org.projet.amopa.model.User;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

public class UserDAOImpl extends AbstractDaoImpl implements UserDAO {
	
	public User getUser(int iduser) {
		
		String vSQL = "SELECT * FROM utilisateur WHERE id_utilisateur=" + iduser;
		
		UserRowMapper vRowMapper = new UserRowMapper();
		
		List<User> vListUser = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return vListUser.get(0);
	}

	public User getUser(String surname, String password) {
		
		String vSQL = "SELECT * FROM utilisateur WHERE surname='" + surname + "' AND password='" + password + "'";
		
		UserRowMapper vRowMapper = new UserRowMapper();
		
		List<User> user = getJdbcTemplate().query(vSQL, vRowMapper);
		
		if (user.isEmpty()) {
			return null;
		}
		
		return user.get(0);
	}

	public List<User> getListUser() {
		
		String vSQL = "SELECT * FROM utilisateur ORDER BY surname";
		
		UserRowMapper vRowMapper = new UserRowMapper();
		
		List<User> vListUser = getJdbcTemplate().query(vSQL, vRowMapper);
		
		return vListUser;
	}

	public void addUser(User user) {
		
		String vSQL = "INSERT INTO utilisateur (membre, surname, firstname, password, mail, phone, cellphone) VALUES (:membre,:surname,:firstname,:password,:mail,:phone,:cellphone)";
		
		MapSqlParameterSource vParams = new MapSqlParameterSource();
		vParams.addValue("membre", user.getMember(), Types.VARCHAR);
		vParams.addValue("surname", user.getSurname(), Types.VARCHAR);
		vParams.addValue("firstname", user.getFirstname(), Types.VARCHAR);
		vParams.addValue("password", user.getPassword(), Types.VARCHAR);
		vParams.addValue("mail", user.getMail(), Types.VARCHAR);
		vParams.addValue("phone", user.getPhone(), Types.INTEGER);
		vParams.addValue("cellphone", user.getCellphone(), Types.INTEGER);
		
		NamedParameterJdbcTemplate vJdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());
		
		try {
			vJdbcTemplate.update(vSQL, vParams);
		} catch (DuplicateKeyException vEx) {

		}		
	}

	public void deleteUser(User user) {
		
		String vSQL = "DELETE FROM utilisateur WHERE id_utilisateur=:id_utilisateur";
		
		MapSqlParameterSource vParams = new MapSqlParameterSource();
		vParams.addValue("id_utilisateur", user.getIduser(), Types.INTEGER);
		
		NamedParameterJdbcTemplate vJdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

		try {
			vJdbcTemplate.update(vSQL, vParams);
		} catch (DuplicateKeyException vEx) {

		}		
	}
}