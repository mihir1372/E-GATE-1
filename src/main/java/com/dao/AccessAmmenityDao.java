package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.AmmenitiesAccessBean;
import com.bean.AmmenitiesBean;
import com.bean.HouseBean;

@Repository
public class AccessAmmenityDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void accessammenities(AmmenitiesAccessBean ambean) {
		
		String InsertQuery = "insert into ammenities_access(date,time,duration,ammenitiesId,memberId) values (?,?,?,?,?)";
		
		stmt.update(InsertQuery,ambean.getDate(),ambean.getTime(),ambean.getDuration(),ambean.getAmmenitiesId(),ambean.getMemberId());
	}
	
	public List<AmmenitiesBean> getAllAmmenity() {
		String sq = "select * from ammenities_access";

		return stmt.query(sq, new BeanPropertyRowMapper<AmmenitiesBean>(AmmenitiesBean.class));
	}
	
}
