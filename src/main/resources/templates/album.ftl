<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HUIDO</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
</head>

<style>

</style>

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

    <div id="choose" class="row">

        <ul id="contType" class="list-inline">
            <li class="list-inline-item p-2"><span class="text-muted ">分类</span></li>
            <li class="list-inline-item p-2">不限</li>
            <li class="list-inline-item  p-2 ">动作</li>
            <li class="list-inline-item p-2">喜剧</li>
            <li class="list-inline-item p-2">恐怖</li>
            <li class="list-inline-item p-2">爱情</li>
            <li class="list-inline-item p-2">剧情</li>
            <li class="list-inline-item p-2">纪录</li>
            <li class="list-inline-item p-2">伦理</li>
            <li class="list-inline-item p-2">战争</li>
        </ul>
        <ul id="area" class="list-inline">
            <li class="list-inline-item p-2"><span class="text-muted ">地区</span></li>
            <li class="list-inline-item  p-2 ">不限</li>
            <li class="list-inline-item p-2">大陆</li>
            <li class="list-inline-item p-2">台湾</li>
            <li class="list-inline-item p-2">香港</li>
            <li class="list-inline-item p-2">韩国</li>
            <li class="list-inline-item p-2">日本</li>
            <li class="list-inline-item p-2">美国</li>
            <li class="list-inline-item p-2">英国</li>
            <li class="list-inline-item p-2">法国</li>
            <li class="list-inline-item p-2">西班牙</li>
            <li class="list-inline-item p-2">加拿大</li>

        </ul>


    </div>


    <div class="row">

        <#list videoColumnList as videoCol >
            <div class="col-xl-2 col-md-3 col-sm-4 ">
                <a href="/col/${videoCol.id?c}" style="position: relative">
                    <img class="card-img-top" src="${videoCol.pic}" alt=""/>
                    <#--                    <span class="text-right text-muted" style="position:absolute;bottom: 0px">HD</span>-->
                </a>

                <div class="card-body">
                    <h5 class="card-title"><a href="/col/${videoCol.id?c}">${videoCol.title}</a></h5>
                    <span class="text-muted text-left d-inline-block text-truncate"
                          style="max-width: 150px; font-size:0.8em">${videoCol.info}</span>

                </div>
            </div>

        </#list>


    </div>

    <div class="row pt-5">

        <div class="col-md-6 mx-auto">
            <ul id="page" class="list-inline">
                <li class="list-inline-item ">
                    <button class="btn btn-outline-secondary"><a>首页</a></button>
                </li>
                <li class="list-inline-item ">
                    <button class="btn btn-outline-secondary"><a>上一页</a></button>
                </li>
                <li class="list-inline-item">
                    <button class="btn btn-outline-secondary"><a></a></button>
                </li>

                <li class="list-inline-item">
                    <button class="btn btn-outline-secondary"><a>下一页</a></button>
                </li>
                <li class="list-inline-item">
                    <div class="input-group" style="width: 6rem">
                        <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                        <div class="input-group-append">
                            <button id="skip-page" class="btn btn-outline-secondary" type="button">跳转</button>
                        </div>
                    </div>


                </li>


            </ul>

        </div>


    </div>
    <div class="row">


        <hr>
        <p class="text-secondary">
            免责声明:HUIDO电影网 所有视频均来自互联网收集而来，版权归原创者所有，如侵犯了你的权益，请通知我 coderslash@gmail,com，我们会及时删除侵权内容，谢谢合作。
        </p>
        <p class="text-secondary ">
            Copyright © 2012-2018 www.huido.com/cols. All Rights Reserved.
        </p>


    </div>

</div>


</body>

<script src="/statics/js/album.js"></script>
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
    let curUrl = decodeURIComponent(window.location.href);
    let isNoChooesd = curUrl.indexOf("?") === -1;
    let urlInfo = parseUrl(curUrl);
    let pn = parseInt(urlInfo.pn);

    pageSetup();

    function fx() {


        alert("hello world");
    }


    $(
        function () {
            // if( $("#area li")
            $("#navbarSupportedContent ul li").click(chooseUrl);

            $("#choose ul li").click(
                chooseUrl
            );
            skip
            $("#skip-page").click(
                function () {
                    window.location.href = urlInfo.url.replace("pn=" + pn, "pn=" + $("#page li input").last().val());
                }
            )

        }
    )
</script>
</html>