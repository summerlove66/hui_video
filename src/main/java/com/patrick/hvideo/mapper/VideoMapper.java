package com.patrick.hvideo.mapper;

import com.patrick.hvideo.model.Video;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface VideoMapper {
    @Results( id = "videoMap" ,value = {
            @Result(property = "videoId" ,column = "id"),
            @Result(property = "link" ,column = "video_link"),
            @Result(property = "videoOrder" ,column = "video_order"),
            @Result(property = "orderName" ,column = "order_name"),
            @Result(property = "dataId" ,column = "data_id")

    })

    @Select("SELECT * FROM video WHERE id= #{videoId}")
    Video findById(@Param("videoId") int videoId );


    @ResultMap(value = "videoMap")
    @Select("SELECT * FROM video WHERE source= #{source} AND data_id=#{dataId}  ORDER BY video_order")
    List<Video> findBySourceAndDataId(@Param("source") String source , @Param("dataId") String dataId);


}
