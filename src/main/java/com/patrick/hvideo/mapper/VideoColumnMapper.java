package com.patrick.hvideo.mapper;


import com.patrick.hvideo.model.VideoColumn;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Mapper
public interface VideoColumnMapper {

    @Results(id = "videoColMap", value = {
            @Result(property = "videoType", column = "video_type"),
            @Result(property = "contType", column = "cont_type"),
            @Result(property = "dataId", column = "data_id")
    })
    @Select("SELECT * FROM vc WHERE id =#{id} ")
    VideoColumn findVideoColumnById(@Param("id") int id);

    @ResultMap(value = "videoColMap")
    @SelectProvider(type = VideoColSqlProvider.class ,method = "selector")
    List<VideoColumn> findVideoColByRange(VideoColumn videoColumn);

    @ResultMap(value = "videoColMap")
    @Select("SELECT * FROM video_column WHERE  source= #{source} AND data_id= #{dataId} ORDER BY id DESC" )
    VideoColumn findVideoColBYSourceAndDataId(@Param("source") String source ,@Param("dataId") String dataId);




}
