package vo;

public class BikeUser {
	private String userid;
	private String password;
	private String name;
	private String email;
	private String roll;



	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRoll() {
		return roll;
	}
	
	public void setRoll(String roll) {
		this.roll = roll;
	}
	

	
	@Override
	public String toString() {
		return "User [ userid=" + userid + ", password=" + password + ", name=" + name + ", roll=" + roll
				+ ", email=" + email + ", roll="+roll+" ]";
	}
	
	
}
