<#include "module/macro.ftl">
<@layout title="${settings.categories_title!'分类列表'} | ${blog_title!}">
    <div id="page" class="site">
        <main class="site-main"  id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if settings.categories_patternimg?? && settings.categories_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.categories_patternimg!}" alt="${settings.categories_title!'分类列表'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.categories_title!'分类列表'}</h1>
                        </div>
                    </div>
                </header>

                <div id="post-list" class="post-list inner">
                    <div class="tagcloud tag-page card-box">
                        <h1 style="padding-top: 0;">分类</h2>
                        <p class="categories-tag">
                            <@categoryTag method="list">
                                <#if categories?? && categories?size gt 0>
                                    <#list categories as category>
                                        <a href="${category.fullPath!}" class="button" data-ajax>
                                            ${category.name}&nbsp;${category.postCount!}
                                            <span aria-hidden="true">
                                                <span class="line left"></span>
                                                <span class="line top"></span>
                                                <span class="line right"></span>
                                                <span class="line bottom"></span>
                                            </span>
                                        </a>
                                    </#list>
                                </#if>
                            </@categoryTag>
                        </p>
                    </div>
                </div>

                <div id="post-list" class="post-list inner" style="padding-bottom: 90px;">
                    <div class="tagcloud tag-page card-box">
                        <h1 style="padding-top: 0; padding-bottom: 0; margin-bottom: 0">文章分类雷达图</h2>
                        <style>
                            #category-echarts {
                                width: 100%;
                                height: 360px;
                            }

                            #category-echarts div{
                                margin: auto;
                            }
                        </style>
                        <div class="tag-contents category-show">
                            <div class="card">
                                <div id="category-echarts" data-ajax></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</@layout>
