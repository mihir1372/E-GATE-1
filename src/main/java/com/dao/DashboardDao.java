package com.dao;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DashboardDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public Integer monthGuestCount() {
		
		return stmt.queryForObject("select count(*) from addguest", Integer.class);
		
	} 

	public Integer visitedGuestCount() {
		
		return stmt.queryForObject("select count(*) from addguest where visitedInd = true ", Integer.class);
		
	} 
	
	public Integer thisMonthGuestCount() {
		Date d = new Date();
		Integer month = d.getMonth() +1;
		return stmt.queryForObject("select count(*) from addguest where visitedInd = true and month(LogDate)= "+ month ,Integer.class );
	}
	
}
