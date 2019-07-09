
function search() {
    window.location.href = urlInfo.url.replace("pn=" + pn, "pn=" + $("#page li input").last().val());
}

