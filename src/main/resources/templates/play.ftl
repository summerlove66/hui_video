<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${video.title !"未知" }</title>
    <link rel="stylesheet" href="/statics/css/bootstrap-4.0.0.min.css">
    <link rel="stylesheet" href="/statics/css/font-awesome-5.9.0.min.css">
    <link href="https://vjs.zencdn.net/7.5.4/video-js.css" rel="stylesheet">
    <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
    <script src="https://vjs.zencdn.net/7.5.4/video.js"></script>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg  navbar-light bg-light">
        <a class="display-1 navbar-brand" href="/cols">HUIDO </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul id="videoType" class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link font-weight-bold" href="#">首页<span
                                class="sr-only">(current)</span></a>
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
        <video-js id=example-video width=960 height=540 class="vjs-default-skin" controls>
            <source
                    src="${video.link}"
                    type="application/x-mpegURL">
        </video-js>

    </div>
    <div>
        <h4>${video.title}</h4>
        <span class="text-muted">${video.orderName !"未知"}</span> &nbsp;<span
                class="text-muted">类型：${videoCol.contType !"未知" }</span>&nbsp;<span
                class="text-muted">地区: ${videoCol.area !"未知"}</span>&nbsp;<span
                class="text-muted ">年份: ${videoCol.year !"未知"}</span>

    </div>


    <div class="row">
        <br>
        <h4>播放列表</h4>
        <ul class="list-inline">
            <#list videoList as vd>
                <#if video.videoId == vd.videoId >
                    <li class="list-inline-item border"><a href="/video/${vd.videoId?c}"
                                                           class="badge badge-primary p-2">${vd.orderName !"未知"}</a>
                    </li>
                <#else>
                    <li class="list-inline-item border"><a href="/video/${vd.videoId?c}"
                                                           class="badge badge-light p-2 ">${vd.orderName !"未知"}</a></li>
                </#if>
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

<script src="/statics/js/jquery-3.2.1.slim.min.js"></script>
<script src="/statics/js/boostrap-4.0.0.min.js"></script>
<script src="/statics/js/popper-1.12.9.min.js"></script>
<script src="/statics/h_media/js/index.js"></script>

<script>
    function t6(e) {
        return e > 64 && e < 91 ? e - 65 : e > 96 && e < 123 ? e - 71 : e > 47 && e < 58 ? e + 4 : 43 === e ? 62 : 47 === e ? 63 : 0
    }

    function bArr(e, n) {
        for (var t, i, r = e.replace(/[^A-Za-z0-9\+\/]/g, ""), o = r.length, a = n ? Math.ceil((3 * o + 1 >>> 2) / n) * n : 3 * o + 1 >>> 2, l = new Uint8Array(a), c = 0, d = 0, s = 0; s < o; s++) if (i = 3 & s, c |= t6(r.charCodeAt(s)) << 18 - 6 * i, 3 === i || o - s == 1) {
            for (t = 0; t < 3 && d < a; t++, d++) l[d] = c >>> (16 >>> t & 24) & 255;
            c = 0
        }
        return l
    }

    function getLink() {
        return bArr("${video.link}").toLocaleString().split(",").map(e => String.fromCharCode(parseInt(e))).join("")
    }

    $(function () {
        let e = '<video-js id=example-video width=960 height=540 class="vjs-default-skin" controls>\n            <source\n                    src="' + getLink() + '"\n                    type="application/x-mpegURL">\n        </video-js>';
        $("#video").html(e), videojs("example-video").play()
    });
</script>
</html>