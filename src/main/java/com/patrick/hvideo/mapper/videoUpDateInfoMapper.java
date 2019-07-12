package com.patrick.hvideo.mapper;


import org.apache.ibatis.annotations.*;

@Mapper
public interface  videoUpDateInfoMapper {
    @Results(id = "videoUpDateInfoMap", value = {
            @Result(property = "addTime", column = "add_time")
    })


    @ResultMap(value = "videoUpDateInfoMap")
    @Select("SELECT SUM(data) FROM video_update WHERE DATE(add_time) = CURDATE() ")
    String getUpdateData();


    @Insert("INSERT INTO  video_update(source , add_time , data) VALUES (#{sourcw} , #{addTime} ,#{data} )")
    void insertVideoUpdateInfo();
}
