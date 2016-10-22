package com.lt.cms.mapper;

import com.lt.cms.entity.Article;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by litao on 2016/10/20.
 */
@Mapper
public interface ArticleMapper {

    @Results({
            @Result(property = "createDate", column = "create_date")
    })
    @Select("select * from article where id = #{id}")
    Article findArticle(@Param("id") String id);

    @Select("select * from article where category_id = #{categoryId} order by create_date desc limit 1")
    Article findArticleByCategory(@Param("categoryId") String categoryId);

    @Select("select a.id from article a left join category c on a.category_id = c.id where a.id < #{id} and c.name = #{name}  order by a.id desc limit 1")
    String findPreArticle(@Param("id") String id, @Param("name") String name);

    @Select("select a.id from article a left join category c on a.category_id = c.id where a.id > #{id} and c.name = #{name}  order by a.id asc limit 1")
    String findNextArticle(@Param("id") String id, @Param("name") String name);


    // 根据栏目名称查找文章
    @Results({
            @Result(property = "createDate", column = "create_date"),
            @Result(property = "categoryId", column = "category_id"),
            @Result(property = "categoryUrl", column = "url")
    })
    @Select("select a.id, a.name, a.summary, a.create_date, a.category_id, c.url from article a left join category c on a.category_id = c.id where c.name = #{name}")
    List<Article> findArticles(@Param("name") String name);

    @Select("select count(a.id) from article a left join category c on a.category_id = c.id where c.name = #{name}")
    int findArticleCount(@Param("name") String name);




}
