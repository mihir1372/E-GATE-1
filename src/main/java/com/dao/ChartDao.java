package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ChartBean;

@Repository
public class ChartDao {

	@Autowired
	JdbcTemplate stmt;
		public List<ChartBean> getchart() {
			
			String sq = "select logdate,count(*) as count from addguest group by logdate order by logdate";

			return stmt.query(sq, new BeanPropertyRowMapper<ChartBean>(ChartBean.class));
		}

	}

