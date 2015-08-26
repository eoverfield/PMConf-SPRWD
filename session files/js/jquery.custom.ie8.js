var pmHTML = document.getElementsByTagName("html")[0];
pmIEAddClass(pmHTML, "ie8");
pmie8ResizeJS();

//sharepoint
//jQuery(document).ready(function (a) {ExecuteOrDelayUntilScriptLoaded(function () {SP.UI.Workspace.add_resized(pmie8ResizeJS)}, "init.js");});
//non-sharepoint
jQuery(document).ready(function ($) {$(window).resize(function() {pmie8ResizeJS();});});
function pmIEGetWidth(a) {return parseInt(a.style.width)}
function pmIEGetWindowWidth() {var a = 0;if (!window.innerWidth) {if (!(document.documentElement.clientWidth == 0)) {a = document.documentElement.clientWidth;} else {a = document.body.clientWidth;}} else {a = window.innerWidth;}return a;}
function pmIEAddClass(b, a) {if (pmIEClassExists(b, a)) {return;} else {b.className = b.className + " " + a;}}
function pmIERemoveClass(c, a) {var b = new RegExp("(\\s*|^)" + a + "(\\s*|$)");c.className = c.className.replace(b, " ");}
function pmIEClassExists(c, b) {var a = new RegExp("(\\s|^)" + b + "(\\s|$)");if (a.test(c.className) === true) {return true;} else {return false;}}

function pmie8ResizeJS() {
    workspaceWidth = pmIEGetWindowWidth();
    pmIERemoveClass(pmHTML, "ie8-xs");pmIERemoveClass(pmHTML, "ie8-sm");pmIERemoveClass(pmHTML, "ie8-md");pmIERemoveClass(pmHTML, "ie8-lg");
    var cursize = 'ie8-xs';
    if (workspaceWidth >= 480) {
        pmIEAddClass(pmHTML, "ie8-480")
    } else {
        pmIERemoveClass(pmHTML, "ie8-480")
    } if (workspaceWidth >= 600) {
        pmIEAddClass(pmHTML, "ie8-600")
    } else {
        pmIERemoveClass(pmHTML, "ie8-600")
    } if (workspaceWidth >= 768) {
      cursize = 'ie8-sm';
        pmIEAddClass(pmHTML, "ie8-768");
    } else {
        pmIERemoveClass(pmHTML, "ie8-768")
    } if (workspaceWidth >= 992) {
      cursize = 'ie8-md';
        pmIEAddClass(pmHTML, "ie8-992");
    } else {
        pmIERemoveClass(pmHTML, "ie8-992")
    } if (workspaceWidth >= 1200) {
      cursize = 'ie8-lg';
        pmIEAddClass(pmHTML, "ie8-1200");
    } else {
        pmIERemoveClass(pmHTML, "ie8-1200")
    }
    pmIEAddClass(pmHTML, cursize);
};