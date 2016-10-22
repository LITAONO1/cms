package com.lt.cms.mapper;

import com.lt.cms.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by litao on 2016/10/20.
 */
@Mapper
public interface CategoryMapper {

    @Select("select * from category where is_show = 0 and parent_id = 0 order by location asc")
    List<Category> findTopCategories();

    @Select("select * from category where is_show = 0 and parent_id = 0 and is_index = 0 order by location asc")
    List<Category> findIndexCategories();

    @Select("select * from category where code = #{code}")
    Category findCategory(@Param("code") String code);


}
