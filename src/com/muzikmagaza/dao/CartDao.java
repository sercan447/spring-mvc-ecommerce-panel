package com.muzikmagaza.dao;

import com.muzikmagaza.model.Cart;

public interface CartDao {
	
	Cart getCartById(int cartId);
	void update(Cart cart);
	
}
