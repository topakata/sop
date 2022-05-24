package models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="user")
@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int id;
	private String personalName;
	private String username;
	private String password;
	private String jobTitle;
	private String description;
	private String email;
	private String phone;
	private Address address;
	
	@XmlElementWrapper(name="itSkills")
	@XmlElement(name="skill")
	private List<Skill> itSkills;
	
	@XmlElementWrapper(name="personalSkills")
	@XmlElement(name="skill")
	private List<Skill> personalSkills;
	
	public User() {}

	public User(String personalName, String username, String password) {
		this.personalName = personalName;
		this.username = username;
		this.password = password;
		this.jobTitle = "Не е зададен";
		this.description = "Не е зададен";
		this.email = "Не е зададен";
		this.phone = "Не е зададен";
		this.address = new Address();
		this.itSkills = new ArrayList<Skill>();
		this.personalSkills = new ArrayList<Skill>();
	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getPersonalName() {
		return personalName;
	}

	public void setPersonalName(String personalName) {
		this.personalName = personalName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Skill> getItSkills() {
		return itSkills;
	}

	public void setItSkills(List<Skill> itSkills) {
		this.itSkills = itSkills;
	}

	public List<Skill> getPersonalSkills() {
		return personalSkills;
	}

	public void setPersonalSkills(List<Skill> personalSkills) {
		this.personalSkills = personalSkills;
	}

	@Override
	public int hashCode() {
		return Objects.hash(password, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(password, other.password) && Objects.equals(username, other.username);
	}
}
