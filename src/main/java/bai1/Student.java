package bai1;

import java.util.List;

public class Student {
	private String firstName;
	private String lastName;
	private String dateOfBirth;
	private String email;
	private String phoneNumber;
	private String gender;
	private String address;
	private String city;
	private String pinCode;
	private String state;
	private String country;
	private List<String> hobbies;
	private QualificationAtr classX;
	private QualificationAtr classXII;
	private QualificationAtr graduation;
	private QualificationAtr Masters;
	private String courseApplied;

	public Student() {
		super();
	}

	public Student(String firstName, String lastName, String dateOfBirth, String email, String phoneNumber,
			String gender, String address, String city, String pinCode, String state, String country,
			List<String> hobbies, QualificationAtr classX, QualificationAtr classXII, QualificationAtr graduation,
			QualificationAtr masters, String courseApplied) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.pinCode = pinCode;
		this.state = state;
		this.country = country;
		this.hobbies = hobbies;
		this.classX = classX;
		this.classXII = classXII;
		this.graduation = graduation;
		Masters = masters;
		this.courseApplied = courseApplied;
	}

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

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public List<String> getHobbies() {
		return hobbies;
	}

	public void setHobbies(List<String> hobbies) {
		this.hobbies = hobbies;
	}

	public QualificationAtr getClassX() {
		return classX;
	}

	public void setClassX(QualificationAtr classX) {
		this.classX = classX;
	}

	public QualificationAtr getClassXII() {
		return classXII;
	}

	public void setClassXII(QualificationAtr classXII) {
		this.classXII = classXII;
	}

	public QualificationAtr getGraduation() {
		return graduation;
	}

	public void setGraduation(QualificationAtr graduation) {
		this.graduation = graduation;
	}

	public QualificationAtr getMasters() {
		return Masters;
	}

	public void setMasters(QualificationAtr masters) {
		Masters = masters;
	}

	public String getCourseApplied() {
		return courseApplied;
	}

	public void setCourseApplied(String courseApplied) {
		this.courseApplied = courseApplied;
	}

}
