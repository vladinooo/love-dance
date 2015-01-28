package com.vladinooo.lovedance.dto;

import com.vladinooo.lovedance.entity.Article;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class ArticleForm {
	
	@NotNull
	@Size(min=1, max= Article.TITLE_MAX, message="{articleTitleSizeError}")
	@Pattern(regexp= Article.TITLE_PATTERN, message="{articleTitlePatternError}")
	private String title;

	@NotNull
	@Size(min=1, message="{articleContentSizeError}")
	@Pattern(regexp= Article.CONTENT_PATTERN, message="{articleContentPatternError}")
	private String content;


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

}
