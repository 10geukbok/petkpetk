package com.petkpetk.service.domain.shopping.entity.cart;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.petkpetk.service.common.AuditingFields;
import com.petkpetk.service.domain.community.entity.Hashtag;
import com.petkpetk.service.domain.shopping.dto.item.ItemDto;
import com.petkpetk.service.domain.shopping.entity.item.Item;
import com.petkpetk.service.domain.user.dto.UserAccountDto;
import com.petkpetk.service.domain.user.entity.UserAccount;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
// @ToString(callSuper = true)
@NoArgsConstructor
@Entity
@AllArgsConstructor
public class Cart  extends AuditingFields {

	@Id
	@Column(name = "cart_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_account_id")
	private UserAccount userAccount;

	private Long totalPrice;

	@ToString.Exclude
	@JoinTable(name = "cart_item", joinColumns = @JoinColumn(name = "cart_id"), inverseJoinColumns = @JoinColumn(name = "item_id"))
	@ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	private Set<Item> items = new LinkedHashSet<>();


	private Cart(UserAccount userAccount) {
		this.userAccount = userAccount;
	}

	public static Cart of(UserAccountDto userAccountDto) {
		return new Cart(userAccountDto.toEntity());
	}

	public void addItem(Item item) {
		this.items.add(item);
		item.getCarts().add(this);
	}
}
