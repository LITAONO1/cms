package com.lt.cms.mapper;

import com.lt.cms.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by litao on 2016/10/20.
 */
@Mapper
public interface CategoryMapper {

    @Select("select * from category")
    List<Category> findCategories();


}
