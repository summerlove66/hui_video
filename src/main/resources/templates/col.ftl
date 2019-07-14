<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${videoCol.title}</title>
    <link rel="stylesheet" href="/statics/css/bootstrap-4.0.0.min.css">
    <link rel="stylesheet" href="/statics/css/font-awesome-5.9.0.min.css">
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
                    <a class="nav-link font-weight-bold" href="/cols">首页</a>
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

                <li class="nav-item text-weight-bold">
                    <a class="nav-link font-weight-bold " href="/cols?videoType=福利">福利</a>
                </li>

            </ul>
            <form action="/cols?" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" name="search" placeholder="片名/演员" aria-label="Search">
                <button id="search" type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>
            </form>

        </div>
    </nav>

    <div class="row" style="height: 50px">


    </div>

    <div class="row">
        <div class="col-md-4">
            <img src="${videoCol.pic}" alt="${videoCol.title !"未知"}">
        </div>
    </div>
    <br>
    <div class="col-md-8">
        <h3>${videoCol.title !"未知"}</h3>
        <ul>
            <li><span class="text-muted">主演:</span></li>
            <li><span class="text-muted">导演:</span></li>
            <li><span class="text-muted">类型:</span> ${videoCol.contType !"未知" } <span
                        class="text-muted">地区: </span>${videoCol.area !"未知"}<span
                        class="text-muted">年份:</span> ${videoCol.year?c !"未知" }</li>
            <li><span class="text-muted">简介:</span>
                <p>

                    ${videoCol.info !"未知"}
                </p></li>
            <li>
                <a class="p-2 bg-primary text-light font-weight-bold rounded"
                   href="/video/${videoCol.id ?c}/${videoList[0].videoId ?c}">播放</a>
            </li>
        </ul>

    </div>
    <br>
    <div class="row">
        <h4>播放列表</h4>
        <ul class="list-inline">
            <#list videoList as vd>
                <li class="list-inline-item border"><a href="/video/${videoCol.id?c}/${vd.videoId?c}"
                                                       class="badge badge-light p-2">${vd.orderName}</a></li>
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


</html>