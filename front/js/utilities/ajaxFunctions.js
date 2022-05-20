function loadNewPage(pageName) {
    //document.getElementsByTagName("body")[0].innerHTML = load("/pages/" + pageName + ".html");
    file_get_contents("/front/pages/" + pageName + ".html", (function (text){
        document.getElementsByTagName("body")[0].innerHTML = text
    }));
    loadJavascriptFile("/js/front/" + pageName + ".js");
    
}

function file_get_contents(uri, callback) {
    fetch(uri).then(res => res.text()).then(text => callback(text));
}

var loadJavascriptFile = function (filePath) {
    var script = document.createElement("script")
    script.type = "text/javascript";
    script.src = filePath;
    document.getElementsByTagName("body")[0].appendChild(script);
}