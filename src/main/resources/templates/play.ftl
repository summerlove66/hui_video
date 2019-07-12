<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${videoCol.title !"未知" }</title>
    <link rel="stylesheet" href="/statics/css/bootstrap-4.0.0.min.css">
    <link rel="stylesheet" href="/statics/css/font-awesome-5.9.0.min.css">
    <link href="https://vjs.zencdn.net/7.5.4/video-js.css" rel="stylesheet">
    <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
    <script src="https://vjs.zencdn.net/7.5.4/video.js"></script>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg  navbar-light bg-light">
        <a class="display-1 navbar-brand" href="/cols">HUIDO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul id="videoType" class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link font-weight-bold" href="/cols">首页</a>
                </li>
                <li class="nav-item text-weight-bold">
                    <a class="nav-link font-weight-bold " href="/cols?videoType=福利">福利</a>
                </li>

                <li class="nav-item text-weight-bold">
                    <a class="nav-link font-weight-bold" href="/cols?videoType=电影">电影</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link font-weight-bold " href="/cols?videoType=电视剧">电视剧</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link font-weight-bold " href="/cols?videoType=动漫&pn=1">动漫</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link font-weight-bold" href="/cols?videoType=综艺&pn=1">综艺</a>
                </li>
            </ul>
            <form action="/cols?" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" name="title" placeholder="Search" aria-label="Search">
                <button id="search" type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>
            </form>

        </div>
    </nav>

    <div class="row" style="height: 50px">


    </div>
    <div id="video" class="row">

    </div>
    <div id="info">
        <h4>${videoCol.title !"未知"}</h4>
        <span class="text-muted">未知</span> &nbsp;<span
                class="text-muted">类型：${videoCol.contType !"未知" }</span>&nbsp;<span
                class="text-muted">地区: ${videoCol.area !"未知"}</span>&nbsp;<span
                class="text-muted ">年份: ${videoCol.year !"未知"}</span>

    </div>


    <div class="row">
        <br>
        <h4>播放列表</h4>
        <ul id="playlist" class="list-inline">
            <#list videoList as vd>
                <li class="list-inline-item border"><a href="/video/${videoCol.id}/${vd.videoId?c}"
                                                       class="badge badge-light p-2 ">${vd.orderName !"未知"}</a></li>
            </#list>
        </ul>

    </div>

    <div class="row">

        <hr>
        <p class="text-secondary">
            免责声明:HUIDO电影网 所有视频均来自互联网收集而来，版权归原创者所有，如侵犯了你的权益，请通知我 coderslash@gmail.com，我们会及时删除侵权内容，谢谢合作。
        </p>
        <p class="text-secondary ">
            Copyright © 2018-2019 www.huido.com. All Rights Reserved.
        </p>


    </div>
</div>

</body>

<script src="/statics/js/jquery-3.4.1.min.js"></script>
<script src="/statics/js/boostrap-4.0.0.min.js"></script>
<script src="/statics/js/popper-1.12.9.min.js"></script>
<script src="/statics/h_media/js/play.js"></script>

<script>

    $(function () {
            let vid = window.location.pathname.split("/")[3];
            $.post("/video/" + vid,
                {"code": getPlayCode(vid)})
                .done(function (video) {

                    $("#info span").first().text(video.orderName);

                    $(`#playlist li:eq(video.videoOrder -1) a`).attr("class", "badge badge-primary p-2");
                    $("#video").html(" <video-js id=example-video width=960 height=540 class=\"vjs-default-skin\" controls>\n" +
                        "            <source\n" +
                        "                    src=\"  " + video.link +
                        "\"\n" +
                        "                    type=\"application/x-mpegURL\">\n" +
                        "        </video-js>");

                    videojs('example-video').play();
                });
        }
    )


</script>
</html>