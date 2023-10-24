package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.HouseBean;

@Repository
public class HouseDao {

	@Autowired
	JdbcTemplate stmt;

	public void addhouse(HouseBean house) {

		String InsertQuery = "insert into house(housenumber,blocknumber,floor,contactnumber,tenantInd,userId) values(?,?,?,?,?,?)";

		stmt.update(InsertQuery, house.getHouseNumber(), house.getBlockNumber(), house.getFloor(),
				house.getContactNumber(), house.getTenantInd(), house.getUserId());

	}

	public List<HouseBean> getAllHouse() {
		String sq = "select * from house";

		return stmt.query(sq, new BeanPropertyRowMapper<HouseBean>(HouseBean.class));
	}

	public HouseBean getHouseDetailByUserId(Integer userId) {
		String sq = "select * from house where userId = ?";
		try {
			return stmt.queryForObject(sq, new BeanPropertyRowMapper<HouseBean>(HouseBean.class),
					new Object[] { userId });
		} catch (Exception e) {
			System.out.println("Please add atleast 1 house");
		}
		return null;
	}
}
