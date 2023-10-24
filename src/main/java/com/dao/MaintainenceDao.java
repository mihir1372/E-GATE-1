package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.AmmenitiesBean;

@Repository
public class MaintainenceDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addAmmenities(AmmenitiesBean abean) {

		String InsertQuery = "insert into ammenities(title,active) values (?,?)";
		
		stmt.update(InsertQuery,abean.getTitle(),abean.getActive());
	}
	
	public List<AmmenitiesBean> getAllAmmenity() {
		
		String sq = "select * from ammenities";

		return stmt.query(sq, new BeanPropertyRowMapper<AmmenitiesBean>(AmmenitiesBean.class));
	}
	
	public AmmenitiesBean getAmmenityById(Integer ammenitiesId){
		
		String sq="select * from ammenities where ammenitiesId=?";
		
		
		return (AmmenitiesBean) stmt.queryForObject(sq, new BeanPropertyRowMapper<AmmenitiesBean>(AmmenitiesBean.class),new Object[] {ammenitiesId});
		
	}

	public void updateAmmenity(AmmenitiesBean abean) {

		stmt.update("update ammenities set maintainenece_start_date = ? , maintainenece_end_date = ? , active = ? where ammenitiesId = ? ",abean.getMaintainenece_start_date(),abean.getMaintainenece_end_date(),abean.getActive(),abean.getAmmenitiesId());
	}
}
