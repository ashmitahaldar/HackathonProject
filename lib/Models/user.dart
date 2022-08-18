enum Communities {
	lgbtqiaplus, 
	specialisedneeds
}

class User {
	String username; 
	String userEmail; 
	String password;
	Communities community; 

	User({
		required this.username, 
		required this.userEmail, 
		required this.password, 
		required this.community,
	});  
} 
