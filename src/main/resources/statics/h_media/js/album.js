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

        if (isNoChooesd) {
            urlInfo['url'] = ur + "?pn=1";
        } else {
            urlInfo['url'] = ur + "&pn=1";
        }
    } else {
        urlInfo['url'] = ur;
    }
    return urlInfo;
}

function chooseUrl() {
    $(this).addClass("bg-primary");

    let name = $(this).text().trim();
    console.log(name);
    let chooseName = $(this).parent().attr("id");

    if (name === "不限") {

        window.location.href = curUrl.replace(new RegExp("&?" + chooseName + "=" + urlInfo[chooseName]), "");

    } else if (curUrl.indexOf(chooseName) === -1) {
        if (isNoChooesd) {
            window.location.href = curUrl + "?" + chooseName + "=" + name;
        } else {
            window.location.href = curUrl + "&" + chooseName + "=" + name;
        }
    } else {

        window.location.href = curUrl.replace(chooseName + "=" + urlInfo[chooseName], chooseName + "=" + name);

    }

}
function pageSetup() {
    let preLink, nextLink, firstLink;
    firstLink = urlInfo.url.replace("pn=" + pn, "pn=1");
    nextLink = urlInfo.url.replace("pn=" + pn, "pn=" + (pn + 1));

    if (pn > 1) {
        preLink = urlInfo.url.replace("pn=" + pn, "pn=" + (pn - 1));

        $("#page li:eq(1) button a").attr("href", preLink);

    }

    if (urlInfo.title) {
        $("form input").val(urlInfo.title);
    }
    $("#page li:eq(0) button a").attr("href", firstLink);
    $("#page li:eq(2) button a").html(pn);
    $("#page li:eq(3) button a").attr("href", nextLink);


}