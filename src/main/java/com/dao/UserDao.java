package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.GuestBean;
import com.bean.HouseBean;
import com.bean.LoginBean;
import com.bean.SearchBean;
import com.bean.SignUpBean;
import com.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;

	public void addUser(SignUpBean sbean) {

		String InsertQuery = "insert into users(firstname,lastname,email,password,gender,dob,role) values (?,?,?,?,?,?,?)";

		stmt.update(InsertQuery, sbean.getFirstname(), sbean.getLastname(), sbean.getEmail(), sbean.getPassword(),
				sbean.getGender(), sbean.getDob(),sbean.getRole());
	}

	
	public List<UserBean> getAllUsers() {
		String sq = "select * from users";

		return stmt.query(sq, new BeanPropertyRowMapper<UserBean>(UserBean.class));
	}
	
	public void addGuest(GuestBean guest) {
		String InsertGuestQuery ="insert into AddGuest(memberName,houseNumber,blockNumber,logdate,time,purpose,guestName,noofGuests) values(?,?,?,?,?,?,?,?)";
	
		stmt.update(InsertGuestQuery,guest.getMemberName(),guest.getHouseNumber(),guest.getBlockNumber(),guest.getLogdate(),guest.getTime()
				,guest.getPurpose(),guest.getGuestName(),guest.getNoofGuests());
	}
	public List<GuestBean> getAllGuest() {
		String sq = "select * from addguest";

		return stmt.query(sq, new BeanPropertyRowMapper<GuestBean>(GuestBean.class));
	}

	public void DeleteUser(Integer userid) {

		String DeleteQuery ="delete from users where user_id=?";

		stmt.update(DeleteQuery, userid);
	}
	
	public void UpdateVisitStatus(Integer guestid) {
		
		String UpdateStatus ="update addguest set visitedInd =true where guestid=? " ;
		
		stmt.update(UpdateStatus,guestid);
		
	}

	public UserBean ViewUser(Integer userid) {

		String ViewUser = "select * from users where user_id=?";

		UserBean user = stmt.queryForObject(ViewUser, new BeanPropertyRowMapper<UserBean>(UserBean.class),
				new Object[] { userid });
		return user;
	}
	public List<UserBean> getAllSearchUsers(SearchBean sbean) {
		String sq = "select * from users where firstname like ?";

		
		return stmt.query(sq, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] {sbean.getName()});
	}
	public UserBean LoginUser(String email,String password) {
		String Login = "select * from users where email = ? and password = ?";
		UserBean user = null;
		try {
		  user = stmt.queryForObject(Login , new BeanPropertyRowMapper<UserBean>(UserBean.class),
				new Object[] {email,password});
		  //above query will throw an exception if email or password is wrong, so 
		  //our user will be null 
		  //if email and password both are correct than it filled up user data  
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;// null - data 
	}
}
