package com.petkpetk.service.domain.shopping.entity.review;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.petkpetk.service.domain.shopping.entity.AuditingFields;
import com.petkpetk.service.domain.shopping.entity.item.Item;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Table(name = "review")
@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
public class Review extends AuditingFields {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "review_id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "item_id")
	private Item item;

	// @ManyToOne
	// @JoinColumn(name = "user_id")
	// private UserAccount userAccount;
	//
	// @Column(nullable = false, length = 1500)
	// private String content;
	//
	// private Long like = 0L;
	//
	// public Review(Item item, UserAccount userAccount, String content, Long like) {
	// 	this.item = item;
	// 	this.userAccount = userAccount;
	// 	this.content = content;
	// 	this.like = like;
	// }
	//
	// public static Review of(Item item, UserAccount userAccount, String content, Long like) {
	// 	return new Review(item, userAccount, content, like);
	// }
	//
	// public void updateReview(ReviewResponse reviewResponse) {
	// 	this.content = reviewResponse.getContent();
	// 	this.like = reviewResponse.getLike();
	// }

}

