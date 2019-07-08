package com.patrick.hvideo.model;

import java.util.List;

public class VideoPage {

    private int page;

    private List<VideoColumn> videoColumnList;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public List<VideoColumn> getVideoColumnList() {
        return videoColumnList;
    }

    public void setVideoColumnList(List<VideoColumn> videoColumnList) {
        this.videoColumnList = videoColumnList;
    }
}
