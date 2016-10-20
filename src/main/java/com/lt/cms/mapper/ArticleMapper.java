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

    @Results({
            @Result(property = "createDate", column = "create_date")
    })
    @Select("select a.id, a.name, a.summary, a.create_date from article a left join category c on a.category_id = c.id where c.name = #{name}")
    List<Article> findArticles(@Param("name") String name);


}
