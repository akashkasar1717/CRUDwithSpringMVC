package com.java.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.java.beans.Emp;

@Component
public class EmpDao {

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(Config.class);
	JdbcTemplate template = (JdbcTemplate) context.getBean("template");

	public int save(Emp s) {
		String sql = "insert into users(fname,lname,address,pincode,mobile,email,password) values('" + s.getFname()
				+ "','" + s.getLname() + "','" + s.getAddress() + "','" + s.getPincode() + "','" + s.getMobile() + "','"
				+ s.getEmail() + "','" + s.getPassword() + "')";

		return template.update(sql);
	}

	public int deleteEmployee(int id) {
		String sql = "delete from users where id=" + id + "";
		return template.update(sql);
	}

	public Emp getEmpById(Integer id) {
		String sql = "SELECT * FROM users WHERE id = ?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));

	}

	public int update(final Emp p) {
		int val = template.update(
				"update users set fname=?,lname=?,address=?,pincode=?,mobile=?,email=?,password=? where id=?",
				new PreparedStatementSetter() {
					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, p.getFname());
						ps.setString(2, p.getFname());
						ps.setString(3, p.getAddress());
						ps.setString(4, p.getPincode());
						ps.setString(5, p.getMobile());
						ps.setString(6, p.getEmail());
						ps.setString(7, p.getPassword());
						ps.setInt(8, p.getId());
					}
				});
		return val;
	}

	public List<Emp> getEmployees() {
		return template.query("select * from users", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int rowNum) throws SQLException {
				Emp s1 = new Emp();
				s1.setId(rs.getInt(1));
				s1.setFname(rs.getString(2));
				s1.setLname(rs.getString(3));
				s1.setAddress(rs.getString(4));
				s1.setPincode(rs.getString(5));
				s1.setMobile(rs.getString(6));
				s1.setEmail(rs.getString(7));
				s1.setPassword(rs.getString(8));
				return s1;
			}
		});
	}

}