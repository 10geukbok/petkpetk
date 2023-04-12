package com.petkpetk.service.domain.shopping.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@EntityListeners(AuditingEntityListener.class)
@MappedSuperclass
public abstract class AuditingFields {

	@DateTimeFormat(iso=DateTimeFormat.ISO.DATE_TIME)
	@CreatedDate
	@Column(nullable = true, updatable = false)
	protected LocalDateTime createdAt;

	@Column(nullable = true, updatable = false)
	@CreatedBy
	protected String createdBy;

	@DateTimeFormat(iso=DateTimeFormat.ISO.DATE_TIME)
	@LastModifiedDate
	protected LocalDateTime modifiedAt;

	@Column(nullable = true, updatable = false)
	@LastModifiedBy
	protected String modifiedBy;
}