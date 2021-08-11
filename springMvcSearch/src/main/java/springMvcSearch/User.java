package springMvcSearch;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;


public class User {
	private String firstName;
	private String lastName;
	private String email; 
	private String nPassword;
	private String cPassword;
			/* @DateTimeFormat(pattern = "dd/MM/yyyy") */
	private Date date;
	private String gender;
	private List<String> courses;
	private String userType;
	private Address address;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getnPassword() {
		return nPassword;
	}
	public void setnPassword(String nPassword) {
		this.nPassword = nPassword;
	}
	
	public String getcPassword() {
		return cPassword;
	}
	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public List<String> getCourses() {
		return courses;
	}
	public void setCourses(List<String> courses) {
		this.courses = courses;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", nPassword="
				+ nPassword + ", cPassword=" + cPassword + ", date=" + date + ", gender=" + gender + ", courses="
				+ courses + ", userType=" + userType + ", address=" + address + "]";
	}
	
	
	
	
	
}
