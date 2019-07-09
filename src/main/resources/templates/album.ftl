<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ALBUM</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
</head>

<style>

</style>

<body>

<div class="container">


    <nav class="navbar navbar-expand-lg  navbar-light bg-light">
        <a class="display-1 navbar-brand" href="#">H-VIDEO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link text-success font-weight-bold" href="#">首页<span
                                class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">福利</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">电视剧</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">电影</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link " href="#">动漫</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">综艺</a>
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

            <span style="font-size: 1rem; color: red">
                <i class="fas fa-heartbeat"><a class="ml-2" href="#">福利</a></i>

            </span>
        <i>今日更新10</i>


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
            <li class="list-inline-item p-2">俄罗斯</li>
            <li class="list-inline-item p-2">法国</li>
            <li class="list-inline-item p-2">其他</li>

        </ul>


    </div>


    <div class="row">

        <#list videoColumnList as videoCol >
            <div class="col-xl-2 col-md-3 col-sm-4 card ">
                <a href="#" style="position: relative">
                    <img class="card-img-top" src="${videoCol.pic}" alt=""/>
                    <span class="text-right text-muted" style="position:absolute;bottom: 0px">HD</span>
                </a>

                <div class="card-body">
                    <h5 class="card-title"><a href="#">${videoCol.title}</a></h5>
                    <span class="text-muted text-left d-inline-block text-truncate"
                          style="max-width: 150px; font-size:0.8em">${videoCol.info}</span>

                </div>
            </div>

        </#list>


    </div>

</div>

<div class="row pt-5">

    <div class="col-md-4 offset-4">
        <ul id="page" class="list-inline">
            <li class="list-inline-item ">
                <button class="btn btn-outline-secondary">首页</button>
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
                <div class="input-group mb-3" style="width: 8rem">
                    <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    <div class="input-group-append">
                        <button id="skip-page" class="btn btn-outline-secondary" type="button">跳转</button>
                    </div>
                </div>


            </li>


        </ul>

    </div>


</div>


</body>


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

    function pageSetup() {
        let preLink, nextLink, firstLink;
        firstLink = urlInfo.url.replace("pn=" + pn, "pn=1");
        nextLink = urlInfo.url.replace("pn=" + pn, "pn=" + (pn + 1));

        if (pn > 1) {
            preLink = urlInfo.url.replace("pn=" + pn, "pn=" + (pn - 1));

            $("#page li:eq(1) button a").attr("href", preLink);
        }

        if(urlInfo.title){
            $("form input") .val(urlInfo.title);
        }
        $("#page li:eq(0) button a").attr("href", firstLink);
        $("#page li:eq(2) button a").html(pn);
        $("#page li:eq(3) button a").attr("href", nextLink);


    }


    function parseUrl(ur) {
        let urlInfo = {};
        infoArray = ur.split(new RegExp("\\?|&")).slice(1);
        for (let i in  infoArray) {
            let kv = infoArray[i].split("=");

            console.log(kv);
            urlInfo[kv[0]] = kv[1];

        }
        if (!urlInfo.pn) {
            urlInfo.pn = 1;

            if (isNoChooesd ) {
                urlInfo['url'] = ur + "&pn=1";
            } else {
                urlInfo['url'] = ur;
            }
        } else {
            urlInfo['url'] = ur;
        }


        return urlInfo;
    }


    $(
        function () {


            // if( $("#area li")


            $("#choose ul li").click(function () {
                    $(this).addClass("bg-primary");

                    let name = $(this).text().trim();
                    console.log(name);
                    let chooseName = $(this).parent().attr("id");

                    if (name === "不限") {

                            window.location.href = curUrl.replace( new RegExp("&?" + chooseName + "=" + urlInfo[chooseName]), "");

                    } else if (curUrl.indexOf(chooseName) === -1) {
                        if (isNoChooesd) {
                            window.location.href = curUrl + "?" + chooseName + "=" + name;
                        } else {
                            window.location.href = curUrl + "&" + chooseName + "=" + name;
                        }
                    } else {

                        window.location.href = curUrl.replace(chooseName + "=" + urlInfo[chooseName], chooseName+"=" + name);

                    }

                }
            );
            //search
            $("#search").click
            (function () {
                    let key = $("form input").val();
                    if (key.length > 0) {
                        window.location.href = "/cols?title=" + key
                    }else{
                        window.location.href = "/cols?page=1";
                }
                }
            );

            //skip
            $("#skip-page").click(
                function () {
                    window.location.href = urlInfo.url.replace("pn=" + pn, "pn=" + $("#page li input").last().val());
                }
            )


        }
    )
</script>
</html>