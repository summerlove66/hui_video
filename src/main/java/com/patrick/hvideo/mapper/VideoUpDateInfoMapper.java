package com.patrick.hvideo.mapper;


import org.apache.ibatis.annotations.*;

@Mapper
public interface VideoUpDateInfoMapper {
//    @Results(id = "videoUpDateInfoMap", value = {
//            @Result(property = "addTime", column = "add_time")
//    })


    @ResultType(value = Integer.class)

    @Select({"SELECT SUM(data) FROM video_update WHERE DATE(addTime) = CURDATE()" })
    Integer getUpdateData();


    @Insert("INSERT INTO  video_update(source , addTime , data) VALUES (#{sourcw} , #{addTime} ,#{data} )")
    void insertVideoUpdateInfo();
}
