package com.patrick.hvideo.model;

import java.util.List;

public class VideoGroup {
    private VideoColumn videoColum;
    private List<Video> videoList;

    public VideoGroup() {
    }

    public VideoGroup(VideoColumn videoColum, List<Video> videoList) {
        this.videoColum = videoColum;
        this.videoList = videoList;
    }

    public VideoColumn getVideoColum() {
        return videoColum;
    }

    public void setVideoColum(VideoColumn videoColum) {
        this.videoColum = videoColum;
    }

    public List<Video> getVideoList() {
        return videoList;
    }

    public void setVideoList(List<Video> videoList) {
        this.videoList = videoList;
    }
}


