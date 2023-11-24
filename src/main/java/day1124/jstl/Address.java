package day1124.jstl;

public class Address {
	private String zipcode;
	private String address;

	public Address(String zipcode, String address) {
		super();
		this.zipcode = zipcode;
		this.address = address;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
