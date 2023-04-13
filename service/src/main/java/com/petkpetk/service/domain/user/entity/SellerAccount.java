package com.petkpetk.service.domain.user.entity;

import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.petkpetk.service.common.AuditingFields;
import com.petkpetk.service.config.converter.RoleTypeConverter;
import com.petkpetk.service.common.RoleType;
import com.petkpetk.service.common.SignUpProvider;
import com.petkpetk.service.domain.user.dto.SellerAccountDto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(callSuper = true)
@NoArgsConstructor
@Table(indexes = {@Index(columnList = "email"), @Index(columnList = "createdAt"), @Index(columnList = "createdBy")})
@Entity
public class SellerAccount extends AuditingFields implements Serializable {

	//Todo: 칼럼 length 제한 설정

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seller_id")
	private Long id;

	@Column(unique = true)
	private String email;

	private String password;

	private String name;

	private String nickname;

	@Embedded
	private Address address;

	@Column(length = 512)
	@Size(max = 512)
	private String profileImage;

	@Enumerated(EnumType.STRING)
	private SignUpProvider signUpProvider;

	@Column(nullable = false)
	@Convert(converter = RoleTypeConverter.class)
	private Set<RoleType> roles = new LinkedHashSet<>();

	private String phoneNumber;

	private String businessName;

	private String businessNumber;

	public SellerAccount(String email, String password, String name, String nickname, Address address,
		String profileImage, SignUpProvider signUpProvider, Set<RoleType> roles) {
		this.email = email;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.address = address;
		this.profileImage = profileImage;
		this.signUpProvider = signUpProvider;
		this.roles = roles;
	}

	public static SellerAccount of(String email, String password, String name, String nickname, Address address,
		String profileImage, SignUpProvider signUpProvider, Set<RoleType> roles) {
		return new SellerAccount(email, password, name, nickname, address, profileImage, signUpProvider, roles);
	}

	public SellerAccount encodePassword(PasswordEncoder passwordEncoder) {
		this.password = passwordEncoder.encode(this.password);
		return this;
	}

	public boolean checkPassword(String thatPassword, PasswordEncoder passwordEncoder) {
		return passwordEncoder.matches(thatPassword, this.password);
	}

	public void update(SellerAccountDto sellerAccountDto) {
		this.email = sellerAccountDto.getEmail();
		this.password = sellerAccountDto.getPassword();
		this.name = sellerAccountDto.getName();
		this.nickname = sellerAccountDto.getNickname();
		this.address = sellerAccountDto.getAddress();
		this.profileImage = sellerAccountDto.getProfileImage();
		this.roles = sellerAccountDto.getRoles();
	}

	@PrePersist
	public void anonymousSetup() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null && "anonymousUser".equals(authentication.getName())) {
			this.createdBy = this.getName();
			this.modifiedBy = this.getName();
		}
	}

	@Override
	public boolean equals(Object that) {
		if (this == that) {
			return true;
		}
		if (!(that instanceof SellerAccount)) {
			return false;
		}
		return this.getId() != null && this.getId().equals(((SellerAccount)that).getId());
	}

	@Override
	public int hashCode() {
		return Objects.hash(this.getId());
	}

}

