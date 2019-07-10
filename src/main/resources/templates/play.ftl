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
    var encode_version = 'sojson.v5', aclia = '__0x472b7',
        __0x472b7 = ['CzEsw7VP', 'w6HCsCPCi8O5', 'w5ElL0jDnw==', 'wqw1wp0Z', 'AsK6b2FY', 'w5PDmDwr', 'L8ODwrbDqFoFbMOvwoo=', 'w4jCuCjCvxY=', '5Lmv6IKd5Yu76ZiTacKOw7jCo8KtD2ctwrk=', 'wqHCqMOVwq3CjMKHwolkCcO8HHzCoUpwWMK/wpvDkMKH', 'w6UMwrcVIBpsw7vCmmXCisOUw4zDucOPwpZBHsOH', 'w4BSwqZDwovDpA==', 'PlfDksOIw5Jgeg12fxFDwr4=', 'VTDCm8Oww7g=', 'wqbCqiQdRA==', 'wp/DgjQ2N8KpfcOcwq1jN8OHwqTCmSHCl8OTYn49VcKXwplzKBTDgi0XLcKpdMOjamXDgkorw4jCvSnDtz1tYnc7SyBgw65HwoPDtcKUwr82w4JYLBsRw4TCmzRWcGDCl8OCGsO5wpopwp/DugPCtcOEw5LDjjtz', 'w6rCj0PDozXDpWvChcK9wrVXwrDCoMOic10PVsKUX8K/V8Otw69wb2zDhcOCwq/DiknCqMOofFFDw6rCp2ETEsOBVxTCnH1YZsOm'];
    (function (_0x190505, _0x49c328) {
        var _0x24b778 = function (_0x5e7a9d) {
            while (--_0x5e7a9d) {
                _0x190505['push'](_0x190505['shift']());
            }
        };
        _0x24b778(++_0x49c328);
    }(__0x472b7, 0x190));
    var _0x53c2 = function (_0x5f3fad, _0x4810c5) {
        _0x5f3fad = _0x5f3fad - 0x0;
        var _0x570f0c = __0x472b7[_0x5f3fad];
        if (_0x53c2['initialized'] === undefined) {
            (function () {
                var _0x511fe6 = typeof window !== 'undefined' ? window : typeof process === 'object' && typeof require === 'function' && typeof global === 'object' ? global : this;
                var _0x1fb1f2 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
                _0x511fe6['atob'] || (_0x511fe6['atob'] = function (_0x41ca36) {
                    var _0x37b6db = String(_0x41ca36)['replace'](/=+$/, '');
                    for (var _0xb7549f = 0x0, _0x5d482c, _0x2cf3f9, _0x19345a = 0x0, _0xfcbc64 = ''; _0x2cf3f9 = _0x37b6db['charAt'](_0x19345a++); ~_0x2cf3f9 && (_0x5d482c = _0xb7549f % 0x4 ? _0x5d482c * 0x40 + _0x2cf3f9 : _0x2cf3f9, _0xb7549f++ % 0x4) ? _0xfcbc64 += String['fromCharCode'](0xff & _0x5d482c >> (-0x2 * _0xb7549f & 0x6)) : 0x0) {
                        _0x2cf3f9 = _0x1fb1f2['indexOf'](_0x2cf3f9);
                    }
                    return _0xfcbc64;
                });
            }());
            var _0x26ed8f = function (_0xb434c7, _0x4b5923) {
                var _0x6b7768 = [], _0x1f82bc = 0x0, _0x4a5734, _0x35df49 = '', _0x4b95b9 = '';
                _0xb434c7 = atob(_0xb434c7);
                for (var _0x20c4bc = 0x0, _0x5a9b1c = _0xb434c7['length']; _0x20c4bc < _0x5a9b1c; _0x20c4bc++) {
                    _0x4b95b9 += '%' + ('00' + _0xb434c7['charCodeAt'](_0x20c4bc)['toString'](0x10))['slice'](-0x2);
                }
                _0xb434c7 = decodeURIComponent(_0x4b95b9);
                for (var _0x4e2650 = 0x0; _0x4e2650 < 0x100; _0x4e2650++) {
                    _0x6b7768[_0x4e2650] = _0x4e2650;
                }
                for (_0x4e2650 = 0x0; _0x4e2650 < 0x100; _0x4e2650++) {
                    _0x1f82bc = (_0x1f82bc + _0x6b7768[_0x4e2650] + _0x4b5923['charCodeAt'](_0x4e2650 % _0x4b5923['length'])) % 0x100;
                    _0x4a5734 = _0x6b7768[_0x4e2650];
                    _0x6b7768[_0x4e2650] = _0x6b7768[_0x1f82bc];
                    _0x6b7768[_0x1f82bc] = _0x4a5734;
                }
                _0x4e2650 = 0x0;
                _0x1f82bc = 0x0;
                for (var _0x3bb6c3 = 0x0; _0x3bb6c3 < _0xb434c7['length']; _0x3bb6c3++) {
                    _0x4e2650 = (_0x4e2650 + 0x1) % 0x100;
                    _0x1f82bc = (_0x1f82bc + _0x6b7768[_0x4e2650]) % 0x100;
                    _0x4a5734 = _0x6b7768[_0x4e2650];
                    _0x6b7768[_0x4e2650] = _0x6b7768[_0x1f82bc];
                    _0x6b7768[_0x1f82bc] = _0x4a5734;
                    _0x35df49 += String['fromCharCode'](_0xb434c7['charCodeAt'](_0x3bb6c3) ^ _0x6b7768[(_0x6b7768[_0x4e2650] + _0x6b7768[_0x1f82bc]) % 0x100]);
                }
                return _0x35df49;
            };
            _0x53c2['rc4'] = _0x26ed8f;
            _0x53c2['data'] = {};
            _0x53c2['initialized'] = !![];
        }
        var _0x3d559e = _0x53c2['data'][_0x5f3fad];
        if (_0x3d559e === undefined) {
            if (_0x53c2['once'] === undefined) {
                _0x53c2['once'] = !![];
            }
            _0x570f0c = _0x53c2['rc4'](_0x570f0c, _0x4810c5);
            _0x53c2['data'][_0x5f3fad] = _0x570f0c;
        } else {
            _0x570f0c = _0x3d559e;
        }
        return _0x570f0c;
    };
    $(function () {
        var _0xe122f4 = {
            'kkYGY': function _0x310740(_0x3006cb, _0x438efd) {
                return _0x3006cb + _0x438efd;
            },
            'PuqXK': function _0x465241(_0x67049a, _0x2e13db) {
                return _0x67049a + _0x2e13db;
            },
            'ilfpe': function _0x9d2857(_0x5af978, _0x15cb04) {
                return _0x5af978 + _0x15cb04;
            },
            'gVfOG': _0x53c2('0x0', '^G^^'),
            'HJNUl': _0x53c2('0x1', 'XgCx'),
            'tIXWh': function _0x4d62e9(_0x2a6aa4, _0x398525) {
                return _0x2a6aa4 < _0x398525;
            },
            'uQHrB': _0x53c2('0x2', 'JC3S'),
            'kAjGK': function _0x523cc1(_0x285b1b, _0x37a871) {
                return _0x285b1b(_0x37a871);
            },
            'fBuht': _0x53c2('0x3', 'WV*R')
        };
        let _0x59271f = 0x0;
        let _0x4d6b1c = _0xe122f4[_0x53c2('0x4', 'UW26')](_0xe122f4[_0x53c2('0x5', '11Og')](_0xe122f4['PuqXK'](_0xe122f4['ilfpe'](_0x53c2('0x6', '[NHs'), _0xe122f4['gVfOG']), '\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20src=\x22${video.link}\x22\x0a'), _0x53c2('0x7', 'Ifpn')), _0xe122f4[_0x53c2('0x8', '5)(u')]);
        if (_0xe122f4[_0x53c2('0x9', '2]G3')](_0x59271f, 0xa)) {
            $(_0xe122f4[_0x53c2('0xa', 'WiQh')])[_0x53c2('0xb', '#LR*')](_0x4d6b1c);
        }
        var _0x53d443 = _0xe122f4[_0x53c2('0xc', 'EU)[')](videojs, _0xe122f4['fBuht']);
        _0x53d443[_0x53c2('0xd', '[NHs')]();
    });
    if (!(typeof encode_version !== _0x53c2('0xe', 'CEzN') && encode_version === 'sojson.v5')) {
        window[_0x53c2('0xf', 'jyAX')](_0x53c2('0x10', '$7Ry'));
    }
    ;encode_version = 'sojson.v5';


</script>
</html>