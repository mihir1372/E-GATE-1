package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.MemberBean;
@Repository
public class MemberDao {
	@Autowired
	JdbcTemplate stmt;
	
	public void addMember(MemberBean mbean) {
		
		String InsertQuery = "insert into member(firstname,lastname,gender,dob,houseId,profilePath) values (?,?,?,?,?,?)";

		stmt.update(InsertQuery, mbean.getFirstname(), mbean.getLastname(),mbean.getGender(), mbean.getDob(),mbean.getHouseId(),mbean.getProfilepath());
	}
	
	public List<MemberBean> getAllMembers(){
		
		String sq = "select * from member";
		
		return stmt.query(sq,new BeanPropertyRowMapper<MemberBean>(MemberBean.class));
	}
}
