package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.util.PJConn;

public class MemberDAO {

	public int duplecateID(String id){
		int cnt=0;
	    try{
	    	Connection con = PJConn.getConnection();
	        StringBuilder sql=new StringBuilder();
	        
	        //아이디 중복 확인
	        sql.append(" SELECT count(userid) as cnt ");
	        sql.append(" FROM userac ");
	        sql.append(" WHERE userid = ? ");
	        
	        PreparedStatement pstmt = con.prepareStatement(sql.toString());
	        pstmt.setString(1, id);
	        
	        ResultSet rs = pstmt.executeQuery();
	        if(rs.next()){
	        	cnt=rs.getInt("cnt");
	        }
	    }catch(Exception e){
	     	System.out.println("아이디 중복 확인 실패 : " + e);
	    }//try end
		return cnt;
	}//duplecateID end
	
	
}
