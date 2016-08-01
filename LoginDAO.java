package com.niit.ShoppingCart;

public class LoginDAO {
public boolean isValidUser(String userId,String Password)
{
	if(userId.equals("niit")&&Password.equals("niit"))
	{
		return true;
	}
	else
	{
		return false;
	}
}
}
