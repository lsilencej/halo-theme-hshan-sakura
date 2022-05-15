<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content home-content">
                <!-- 封面 -->
                <header class="bg-cover hero">
                    <#if settings.home_cover?? && settings.home_cover!=''>
                        <div class="cover-bg">
                            <img src="${settings.home_cover!}" alt="">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <!-- 封面内容 -->
                        <div class="inner">
                            <h2 class="hero-title" style="font-family: Segoe Script Bold">${settings.home_title!options.blog_title!}</h2>
                            <p class="hero-text" id="slogan" style="font-size: 20px">${settings.home_description!}</p>
                            <#if settings.enabled_index_cover_height!true>
                                <a href="#postContainer"  class="arrow-down" data-scroll><span
                                            class="screen-reader-text">Scroll Down</span></a>
                            </#if>
                        </div>
                    </div>
                    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5278166679397841" crossorigin="anonymous"></script>
                </header>
                <div id="postContainer">
                    <#include "module/post-list-style/sakura-card.ftl">
                </div>
                <nav>
                    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="5">
                        <#include "module/pagination.ftl">
                    </@paginationTag>
                </nav>
            </div>
        </main>
    </div>
</@layout>