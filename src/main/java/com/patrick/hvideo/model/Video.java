package com.patrick.hvideo.model;

import java.io.Serializable;

public class Video implements Serializable {

    private int videoId;
    private  String title;
    private  String link;
    private String source;
    private String orderName;
    private int videoOrder;
    private String dataId;

    public int getVideoId() {
        return videoId;
    }

    public void setVideoId(int videoId) {
        this.videoId = videoId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public int getVideoOrder() {
        return videoOrder;
    }

    public void setVideoOrder(int videoOrder) {
        this.videoOrder = videoOrder;
    }

    public String getDataId() {
        return dataId;
    }

    public void setDataId(String dataId) {
        this.dataId = dataId;
    }

    @Override
    public String toString() {
        return "Video{" +
                "videoId=" + videoId +
                ", title='" + title + '\'' +
                ", link='" + link + '\'' +
                ", source='" + source + '\'' +
                ", orderName='" + orderName + '\'' +
                ", videoOrder=" + videoOrder +
                ", dataId='" + dataId + '\'' +
                '}';
    }
}
