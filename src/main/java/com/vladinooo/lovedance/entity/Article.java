package com.vladinooo.lovedance.entity;

import javax.persistence.*;

@Entity
@Table(indexes = {
		@Index(columnList = "slug", unique = true)
})
public class Article {

	public static final int SLUG_MAX = 256;
	public static final int TITLE_MAX = 256;
	public static final String TITLE_PATTERN = "[a-zA-Z]{1,256}";
	public static final String CONTENT_PATTERN = "[a-zA-Z]";

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;

	@Column(nullable = false, length = SLUG_MAX)
	private String slug;

	@Column(nullable = false, length = TITLE_MAX)
	private String title;

	@Column(nullable = false)
	private String content;

	@Column(nullable = false)
	private String datetime;

	@Column(nullable = false)
	private int order;

	@Column(nullable = false)
	private boolean enabled;


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
}
