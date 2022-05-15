<#include "module/macro.ftl">
<@layout title="${settings.links_title!'友链'} | ${blog_title!}">
    <div id="page" class="site ">
        <main class="site-main"  id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if settings.links_patternimg?? && settings.links_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.links_patternimg!}" alt="${settings.links_title!'友链'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.links_title!'友链'}</h1>
                        </div>
                    </div>
                </header>
                <div class="sheet-content" style="padding: 1px 40px;">
                    <div class="links">
                        <@linkTag method="listTeams">
                            <#list teams as item>
                                <#if item.team?? && item.team!=''>
                                    <h3 class="link-title" style="width: 100%; margin: 10px;">
                                        <span class="fake-title">${((item.team!'')?length>0)?string((item.team!''), '小伙伴们')}</span>
                                    </h3>
                                </#if>
                                <ul class="link-items">
                                    <#list item.links?sort_by('priority')?reverse as link>
                                        <li class="link-item">
                                            <a class="link-item-inner" href="${link.url!}" title="${link.name!}" target="_blank">
                                                <img class="lazyload" src="${link.logo!}">
                                                <span class="sitename">${link.name!}</span>
                                                <div class="linkdes">${link.description!}</div>
                                            </a>
                                        </li>
                                    </#list>
                                </ul>
                            </#list>
                        </@linkTag>
                    </div>

                    <div class="note info no-icon">
                        <b style="font-size: 1.4rem;">友链申请格式：</b><br /><br /> 
                        - 博客名称: lsilencej の Blog<br />
                        - 博客地址: <a href="https://blog.lsilencej.top/">https://blog.lsilencej.top/</a><br />
                        - 博客头像: <a href="https://blog.lsilencej.top/avatar">https://blog.lsilencej.top/avatar</a><br />
                        - 博客描述: 修身养性，少欲随缘<br />
                    </div>
                    <#include "module/comment.ftl">
                    <#if is_post??>
                        <@comment target=post type="post" />
                    <#elseif is_sheet??>
                        <@comment target=sheet type="sheet" />
                    </#if>
                </div>              
            </div>
        </main>
    </div>
</@layout>
