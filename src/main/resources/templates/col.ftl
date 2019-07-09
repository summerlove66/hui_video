<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>H视频</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
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
                    <a class="nav-link text-success font-weight-bold" href="/cols">首页<span
                                class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item text-weight-bold">
                    <a class="nav-link " href="/cols?videoType=福利">福利</a>
                </li>

                <li class="nav-item text-weight-bold">
                    <a class="nav-link " href="/cols?videoType=电影">电影</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="/cols?videoType=电视剧">电视剧</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link " href="/cols?videoType=动漫&pn=1">动漫</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="/cols?videoType=综艺&pn=1">综艺</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">

            </form>
            <button id="search" class="btn btn-outline-success my-2 my-sm-0">Search</button>
        </div>
    </nav>


    <div class="row" style="height: 50px">


    </div>

    <div class="row">
        <div class="col-md-4">
            <img src="${videoCol.pic}" alt="${videoCol.title}">
        </div>
    </div>
    <br>
    <div class="col-md-8">
        <h3>${videoCol.title}</h3>
        <ul>
            <li><span class="text-muted">主演:</span></li>
            <li><span class="text-muted">导演:</span></li>
            <li><span class="text-muted">类型:</span> ${videoCol.contType} <span
                        class="text-muted">地区: </span>${videoCol.area}<span
                        class="text-muted">年份:</span> ${videoCol.year}</li>
            <li><span class="text-muted">简介:</span>
                <p>

                    ${videoCol.info}
                </p></li>
            <li>
                <a class="p-2 bg-info rounded" href="/video/${video.videoId ?c}">播放</a>
            </li>
        </ul>

    </div>
    <br>
    <div class="row">
        <h4>播放列表</h4>
        <ul class="list-inline">
            <#list videoList as vd>
                <#if video.videoId == vd.videoId >
                    <li class="list-inline-item border"><a href="/video/${vd.videoId?c}"
                                                           class="badge badge-primary p-2">${vd.orderName}</a></li>
                </#if>
                <li class="list-inline-item border"><a href="/video/${vd.videoId?c}"
                                                       class="badge badge-light p-2 ml-2 ">${vd.orderName}</a></li>
            </#list>
        </ul>


    </div>

    <div class="row">


        <hr>
        <p class="text-secondary">
            免责声明:(HELE)合乐-最新电影更新网所有视频均来自互联网收集而来，版权归原创者所有，如果侵犯了你的权益，请通知我(HELE)合乐-最新电影更新网2193489531@maccms.com，我们会及时删除侵权内容，谢谢合作。


        </p>
        <p class="text-secondary ">
            Copyright © 2012-2018 www.helezaixian88.cn. All Rights Reserved.
        </p>


    </div>


</div>


</body>
<script src="/statics/js/index.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

<script>
    $(function () {
        $("#skip-page").click(
            search()
        );


        $(document).keypress(
            function (event) {

                keycode = (event.keyCode ? event.keyCode : event.which);
                if (keycode === 13) {
                    search();
                }


            }
        )


    })

</script>

</html>