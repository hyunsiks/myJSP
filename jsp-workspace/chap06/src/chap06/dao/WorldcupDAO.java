package chap06.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import chap06.model.Worldcup;
import chap06.model.WorldcupItem;

public class WorldcupDAO {

	private Connection conn;
	
	public WorldcupDAO(Connection conn) {
		this.conn = conn;
	}
	
	public int getNotYetCount() {
		String sql = "SELECT count(*) FROM worldcup WHERE status='M'";
		
		try(
			
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
			){
				rs.next();
				return rs.getInt(1);
			}catch(SQLException e) {
				e.printStackTrace();
				return 0;
			}
	}
	
	public int getCount() {
		String sql = "SELECT count(*) FROM worldcup";
		
		try(
		
			PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int addQuestion(String question) {
		String sql = "INSERT INTO worldcup(wid,name) "
					+ "VALUES(worldcup_wid_seq.nextval, ?)";
		
		try(
		
			PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setString(1, question);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return 0;
		}
		
	}
	
	
	public ArrayList<Worldcup> getWorldcupList(){
		String sql = "SELECT * FROM worldcup";
		
		try(
				PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<Worldcup> list = new ArrayList<>();
			while(rs.next()) {
				list.add(new Worldcup(
						rs.getInt(1),
						rs.getString(2),
						rs.getInt(3),
						rs.getString(4)
				));
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	

	public Worldcup getWorldcup(int wid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM worldcup WHERE wid=?";
		
		try(
				PreparedStatement pstmt = conn.prepareStatement(sql);
			){
				pstmt.setInt(1, wid);
				
				try(
					ResultSet rs = pstmt.executeQuery();
				){
					rs.next();
					return new Worldcup(
							rs.getInt(1),
							rs.getString(2),
							rs.getInt(3),
							rs.getString(4)
					);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	
	public ArrayList<WorldcupItem> getWorldcupItemList(int wid){
		String sql = "SELECT * From worldcup_item WHERE wid=?";
		
		try(
			PreparedStatement pstmt = conn.prepareStatement(sql);
				
		){
			ArrayList<WorldcupItem> list = new ArrayList<>();
			
			pstmt.setInt(1, wid);
			
			try(
					ResultSet rs = pstmt.executeQuery();
			){
				while(rs.next()) {
					list.add(new WorldcupItem(
						rs.getInt(1),
						rs.getString(2),
						rs.getInt(3),
						rs.getInt(4),
						rs.getInt(5),
						rs.getInt(6)
					));
				}
			}
			return list;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<WorldcupItem> getAllItemList(){
		String sql = "SELECT * From worldcup_item";
		
		try(
			PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
		){
			ArrayList<WorldcupItem> list = new ArrayList<>();
			
			while(rs.next()) {
				list.add(new WorldcupItem(
					rs.getInt(1),
					rs.getString(2),
					rs.getInt(3),
					rs.getInt(4),
					rs.getInt(5),
					rs.getInt(6)
				));
				
			}
			return list;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public void winItem(int win_id) {
		String sql = "UPDATE worldcup_item "
					+ "SET win = win +1 where id = ?";
		
		try(
		
			PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setString(1, win_id+"");
			pstmt.executeUpdate();
			System.out.println("win투표");
			
		}catch(Exception e) {
			e.printStackTrace();
		
		}
	}
	
	public void loseItem(int lose_id) {
		String sql = "UPDATE worldcup_item "
				+ "SET lose = lose +1 where id = ?";
		
		try(
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setString(1, lose_id+"");
			pstmt.executeUpdate();
			System.out.println("lose투표");
		}catch(Exception e) {
			e.printStackTrace();
		
		}
	}
}






