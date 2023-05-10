package com.petkpetk.service.domain.shopping.service.cart;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.petkpetk.service.domain.shopping.dto.cart.CartItemDto;
import com.petkpetk.service.domain.shopping.dto.cart.request.CartItemRequest;
import com.petkpetk.service.domain.shopping.dto.cart.response.CartItemResponse;
import com.petkpetk.service.domain.shopping.dto.priceInfo.ItemPriceInfo;
import com.petkpetk.service.domain.shopping.entity.cart.Cart;
import com.petkpetk.service.domain.shopping.entity.cart.CartItem;
import com.petkpetk.service.domain.shopping.entity.item.Item;
import com.petkpetk.service.domain.shopping.exception.StockAlreadyInCartException;
import com.petkpetk.service.domain.shopping.repository.cart.CartItemRepository;
import com.petkpetk.service.domain.shopping.repository.cart.CartRepository;
import com.petkpetk.service.domain.shopping.service.item.ItemService;
import com.petkpetk.service.domain.user.dto.UserAccountDto;
import com.petkpetk.service.domain.user.service.UserAccountService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class CartService {

	private final ItemService itemService;
	private final UserAccountService userAccountService;
	private final CartRepository cartRepository;
	private final CartItemRepository cartItemRepository;

	public void addCartItems(CartItemRequest cartItemRequest, String email) {

		Item item = itemService.getItem(cartItemRequest.getItemId());
		UserAccountDto userAccountDto = userAccountService.searchUserDto(email);
		Cart cart = cartRepository.findByUserAccountId(userAccountDto.getId()).orElse(Cart.of(userAccountDto));

		if (cartItemRepository.findByCartIdAndItemId(cart.getId(), item.getId()).isPresent() ) {
			throw new StockAlreadyInCartException();
		}

		CartItem cartItem = CartItem.of(cart, item, cartItemRequest.getCartItemCount());
		cartItemRepository.save(cartItem);
	}

	public CartItemResponse getCartItems(String email) {
		UserAccountDto userAccountDto = userAccountService.searchUserDto(email);
		Cart cart = cartRepository.findCartByUserAccountId(userAccountDto.getId());

		if (cart==null) {
			return CartItemResponse.of();
		}

		List<CartItem> cartItems = cartItemRepository.findCartItemsByCartIdWithRepresentativeItemImage(cart.getId());

		Set<CartItemDto> cartItemDtos = cartItems.stream()
			.map(CartItemDto::from)
			.collect(Collectors.toUnmodifiableSet());

		ItemPriceInfo itemPriceInfo = ItemPriceInfo.of(cartItemDtos, 0L, 0L, 0L, 0L);

		return CartItemResponse.of(cartItemDtos, itemPriceInfo);
	}






}
