<footer class="site-footer" id="siteFooter">
    <#if settings.Aplayer?? && settings.Aplayer != ''>
        <meting-js
                server="netease"
                type="playlist"
                fixed="true"
                order="random"
                id="${settings.Aplayer}">
        </meting-js>
    </#if>

    <div class="inner">
        <#--  <div style="margin-top: 10px; margin-bottom: 20px;">
            <a href="#page" class="arrow-up" data-scroll><span class="screen-reader-text">Back to the top</span></a>
        </div>  -->
        <#-- 社交信息 begin -->
        <div class="offsite-links">
            <#if settings.sina??>
                <a href="${settings.sina!}" class="circle" target="_blank" rel="noopener">
                    <#include "icon/weibo.ftl">
                </a>
            </#if>
            <#if settings.github??>
                <a href="${settings.github!}" class="circle" target="_blank" rel="noopener" title="Github">
                    <#include "icon/github.ftl">
                </a>
            </#if>
            <#if settings.coolapk??>
                <a href="${settings.coolapk!}" class="circle" target="_blank" rel="noopener" title="酷安">
                    <#include "icon/coolapk.ftl">
                </a>
            </#if>
            <#if settings.qq??>
                <a href="//wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" class="circle" target="_blank" rel="noopener" title="QQ Chat">
                    <#include "icon/qq.ftl">
                </a>
            </#if>
            <#if settings.telegram??>
                <a href="https://t.me/${settings.telegram!}" class="circle" target="_blank" rel="noopener" title="Telegram Chat">
                    <#include "icon/telegram.ftl">
                </a>
            </#if>
            <#if settings.twitter??>
                <a href="${settings.twitter!}" class="circle" target="_blank" rel="noopener" title="Twitter">
                    <#include "icon/twitter.ftl">
                </a>
            </#if>
            <#if settings.zhihu??>
                <a href="${settings.zhihu!}" class="circle" target="_blank" rel="noopener" title="知乎">
                    <#include "icon/zhihu.ftl">
                </a>
            </#if>
            <#if settings.mail??>
                <a href="mailto:${settings.mail!}" class="circle" target="_blank" rel="noopener" title="邮箱">
                    <#include "icon/mail.ftl">
                </a>
            </#if>
             <#if settings.rss!true>
                <a href="${atom_url!}" class="circle" target="_blank" rel="noopener" title="RSS">
                    <#include "icon/rss.ftl">
                </a>
            </#if>
        </div>

        <#-- 社交信息 end -->

        <div class="site-info">
            <@global.footer />
            <p>
                <a id="rainbow" href=''>🌈 获取中...</a><br />
                <a href="http://beian.miit.gov.cn" target="_blank">${settings.Icp!}</a><br />   
                <span style="display: inline-block; background-image: url(${theme_base!}/assets/images/beian.png); background-repeat: no-repeat; background-size: contain; padding-left: 20px;">
                    <a href="http://www.beian.gov.cn" target="_blank">${settings.PublicSecurityRecord!}</a>
                </span><br /> 
                Copyright &copy; 2018-${.now?string('yyyy')}
                <i class="rotating" style="display: inline-block;">
                    <#include "icon/sakura.ftl">
                </i>
                <a href="${blog_url!}">${blog_title!}</a> •
                <a href="https://icp.gov.moe/?keyword=20220922" target="_blank">萌ICP备20220922号</a>
            </p>
        </div>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" href="http://halo.run" target="_blank" title="由 Halo 强力驱动">
        <span class="badge-subject pr-8 mr-1">Powered</span>
        <span class="badge-value bg-blue">Halo</span>
        </a>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" href="https://github.com/halo-dev/halo-theme-hshan" target="_blank" title="本站由 Hshan 和 Sakura 主题定制">
        <span class="badge-subject pr-8 mr-1">Themes</span>
        <span class="badge-value bg-red">Hshan && Sakura</span>
        </a>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" href="https://www.upyun.com/?utm_source=lianmeng&utm_medium=referral" target="_blank" title="又拍云提供 CDN 加速 / 云存储">
        <span class="badge-subject pr-8 mr-1">Storage</span>
        <span class="badge-value bg-brightgreen">又拍云</span>
        </a>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" href="https://cloud.tencent.com/" target="_blank" title="本站运行于腾讯云轻量服务器">
        <span class="badge-subject pr-8 mr-1">Host</span>
        <span class="badge-value bg-brightgreen">腾讯云</span>
        </a>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" title="本站访客量">
        <span class="badge-subject pr-8 mr-1">访客</span>
        <span class="badge-value bg-orange" id="busuanzi_value_site_uv"></span>
        </a>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" title="本站访问量">
        <span class="badge-subject pr-8 mr-1">访问</span>
        <span class="badge-value bg-orange" id="busuanzi_value_site_pv"></span>
        </a>
    </div>
    <div class="github-badge">
        <a style="color: #fff" rel="license" title="本站运行时间">
        <span class="badge-subject pr-8 mr-1">运行</span>
        <span class="badge-value bg-blueviolet" id="span_dt_dt"></span>
        </a>
    </div>
</footer>
<#include "moon-menu.ftl" />
<#include "search-box.ftl"/>
