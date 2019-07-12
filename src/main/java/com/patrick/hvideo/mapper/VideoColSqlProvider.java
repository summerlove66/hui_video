package com.patrick.hvideo.mapper;

import com.patrick.hvideo.model.VideoColumn;

public class VideoColSqlProvider {

    public String selector(VideoColumn videoColumn) {
        StringBuilder sql = new StringBuilder("SELECT * FROM video_column WHERE 1=1");
        if (videoColumn ==null){
            return sql.toString();
        }

        if (videoColumn.getVideoType() != null) {
            sql.append(" AND video_type =#{videoType}");
        }
        if (videoColumn.getArea() != null) {
            sql.append(" AND area =#{area}");
        }
        if (videoColumn.getCast() !=null){
            sql.append(" AND cast Like CONCAT('%',#{cast},'%')" );
        }
        if (videoColumn.getContType()!=null){
            sql.append(" AND cont_type =#{contType}" );
        }
        if (videoColumn.getTitle() !=null){
            sql.append(" AND title LIKE CONCAT('%',#{title},'%')" );
        }
        if(videoColumn.getYear() !=0){
            sql.append(" AND year=#{year}");
        }

        System.out.println("SQL " +sql.toString());
        return sql.toString();


    }
}
