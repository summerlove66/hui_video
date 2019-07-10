package com.patrick.hvideo.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.patrick.hvideo.mapper.VideoColumnMapper;
import com.patrick.hvideo.mapper.VideoMapper;
import com.patrick.hvideo.model.Video;
import com.patrick.hvideo.model.VideoColumn;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Base64;
import java.util.List;

@Controller
public class VideoController {
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private VideoColumnMapper videoColumnMapper;

    @Value("${page.size}")
    private int pageSize;

    @GetMapping("/video/{videoId}")

    public String getVideoByID(@PathVariable int videoId, Model model) {
        Video video = videoMapper.findById(videoId);
        video.setLink(Base64.getUrlEncoder().encodeToString(video.getLink().getBytes()));
        VideoColumn videoColumn = videoColumnMapper.findVideoColBYSourceAndDataId(video.getSource(), video.getDataId());

        List<Video> videoList = videoMapper.findBySourceAndDataId(video.getSource(), video.getDataId());
        model.addAttribute("video", video);
        model.addAttribute("videoList", videoList);
        model.addAttribute("videoCol", videoColumn);
        return "play";
    }


    @GetMapping("/col/{videoColId}")

    public String getVideoColByID(@PathVariable int videoColId, Model model) {
        VideoColumn videoColumn = videoColumnMapper.findVideoColumnById(videoColId);

        System.out.println("VideoCOL" + videoColumn);
        List<Video> videoList = videoMapper.findBySourceAndDataId(videoColumn.getSource(), videoColumn.getDataId());
        model.addAttribute("video", videoList.get(0));
        model.addAttribute("videoList", videoList);
        model.addAttribute("videoCol", videoColumn);
        return "col";
    }


    @GetMapping("cols")

    public String getVideoColumnByPage(@RequestParam(name = "pn", defaultValue = "1", required = false) int pageNum, Model model,
                                       VideoColumn videoColumn) {

        System.out.println("VIDEOCOLUMN " + videoColumn);
        List<VideoColumn> videoColumnList;

        Page<?> page = PageHelper.startPage(pageNum, pageSize);
        videoColumnList = videoColumnMapper.findVideoColByRange(videoColumn);
        model.addAttribute("videoColumnList", videoColumnList);
//        model.addAttribute("pn" ,page.getPageNum());

        return "album";

    }

    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public String errorReq(Exception exception) {

        exception.printStackTrace();
        return "你访问的东西不存在";
    }


}
