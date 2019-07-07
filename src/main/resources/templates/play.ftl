<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
    <link href="https://vjs.zencdn.net/7.5.4/video-js.css" rel="stylesheet">
    <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
    <script src="https://vjs.zencdn.net/7.5.4/video.js"></script>
    <script src="/statics/videojs-http-streaming.min.js"></script>
</head>
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
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>


    <div class="row" style="height: 50px">


    </div>
    <div class="row">
        <video-js id=example-video width=960 height=540 class="vjs-default-skin" controls>
            <source
                    src="${video.link}"
                    type="application/x-mpegURL">
        </video-js>

    </div>
    <h4>${video.title}</h4>
    <span class="text-muted">${video.orderName}</span><span class="text-muted">ssss:xxxx</span><span class="text-muted">ssss:xxxx</span>


        <h4>播放列表</h4>
        <ul class="list-inline" >
            <li class="list-inline-item border"><a href="" class="p-2 ">22</a></li>
            <li class="list-inline-item border"><a href="" class="p-2">2</a></li>
            <li class="list-inline-item border"><a href="" class="p-2">333</a></li>

        </ul>




</div>

</body>
<script>
    var player = videojs('example-video');
    player.play();
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</html>