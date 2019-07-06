package com.patrick.hvideo.controller;

import com.patrick.hvideo.mapper.VideoColumnMapper;
import com.patrick.hvideo.mapper.VideoMapper;
import com.patrick.hvideo.model.Video;
import com.patrick.hvideo.model.VideoColumn;
import com.patrick.hvideo.model.VideoGroup;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class VideoController {
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private VideoColumnMapper videoColumnMapper;

    @GetMapping("/video/{videoId}")

    public Video getVideoByID(@PathVariable int videoId) {
        return videoMapper.findById(videoId);
    }
    @GetMapping("/col/77")
    public String  getVideoColumnByID(){
        return "ssss";
    }
    @GetMapping("/col/{videoColId}")
    public VideoColumn getVideoColumnByID(@PathVariable("videoColId") int videoColId){
            return videoColumnMapper.findVideoColumnById(videoColId);
    }

    @GetMapping("/col/{videoColId}/videos")
    public VideoGroup getVideosByCol(@PathVariable("videoColId") int videoColId){

        VideoColumn videoColumn = videoColumnMapper.findVideoColumnById(videoColId);


        List<Video> videoList = videoMapper.findBySourceAndDataId(videoColumn.getSource(),videoColumn.getDataId());

        System.out.println(videoList);
        return new VideoGroup(videoColumn,videoList);
    }






}
