<#include "module/macro.ftl">
<@layout title="${settings.achieve_title!'归档'} | ${blog_title!}">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content">

                <header class="bg-cover page-header">
                    <#if settings.archives_patternimg?? && settings.archives_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.archives_patternimg!}" alt="${settings.achieve_title!'归档'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.achieve_title!'归档'}</h1>
                        </div>
                    </div>
                </header>

                <@postTag method="archiveMonth">
                    <div id="post-list" class="post-list inner" style="padding-top: 60px;margin-bottom: 30px;">
                        <#assign year="">
                        <#list archives as archive>
                            <section class="archive-year">
                                <#if archive.year?c != year>
                                    <h1>${archive.year?c}</h1>
                                <#assign year="${archive.year?c}">
                                </#if>
                                <div>
                                    <header class="archive-hd"> 
                                        ${archive.month!} 月
                                    </header>
                                    <span class="">
                                        <#list archive.posts?sort_by("createTime")?reverse as post>
                                        <a class="archive-info" href="${post.fullPath!}">
                                            <span class="archive-date" style="line-height: inherit !important;">${post.createTime?string('MM-dd')}</span>
                                            <span class="archive-title" style="line-height: inherit !important; position: relative">${post.title!}</span>
                                        </a>
                                        </#list>
                                    </span>
                                </div>
                            </section>
                        </#list>
                    </div>
                </@postTag>
            </div>
        </main>
    </div>
</@layout>
