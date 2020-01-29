package org.projet.amopa.consumer.impl.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.projet.amopa.model.Address;
import org.springframework.jdbc.core.RowMapper;

public class AddressRowMapper implements RowMapper<Address> {

	public Address mapRow(ResultSet pRS, int pRowNum) throws SQLException {
		Address vAddress = new Address();
		vAddress.setId(pRS.getInt("id_address"));
		vAddress.setPostaladdress(pRS.getString("postaladdress"));
		vAddress.setPostalcode(pRS.getString("postalcode"));
		vAddress.setCity(pRS.getString("city"));
		return vAddress;
	}

}
