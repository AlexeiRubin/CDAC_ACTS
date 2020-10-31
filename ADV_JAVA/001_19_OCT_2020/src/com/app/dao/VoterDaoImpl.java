package com.app.dao;

import static com.app.utils.DBUtils.getDBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.app.entity.Voters;

public class VoterDaoImpl implements VoterDao {

	private Connection con;
	private PreparedStatement pstmt1;

	public VoterDaoImpl() throws ClassNotFoundException, SQLException {
		con = getDBConnection();
		pstmt1 = con.prepareStatement("SELECT * FROM voters WHERE email=? AND password=?");
	}

	@Override
	public Voters authenticateVoter(String voterEmail, String voterPassword) throws SQLException {

		pstmt1.setString(1, voterEmail);
		pstmt1.setString(2, voterPassword);

		try (ResultSet rst = pstmt1.executeQuery()) {
			if (rst.next())
				return new Voters(rst.getInt(1), rst.getString(2), voterEmail, voterPassword, rst.getBoolean(5),
						rst.getString(6));
		}
		return null;
	}

	public void cleanUp() throws SQLException {

		if (pstmt1 != null)
			pstmt1.close();

		if (con != null)
			con.close();
	}
}