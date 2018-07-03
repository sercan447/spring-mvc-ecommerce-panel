package com.muzikmagaza.dao;

import com.muzikmagaza.model.Cart;
import com.muzikmagaza.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
	CartItem getCartItemByProductId(int productId);
	
	
	
}
