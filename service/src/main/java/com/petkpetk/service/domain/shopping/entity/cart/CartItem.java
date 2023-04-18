package com.petkpetk.service.domain.shopping.entity.cart;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.petkpetk.service.common.AuditingFields;
import com.petkpetk.service.domain.shopping.entity.item.Item;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(callSuper = true)
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "cart_item")
public class CartItem extends AuditingFields {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "cart_id")
	private Cart cart;

	@ManyToOne
	@JoinColumn(name = "item_id")
	private Item item;

	private Long itemCount;

	private Long totalPrice;

	public CartItem(Cart cart, Item item, Long itemCount) {
		this.cart = cart;
		this.item = item;
		this.itemCount = itemCount;
	}

	public static CartItem of(Cart cart, Item item, Long itemCount) {
		return new CartItem(cart, item, itemCount);
	}
	public static CartItem createCartItem(Cart cart, Item item, Long itemCount) {
		return CartItem.of(cart,item,itemCount);
	}

	public void addItemCount(Long itemCount){
		this.itemCount += itemCount;
	}

	public void updateCount(Long itemCount){
		this.itemCount = itemCount;
	}


}





