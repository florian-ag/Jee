package fr.formation.inti.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class User {

	private Integer userId;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private Date date;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(Integer userId, String email, String password, String firstName, String lastName, Date date) {
		this.email = email;
		this.password = password;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "UserId", unique = true, nullable = false)
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", nullable = false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "firstName")
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "lastName")
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "date", nullable = false)
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", email=" + email + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", date=" + date + "]";
	}
	
	
	
	
}
