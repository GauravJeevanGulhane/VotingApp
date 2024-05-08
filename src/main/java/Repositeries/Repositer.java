package Repositeries;

import java.sql.SQLException;
import java.util.ArrayList;

import Models.VoteModel;
import Models.VoterModel;

public class Repositer extends SQLconfig{
	public boolean IsRegister(VoterModel model)
	{
		try {
			stmt=con.prepareStatement("insert into voters values (?,?,?,?)");
			stmt.setString(1, model.getUsername());
			stmt.setString(2, model.getPassword());
			stmt.setString(3, model.getEmail());
			stmt.setLong(4, model.getPhone());
			int val=stmt.executeUpdate();
			if(val>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		} catch (SQLException e) {	
		e.printStackTrace();
			return false;
		}
	}
	public VoterModel getVoter(String Username) {
		VoterModel model=new VoterModel();
		try {
			stmt=con.prepareStatement("select * from voters where username=?");
			stmt.setString(1, Username);
			rs=stmt.executeQuery();
			while(rs.next())
			{
				model.setUsername(rs.getString(1));
				model.setPassword(rs.getString(2));
				model.setEmail(rs.getString(3));
				model.setPhone(rs.getLong(4));
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model=null;
		}
		return model;
	}
	public boolean IsAddVote(VoteModel model)
	{
		try {
			stmt=con.prepareStatement("insert into votes values(?,?)");
			stmt.setString(1, model.getVote());
			stmt.setString(2, model.getCandidate());
			int val=stmt.executeUpdate();
			if(val>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	public ArrayList<VoteModel> getAllVotes()
	{
		ArrayList<VoteModel> list=new ArrayList<VoteModel>();
		try {
			stmt=con.prepareStatement("select * from votes");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				VoteModel model=new VoteModel();
				model.setVote(rs.getString(1));
				model.setCandidate(rs.getString(2));
				list.add(model);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			list=null;
		}
		return list;
	}
}
