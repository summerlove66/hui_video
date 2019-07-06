package com.patrick.hvideo.mapper;


import com.patrick.hvideo.model.VideoColumn;
import org.apache.ibatis.annotations.*;


@Mapper
public interface VideoColumnMapper {

    @Results(id= "videocolMap" ,value ={
            @Result(property = "videoType", column = "video_type"),
            @Result(property = "contType", column = "cont_type"),
            @Result(property = "dataId", column = "data_id")
    })
    @Select("SELECT * FROM video_column WHERE id =#{id}")
    VideoColumn findVideoColumnById(@Param("id") int id);




}
