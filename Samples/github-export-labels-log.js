// https://gist.github.com/MoOx/93c2853fee760f42d97f?permalink_comment_id=3627506#gistcomment-3627506

var labels = [];
function hex(x) {
    return ("0" + parseInt(x).toString(16)).slice(-2);
}
function rgba2hex(rgba) {
    rgba = rgba.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(,\s*\d+\.*\d+)?\)$/);
    return hex(rgba[1]) + hex(rgba[2]) + hex(rgba[3]);
}
[].slice.call(document.querySelectorAll(".js-label-link"))
    .forEach(function (element) {
        labels.push({
            name: element.textContent.trim(),
            description: element.getAttribute("title"),
            color: rgba2hex(window.getComputedStyle(element).getPropertyValue("background-color")),
        })
    })
console.log(JSON.stringify(labels, null, 2))