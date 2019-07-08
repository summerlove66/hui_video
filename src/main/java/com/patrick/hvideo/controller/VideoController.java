package com.patrick.hvideo.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.patrick.hvideo.mapper.VideoColumnMapper;
import com.patrick.hvideo.mapper.VideoMapper;
import com.patrick.hvideo.model.Video;
import com.patrick.hvideo.model.VideoColumn;
import com.patrick.hvideo.model.VideoGroup;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class VideoController {
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private VideoColumnMapper videoColumnMapper;

    @Value("${page.size}")
    private  int pageSize;

    @GetMapping("/video/{videoId}")

    public String getVideoByID(@PathVariable int videoId , Model model) {
        Video video = videoMapper.findById(videoId);
        if(video == null){
            video = videoMapper.findById(30000);
        }
        VideoColumn videoColumn = videoColumnMapper.findVideoColBYSourceAndDataId(video.getSource(),video.getDataId());

        List<Video> videoList = videoMapper.findBySourceAndDataId(video.getSource(),video.getDataId());
        model.addAttribute("video",video);
        model.addAttribute("videoList" ,videoList);
        model.addAttribute("videoCol" ,videoColumn);
        return "play";
    }

    @ResponseBody
    @GetMapping("/col/{videoColId}")
    public VideoColumn getVideoColumnByID(@PathVariable("videoColId") int videoColId) {
        return videoColumnMapper.findVideoColumnById(videoColId);
    }

    @GetMapping("/videos/col/{videoColId}/")
    public VideoGroup getVideosByCol(@PathVariable("videoColId") int videoColId) {

        VideoColumn videoColumn = videoColumnMapper.findVideoColumnById(videoColId);


        List<Video> videoList = videoMapper.findBySourceAndDataId(videoColumn.getSource(), videoColumn.getDataId());

        System.out.println(videoList);
        return new VideoGroup(videoColumn, videoList);
    }

    @GetMapping("cols")

    public String getVideoColumnByPage(@RequestParam(name = "pn" ,defaultValue ="1" ,required = false) int pageNum  , Model model,
                                          VideoColumn videoColumn) {

        System.out.println("VIDEOCOLUMN " + videoColumn);
        List<VideoColumn> videoColumnList;

        Page<?> page = PageHelper.startPage(pageNum,pageSize);
        System.out.println(page.getTotal());
        videoColumnList = videoColumnMapper.findVideoColByRange(videoColumn);
        model.addAttribute("videoColumnList" ,videoColumnList);
        model.addAttribute("page" ,page.getPageNum());

        return "album";

    }






}
