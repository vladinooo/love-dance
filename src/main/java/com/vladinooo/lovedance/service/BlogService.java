package com.vladinooo.lovedance.service;

import com.vladinooo.lovedance.entity.Article;
import com.vladinooo.lovedance.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly = true)
public class BlogService {


	private ArticleRepository articleRepository;


	@Autowired
	public BlogService(ArticleRepository articleRepository) {
		this.articleRepository = articleRepository;
	}
	

	public List<Article> getArticles() {
		return articleRepository.findAll();
	}

	public Article getArticle(String slug) {
		Article article = articleRepository.findBySlug();
	}


}
