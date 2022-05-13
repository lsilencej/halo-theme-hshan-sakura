<#include "module/macro.ftl">
<@layout title="${settings.tags_title!'标签列表'} | ${blog_title!}">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if settings.tag_patternimg?? && settings.tag_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.tag_patternimg!}" alt="${settings.tags_title!'标签列表'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.tags_title!'标签'}</h1>
                        </div>
                    </div>
                </header>

                <div id="post-list" class="post-list inner" style="padding-bottom: 90px">
                    <div class="tagcloud tag-page card-box">
                        <h1 style="padding-top: 0; padding-bottom: 0; margin-bottom: 0">标签云</h2>
                        <div class="tag-chips" id="tag-chips">
                            <@tagTag method="list">
                                <#list tags as tag>
                                <a href="${tag.fullPath!}" title="${tag.name!}: ${tag.postCount!}">
                                    <span class="chip chip-default">${tag.name!}
                                        <span class="tag-length">&nbsp;${tag.postCount!}</span>
                                    </span>
                                </a>
                                </#list>
                            </@tagTag>
                        </div>
                        <style>

                            #rotate {  
                                height: 400px;  
                                width: 350px;  
                                position: relative;  
                                margin: 10px auto;  
                            }

                            @media only screen and (max-width: 400px) {
                                #rotate {  
                                    height: 400px;  
                                    width: 70px;  
                                    position: relative;  
                                    margin: 10px auto;  
                                }
                            }
                            
                            #rotate a {  
                                position: absolute;  
                                top: 0px;  
                                left: 0px;  
                                color: '#999';  
                                font-weight: bold;  
                                padding: 3px 6px;  
                                font-size: 14px;  
                            }
                        
                            #rotate a:hover {  
                                border: 1px solid #999;  
                                background: #fff;  
                                border-radius: 5px;  
                            } 
                        </style>
                        <@tagTag method="list">
                            <#if tags?? && tags?size gt 0>
                                <div id="rotate">
                                    <#list tags as tag>
                                        <a data-ajax href="${tag.fullPath!}" title="${tag.name}">${tag.name}</a>
                                    </#list>
                                </div>
                            </#if>
                        </@tagTag>
                    </div>
                </div>
            </div>
        </main>
    </div>
</@layout>

<script>
   var tags = $(".tags-item").children(".tag-item");
   for (var i = tags.length - 1; i >= 0; i--) {
       var r = Math.floor(Math.random() * 75 + 130);
       var g = Math.floor(Math.random() * 75 + 100);
       var b = Math.floor(Math.random() * 75 + 80);
       tags[i].style.background = "rgb(" + r + "," + g + "," + b + ")";
   }
                     
   var randnum = function (n) {
       return Math.round(Math.random() * n)
   }, hexify = function (n) {
       return ("0" + parseInt(n).toString(16)).slice(-2)
   }, randex = function () {
       return "#" + hexify(randnum(255)) + hexify(randnum(255)) + hexify(randnum(255))
   }, blender = function () {
       return Math.round(Math.random()) ? "radial-gradient(circle at " + randnum(100) + "% " + randnum(100) + "%, " + randex() + ", " + randex() + ")" : "linear-gradient(" + randnum(360) + "deg, " + randex() + ", " + randex() + ")"
   };

   $(".flex-book-item").each(function () {
       var n = blender();
       $(this).css("background", n);
   })
</script>