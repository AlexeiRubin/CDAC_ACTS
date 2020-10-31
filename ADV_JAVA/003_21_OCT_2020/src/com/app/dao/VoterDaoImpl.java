package com.app.dao;

import static com.app.utils.DBUtils.getDBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.app.entity.Voter;

public class VoterDaoImpl implements VoterDao {

	private Connection con;
	private PreparedStatement pstmt1, pstmt2;

	public VoterDaoImpl() throws ClassNotFoundException, SQLException {
		con = getDBConnection();
		pstmt1 = con.prepareStatement("SELECT * FROM voters WHERE email=? AND password=?");
		pstmt2 = con.prepareStatement("UPDATE voters SET STATUS=1 WHERE id=?");
	}

	@Override
	public Voter authenticateVoter(String voterEmail, String voterPassword) throws SQLException {

		pstmt1.setString(1, voterEmail);
		pstmt1.setString(2, voterPassword);

		try (ResultSet rst = pstmt1.executeQuery()) {
			if (rst.next())
				return new Voter(rst.getInt(1), rst.getString(2), voterEmail, voterPassword, rst.getInt(5),
						rst.getString(6));
		}
		return null;
	}

	@Override
	public String updateVoterStatus(int voterId) throws SQLException {
		pstmt2.setInt(1, voterId);

		if (pstmt2.executeUpdate() == 1)
			return "VOTERS : UPDATE SUCCESSFUL";
		return "VOTERS : UPDATE FAILED";
	}

	public void cleanUp() throws SQLException {

		if (pstmt1 != null)
			pstmt1.close();

		if (con != null)
			con.close();
	}
}