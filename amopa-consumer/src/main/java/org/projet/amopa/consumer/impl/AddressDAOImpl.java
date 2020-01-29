package org.projet.amopa.consumer.impl;

import java.sql.Types;

import org.projet.amopa.consumer.contract.AddressDAO;
import org.projet.amopa.model.Address;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

public class AddressDAOImpl extends AbstractDaoImpl implements AddressDAO {

	public void addAddress(Address address) {
		
		String vSQL = "INSERT INTO address (postaladdress, postalcode, city) VALUES (:postaladdress,:postalcode,:city)";
		
		MapSqlParameterSource vParams = new MapSqlParameterSource();
		vParams.addValue("postaladdress", address.getPostaladdress(), Types.VARCHAR);
		vParams.addValue("postalcode", address.getPostalcode(), Types.VARCHAR);
		vParams.addValue("city", address.getCity(), Types.VARCHAR);
		
		NamedParameterJdbcTemplate vJdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

		try {
			vJdbcTemplate.update(vSQL, vParams);
		} catch (DuplicateKeyException vEx) {

		}
	}
}