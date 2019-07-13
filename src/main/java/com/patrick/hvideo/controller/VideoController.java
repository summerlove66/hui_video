package com.patrick.hvideo.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.patrick.hvideo.mapper.VideoColumnMapper;
import com.patrick.hvideo.mapper.VideoMapper;
import com.patrick.hvideo.mapper.VideoUpDateInfoMapper;
import com.patrick.hvideo.model.Video;
import com.patrick.hvideo.model.VideoColumn;
import com.patrick.hvideo.model.VideoUpdateInfo;
import com.patrick.hvideo.utils.EncryptUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@Controller
public class VideoController {
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private VideoColumnMapper videoColumnMapper;
    @Resource
    private VideoUpDateInfoMapper videoUpDateInfoMapper;

    @Value("${page.size}")
    private int pageSize;

    @PostMapping("/video/{videoId}")
    @ResponseBody
    private Video getVideoById(@PathVariable("videoId") int videoId, @RequestParam("code") String code) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String myCode = EncryptUtils.getCode(videoId + "");
        System.out.println(code + "+++" + myCode);
        if (!myCode.equals(code)) {
            return null;
        }

        return videoMapper.findById(videoId);

    }


    @GetMapping("/video/{colId}/{numericId:[\\d]+}")

    public String getVideoByID(@PathVariable("colId") int colId, Model model) {


        VideoColumn videoColumn = videoColumnMapper.findVideoColumnById(colId);
        List<Video> videoList = videoMapper.findBySourceAndDataId(videoColumn.getSource(), videoColumn.getDataId());
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
                                       VideoColumn videoColumn, HttpServletRequest request) {

        System.out.println("VIDEOCOLUMN " + videoColumn);
        List<VideoColumn> videoColumnList;

        PageHelper.startPage(pageNum, pageSize);
        videoColumnList = videoColumnMapper.findVideoColByRange(videoColumn);
        model.addAttribute("videoColumnList", videoColumnList);
        if (request.getParameterMap().entrySet().isEmpty()) {
            Integer updateData = videoUpDateInfoMapper.getUpdateData();
            System.out.println(updateData + "========================================");
            model.addAttribute("updateData", updateData);
        }
        return "album";

    }

    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public String errorReq(Exception exception) {

        exception.printStackTrace();
        return "你访问的东西不存在";
    }


}
