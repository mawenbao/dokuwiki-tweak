// for sidebar scrool
(function(){
    var oDiv=document.getElementById("p-toc");
    var H=0,iE6;
    var Y=oDiv;
    while(Y){H+=Y.offsetTop;Y=Y.offsetParent};
    iE6=window.ActiveXObject&&!window.XMLHttpRequest;
    if(!iE6){
        window.onscroll=function()
{
    var s=document.body.scrollTop||document.documentElement.scrollTop;
    if(s>H){oDiv.className="portal sidebar-fixed";if(iE6){oDiv.style.top=(s-H)+"px";}}
    else{oDiv.className="portal sidebar-absolute";}    
};
}
})();
