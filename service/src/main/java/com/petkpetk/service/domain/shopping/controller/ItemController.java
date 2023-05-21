package com.petkpetk.service.domain.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.stream.IntStream;

import javax.validation.Valid;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.petkpetk.service.domain.shopping.dto.cart.request.CartItemRegisterRequest;
import com.petkpetk.service.domain.shopping.dto.item.ItemDto;
import com.petkpetk.service.domain.shopping.dto.item.ItemImageDto;
import com.petkpetk.service.domain.shopping.dto.item.request.ItemRegisterRequest;
import com.petkpetk.service.domain.shopping.dto.item.response.ItemResponse;
import com.petkpetk.service.domain.shopping.dto.order.CheckoutDto;
import com.petkpetk.service.domain.shopping.dto.order.request.CheckoutRequest;
import com.petkpetk.service.domain.shopping.dto.review.request.ReviewRegisterRequest;
import com.petkpetk.service.domain.shopping.dto.review.response.ReviewResponse;
import com.petkpetk.service.domain.shopping.service.item.ItemService;
import com.petkpetk.service.domain.shopping.service.review.ReviewService;
import com.petkpetk.service.domain.shopping.service.review.likes.ReviewLikesService;
import com.petkpetk.service.domain.user.dto.UserAccountDto;
import com.petkpetk.service.domain.user.dto.security.UserAccountPrincipal;
import com.petkpetk.service.domain.user.service.UserAccountService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/item")
public class ItemController {

	private final ItemService itemService;
	private final UserAccountService userAccountService;
	private final ReviewLikesService reviewLikesService;
	private final ReviewService reviewService;

	@GetMapping("/my-page")
	public String myPageView() {
		return "my-page/seller/sellerMyPage";
	}

	@GetMapping("/new")
	public String registerItem(Model model) {
		model.addAttribute("item", new ItemRegisterRequest());
		return "item/itemApply";
	}

	@PostMapping("/new")
	public String registerItem(@Valid ItemRegisterRequest itemRegisterRequest,
		@AuthenticationPrincipal UserAccountPrincipal userAccountPrincipal) {
		itemService.registerItem(
			ItemDto.from(itemRegisterRequest, userAccountPrincipal.toDto()));
		return "redirect:/";
	}

	@GetMapping("/{itemId}")
	public String itemDetail(Model model, @PathVariable("itemId") Long itemId, Authentication authentication) {
		ItemResponse itemResponse = itemService.getItemDetail(itemId);
		UserAccountDto itemUser = userAccountService.searchUserDto(itemResponse.getUserAccountDto().getEmail());

		String email = "";
		if (authentication != null && authentication.isAuthenticated()) {
			email = authentication.getName();
			model.addAttribute("userEmail", email);
			UserAccountDto userAccount = userAccountService.searchUserDto(email);
			HashMap<String, String> hashMap;
			hashMap = reviewLikesService.findHistoryLikeByUser(userAccount.getId());
			model.addAttribute("reviewHashMap", hashMap);
		}
		List<ReviewResponse> reviewList = reviewService.getReviewList(itemId);

		model.addAttribute("item", itemResponse);
		model.addAttribute("order",new CheckoutRequest(List.of(CheckoutDto.of(itemResponse.getId()))));
		model.addAttribute("cart", new CartItemRegisterRequest());
		model.addAttribute("itemUser", itemUser);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("reviewDtos", new ReviewRegisterRequest());
		return "item/itemDetail";

	}

	@GetMapping("/modify/{itemId}")
	public String modifyItem(@PathVariable("itemId") Long itemId, Model model) {
		ItemResponse itemResponse = itemService.getItemDetail(itemId);
		model.addAttribute("item", itemResponse);
		return "item/itemApply";
	}

	@PostMapping("/modify/{itemId}")
	public String modifyItem(
		ItemRegisterRequest itemUpdateRequest,
		BindingResult bindingResult, Model model,
		@RequestParam("images") List<MultipartFile> rawImages,
		@RequestParam("imageNames") List<String> imageNames,
		@RequestParam("uniqueImageNames") List<String> uniqueImageNames
	) {

		if (bindingResult.hasErrors()) {
			log.info("errors = {}", bindingResult);
			return "redirect:/seller/item-manage";
		}

		itemUpdateRequest.setImages(rawImages);
		IntStream.range(0, imageNames.size())
			.filter(i -> !imageNames.get(i).equals("첨부파일"))
			.forEach(i -> itemUpdateRequest.getItemImageDtos()
				.add(ItemImageDto.of(imageNames.get(i), uniqueImageNames.get(i))));

		ItemResponse itemResponse = itemService.updateItem(itemUpdateRequest);
		model.addAttribute("item", itemResponse);

		return "redirect:/item/" + itemUpdateRequest.getId();
	}

	@GetMapping("/delete/{itemId}")
	public String deleteItem(@PathVariable("itemId") Long itemId) {
		itemService.deleteItem(itemId);
		return "redirect:/seller/item-manage";
	}

}
