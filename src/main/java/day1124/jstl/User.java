package day1124.jstl;

public class User {
	private String id;
	private String pw;
	private Address address;

	public User(String id, String pw, Address address) {
		super();
		this.id = id;
		this.pw = pw;
		this.address = address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

}
