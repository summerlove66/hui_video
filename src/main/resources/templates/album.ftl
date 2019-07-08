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
                    <h5 class="card-title"><a href="#"></a></h5>
                    <p class="card-text">${videoCol.info}</p>
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


            <li class="list-inline-item px-2 border">
                <button class="btn btn-outline-secondary"></button>
            </li>
            <li class="list-inline-item px-2 border">
                <button class="btn btn-outline-secondary"></button>
            </li>
            <li class="list-inline-item px-2 border">
                <button class="btn btn-outline-secondary"></button>
            </li>
            <li class="list-inline-item px-2 border">
                <button class="btn btn-outline-secondary">下一页</button>
            </li>
            <li class="list-inline-item">
                <div class="input-group mb-3" style="width: 8rem">
                    <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button">跳转</button>
                    </div>
                </div>


            </li>
            <li class="list-inline-item px-2 border">6</li>


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
    let urlInfo = parseUrl(curUrl);

    function goTopage() {


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
                        window.location.href = curUrl.replace(urlInfo[chooseName], "");
                    } else if (curUrl.indexOf(chooseName) === -1) {
                        window.location.href = curUrl + chooseName + "=" + name;
                    } else {

                        window.location.href = curUrl.replace(urlInfo[chooseName], "area=" + name);

                    }

                }
            );
            //search
            $("#search").click
            (function () {

                    if ($("form input").val().length > 0) {
                        window.location.href = "/?key=" + $("form input").val();
                    }
                }
            );

            //page
            let pn = parseInt(urlInfo.page);

            if (pn < 2) {
                for (let i = 0; i < 3; i++) {
                    if (i === pn) {
                        $(`#page li:eq(i)`).addClass("bg-primary")
                    }
                    $("#page li button").html("<a href='" + curUrl.replace("pn=" + pn, "pn=" + i) + " '>"
                        + i + 1 + " </a>")
                }

            } else {
                for (let i = 0; i < 3; i++) {
                    if (i === 1) {
                        $(`#page li:eq(i-1)`).addClass("bg-primary")
                    }
                    $("#page li button").html("<a href='" + curUrl.replace("pn=" + pn, "pn=" + pn + i - 1) + " '>"
                        + pn + " </a>");
                }

            }
        }
    )
</script>
</html>