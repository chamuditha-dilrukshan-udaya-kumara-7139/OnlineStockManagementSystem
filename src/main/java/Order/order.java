package Order;

public class order {
	
	private String OrderID;
	private String CustomerName;
	private String CompanyName;
	private String Country;
	private String Address;
	private int ZipCode;
	private String ProductDetails;
	private int Quantity;
	
	
	public order(String orderID, String customerName, String companyName, String country, String address, int zipCode,
			String productDetails, int quantity) {
		
		this.OrderID = orderID;
		this.CustomerName = customerName;
		this.CompanyName = companyName;
		this.Country = country;
		this.Address = address;
		this.ZipCode = zipCode;
		this.ProductDetails = productDetails;
		this.Quantity = quantity;
	}


	public String getOrderID() {
		return OrderID;
	}

	public String getCustomerName() {
		return CustomerName;
	}

	public String getCompanyName() {
		return CompanyName;
	}

	public String getCountry() {
		return Country;
	}

	public String getAddress() {
		return Address;
	}

	public int getZipCode() {
		return ZipCode;
	}

	public String getProductDetails() {
		return ProductDetails;
	}	

	public int getQuantity() {
		return Quantity;
	}
	
}
