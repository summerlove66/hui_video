package com.patrick.hvideo.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.patrick.hvideo.mapper.VideoColumnMapper;
import com.patrick.hvideo.mapper.VideoMapper;
import com.patrick.hvideo.model.Video;
import com.patrick.hvideo.model.VideoColumn;
import com.patrick.hvideo.model.VideoGroup;
import com.patrick.hvideo.model.VideoPage;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RestController
public class VideoController {
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private VideoColumnMapper videoColumnMapper;

    @Value("${page.size}")
    private  int pageSize;

    @GetMapping("/video/{videoId}")

    public Video getVideoByID(@PathVariable int videoId) {
        return videoMapper.findById(videoId);
    }


    @GetMapping("/col/{videoColId}")
    public VideoColumn getVideoColumnByID(@PathVariable("videoColId") int videoColId) {
        return videoColumnMapper.findVideoColumnById(videoColId);
    }

    @GetMapping("/videos/col/{videoColId}/")
    public VideoGroup getVideosByCol(@PathVariable("videoColId") int videoColId) {

        VideoColumn videoColumn = videoColumnMapper.findVideoColumnById(videoColId);


        List<Video> videoList = videoMapper.findBySourceAndDataId(videoColumn.getSource(), videoColumn.getDataId());

//        System.out.println(videoList);
        return new VideoGroup(videoColumn, videoList);
    }

    @GetMapping("cols/page/{pageNum}")
    public VideoPage getVideoColumnByPage(@PathVariable("pageNum") int pageNum  ,
                                           VideoColumn videoColumn) {

        System.out.println("VIDEOCOLUMN " + videoColumn);
        List<VideoColumn> videoColumnList;

        Page<?> page = PageHelper.startPage(pageNum,pageSize);
        videoColumnList = videoColumnMapper.findVideoColByRange(videoColumn);
        VideoPage videoPage = new VideoPage();
        videoPage.setPage(page.getPageNum());
        videoPage.setVideoColumnList(videoColumnList);
        return videoPage;

    }






}
