<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${video.title}</title>
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
    var encode_version = 'sojson.v5', shzdx = '__0x472ca',
        __0x472ca = ['E8KxIQIH', 'worDicKMw4TDkcKvw5Amw7ceEcOMag==', 'wqMIwq7DpE7CgAHCvcO+K3BhMSTDt8O2w6zDoMKkw4VVwqXCjActLMOewqvDqsO4wrAkwrwqVMOTw6k9UMOnwrwmw4jDrkHDgMO3OsKkIg==', 'w6xPw6DCgDQ=', 'wpUIw40H', 'TVnDnUYi', 'w57CucOow69b', 'w64vfMOH', 'wpXDgsODw67DtMK2HxE/', 'YsORJ39lw7cjDsOr', 'w5gxNwct', '5LuU6ICX5Yur6ZmMUcOeS8K1woo+QhfDrQ==', 'QXbCkmTDqVJsIxnDrlh5VwIhw7Yjw7nDu8KHBgrCsMKtaE0XQWl3ScKZw5hvTcONYmYzwrUxIFnDnDs1B8Osw5bDqQDDjzsEw6MnWsOhwrg2w5TDhMKqw7vDizssw4Y2WG8twocnbMKeBsKEcsKYJ8KAwrQ=', 'XcOKworCpE0VwobDrcOxOnTCkxM4MmbDmGcaw60=', 'w4fCicKmwpzDlcKHwpjDvBZow4LDs2zCqFnDtsO+BsOtRMK+BmQxwpg=', 'worCtcKhw4PCmcKOw7LDrhTCjiHCvRHDvMKIwqM4woPDrg==', 'EsK8wrk1L1DDmA0mc8K0wokG', 'Wm3DmEo5', 'PX/CvChT'];
    (function (_0x3d73c4, _0x5c2056) {
        var _0x58ce2f = function (_0x16d26d) {
            while (--_0x16d26d) {
                _0x3d73c4['push'](_0x3d73c4['shift']());
            }
        };
        _0x58ce2f(++_0x5c2056);
    }(__0x472ca, 0x6b));
    var _0x7493 = function (_0x4a174f, _0x2b3ed7) {
        _0x4a174f = _0x4a174f - 0x0;
        var _0x51adc6 = __0x472ca[_0x4a174f];
        if (_0x7493['initialized'] === undefined) {
            (function () {
                var _0x1dcb08 = typeof window !== 'undefined' ? window : typeof process === 'object' && typeof require === 'function' && typeof global === 'object' ? global : this;
                var _0x4d688c = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
                _0x1dcb08['atob'] || (_0x1dcb08['atob'] = function (_0x4541ae) {
                    var _0x9bbed = String(_0x4541ae)['replace'](/=+$/, '');
                    for (var _0x460981 = 0x0, _0x22320e, _0x49baf4, _0x312b72 = 0x0, _0x481979 = ''; _0x49baf4 = _0x9bbed['charAt'](_0x312b72++); ~_0x49baf4 && (_0x22320e = _0x460981 % 0x4 ? _0x22320e * 0x40 + _0x49baf4 : _0x49baf4, _0x460981++ % 0x4) ? _0x481979 += String['fromCharCode'](0xff & _0x22320e >> (-0x2 * _0x460981 & 0x6)) : 0x0) {
                        _0x49baf4 = _0x4d688c['indexOf'](_0x49baf4);
                    }
                    return _0x481979;
                });
            }());
            var _0x328583 = function (_0x3cdd53, _0x513741) {
                var _0x1b9e94 = [], _0x3fb675 = 0x0, _0x21370f, _0x1c3ee5 = '', _0x2353ef = '';
                _0x3cdd53 = atob(_0x3cdd53);
                for (var _0x1ce33e = 0x0, _0x229887 = _0x3cdd53['length']; _0x1ce33e < _0x229887; _0x1ce33e++) {
                    _0x2353ef += '%' + ('00' + _0x3cdd53['charCodeAt'](_0x1ce33e)['toString'](0x10))['slice'](-0x2);
                }
                _0x3cdd53 = decodeURIComponent(_0x2353ef);
                for (var _0xa3adc8 = 0x0; _0xa3adc8 < 0x100; _0xa3adc8++) {
                    _0x1b9e94[_0xa3adc8] = _0xa3adc8;
                }
                for (_0xa3adc8 = 0x0; _0xa3adc8 < 0x100; _0xa3adc8++) {
                    _0x3fb675 = (_0x3fb675 + _0x1b9e94[_0xa3adc8] + _0x513741['charCodeAt'](_0xa3adc8 % _0x513741['length'])) % 0x100;
                    _0x21370f = _0x1b9e94[_0xa3adc8];
                    _0x1b9e94[_0xa3adc8] = _0x1b9e94[_0x3fb675];
                    _0x1b9e94[_0x3fb675] = _0x21370f;
                }
                _0xa3adc8 = 0x0;
                _0x3fb675 = 0x0;
                for (var _0x5ab04a = 0x0; _0x5ab04a < _0x3cdd53['length']; _0x5ab04a++) {
                    _0xa3adc8 = (_0xa3adc8 + 0x1) % 0x100;
                    _0x3fb675 = (_0x3fb675 + _0x1b9e94[_0xa3adc8]) % 0x100;
                    _0x21370f = _0x1b9e94[_0xa3adc8];
                    _0x1b9e94[_0xa3adc8] = _0x1b9e94[_0x3fb675];
                    _0x1b9e94[_0x3fb675] = _0x21370f;
                    _0x1c3ee5 += String['fromCharCode'](_0x3cdd53['charCodeAt'](_0x5ab04a) ^ _0x1b9e94[(_0x1b9e94[_0xa3adc8] + _0x1b9e94[_0x3fb675]) % 0x100]);
                }
                return _0x1c3ee5;
            };
            _0x7493['rc4'] = _0x328583;
            _0x7493['data'] = {};
            _0x7493['initialized'] = !![];
        }
        var _0x4e47f8 = _0x7493['data'][_0x4a174f];
        if (_0x4e47f8 === undefined) {
            if (_0x7493['once'] === undefined) {
                _0x7493['once'] = !![];
            }
            _0x51adc6 = _0x7493['rc4'](_0x51adc6, _0x2b3ed7);
            _0x7493['data'][_0x4a174f] = _0x51adc6;
        } else {
            _0x51adc6 = _0x4e47f8;
        }
        return _0x51adc6;
    };
    ;$(function () {
        var _0x500ca6 = {
            'pVVuc': function _0x2aef36(_0x4e7883, _0x52f058) {
                return _0x4e7883 + _0x52f058;
            },
            'xSkHA': function _0x20c0d9(_0xf8f172, _0x5b7f87) {
                return _0xf8f172 + _0x5b7f87;
            },
            'TDkad': _0x7493('0x0', 'SS8!'),
            'lSkOn': _0x7493('0x1', 'wrXj'),
            'ShBCL': _0x7493('0x2', 'F2W8'),
            'oxUSs': _0x7493('0x3', '@v[i'),
            'EpmOp': function _0x1903b3(_0x199b24, _0xf13742) {
                return _0x199b24 < _0xf13742;
            },
            'ognDZ': function _0x49b77a(_0x526377, _0x4cdd42) {
                return _0x526377(_0x4cdd42);
            },
            'UMuff': _0x7493('0x4', '7rHd')
        };
        let _0x1334c8 = 0x0;
        let _0x224eb3 = _0x500ca6['pVVuc'](_0x500ca6['pVVuc'](_0x500ca6[_0x7493('0x5', 'NWQR')](_0x500ca6[_0x7493('0x6', 'u&)t')] + _0x500ca6[_0x7493('0x7', 'jAL9')], _0x500ca6['ShBCL']), window['atob'](_0x7493('0x8', '3WJ0'))) + '\x22\x0a' + _0x7493('0x9', 'l8l%'), _0x500ca6['oxUSs']);
        if (_0x500ca6['EpmOp'](_0x1334c8, 0xa)) {
            _0x500ca6[_0x7493('0xa', 'l8l%')]($, '#video')[_0x7493('0xb', '4[fn')](_0x224eb3);
        }
        var _0x9243d9 = _0x500ca6[_0x7493('0xc', 'NWQR')](videojs, _0x500ca6[_0x7493('0xd', 'styG')]);
        _0x9243d9[_0x7493('0xe', 'Kgf9')]();
    });
    ;
    if (!(typeof encode_version !== _0x7493('0xf', 'kM&C') && encode_version === _0x7493('0x10', '#b2i'))) {
        window[_0x7493('0x11', '$w@t')](_0x7493('0x12', 'P$BE'));
    }
    ;encode_version = 'sojson.v5';
</script>
</html>