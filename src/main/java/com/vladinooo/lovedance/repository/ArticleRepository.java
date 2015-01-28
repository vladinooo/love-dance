package com.vladinooo.lovedance.repository;

import com.vladinooo.lovedance.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article, Long> {

	List<Article> findAll();

	Article findBySlug(String slug);

}
