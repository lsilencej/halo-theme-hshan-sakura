<aside class="sidebar side-bar-val" id="sidebar" style="overflow-y: auto !important;">
    <div class="inner">
        <div class="widget-area">
            <!-- 菜单 -->
            <nav class="site-navigation">
                <ul class="menu">
                    <@menuTag method="tree">
                        <#list menus?sort_by('priority') as menu>
                            <li class="menu-item nav-menu-item ">
                                <#if menu.children?? && menu.children?size gt 0>
                                    <a href="javascript:void(0)" data-ajax target="${menu.target!}" class="nav-menu-link" onfocus="this.blur();">${menu.name} <i class="fa fa-angle-down nav-menu-angle" aria-hidden="true"></i></a>
                                <#else>
                                    <a href="${menu.url!}" data-ajax target="${menu.target!}" onfocus="this.blur();">${menu.name}</a>
                                </#if>
                                <#if menu.children?? && menu.children?size gt 0>
                                    <ul class="nav-sub-menu" style="display: none;">
                                        <#list menu.children?sort_by('priority') as child>
                                            <li>
                                                <a href="${child.url!}" data-ajax target="${child.target!}"
                                                   onfocus="this.blur();">${child.name}</a>
                                            </li>
                                        </#list>
                                    </ul>
                                </#if>
                            </li>
                        </#list>
                    </@menuTag>
                    <#if settings.night_mode!true>
                        <li class="menu-item home nav-menu-item">
                            <i class="fa night-mode" id="nightModeSmall" aria-hidden="true"></i>
                        </li>
                    </#if>
                    <#if settings.top_search!true>
                        <li class="menu-item home nav-menu-item">
                            <i class="fa fa-search js-toggle-search iconsearch" aria-hidden="true"
                               style="font-size: 20px;"></i>
                        </li>
                    </#if>
                </ul>
            </nav>
        </div>
    </div>
</aside>

<header class="site-header" id="siteHeader">
    <div id="scrollMenu" class="scroll-menu header-inner">
        <div class="menu-items">
            <ul class="menu">
                <li>
                    <a href="${blog_url!}" data-ajax id="headerText"
                        style="margin-right: 0; display: inline-block; font-size: 24px; font-family: Comic Sans MS"
                        onfocus="this.blur();">${blog_title!}
                    </a>
                </li>
                <@menuTag method="tree">
                    <#list menus?sort_by('priority') as menu>
                        <li class="menu-scroll-item">
                            <#if menu.children?? && menu.children?size gt 0>
                                <span class="faa-parent animated-hover">
                                    <#if menu.icon?? && menu.icon?trim?length gt 0>
                                        <i class="${menu.icon}" aria-hidden="true"></i>
                                    </#if><a href="javascript:void(0)" data-ajax target="${menu.target!}" onfocus="this.blur();" style="font-size: 1.2rem">${menu.name}</a>
                                </span>
                            <#else>
                                <a <#if menu.url?? && menu.url?trim?length gt 0> href="${menu.url!}" data-ajax target="${menu.target!} onfocus="this.blur();" </#if>>
                                    <span class="faa-parent animated-hover" style="font-size: 1.2rem">
                                        <#if menu.icon?? && menu.icon?trim?length gt 0>
                                            <i class="${menu.icon}" aria-hidden="true"></i>
                                        </#if>${menu.name}
                                    </span>
                                </a>
                            </#if>
                            <#if menu.children?? && menu.children?size gt 0>
                                <ul class="sub-menu">
                                    <#list menu.children?sort_by('priority') as child>
                                        <li>
                                            <a href="${child.url!}" data-ajax target="${child.target!} onfocus="this.blur();">
                                                <span class="faa-parent animated-hover" style="font-size: 1.2rem">
                                                    <#if child.icon?? && child.icon?trim?length gt 1>
                                                        <i class="${child.icon}" aria-hidden="true"></i>
                                                    </#if>${child.name}
                                                </span>
                                            </a>
                                        <li>
                                    </#list>
                                </ul>
                            </#if>
                        </li>

                    </#list>
                </@menuTag>
            </ul>
        </div>
        <div class="other-ctl" id="headerCtrl">
            <#if settings.top_search!true>
                <i class="fa fa-search js-toggle-search iconsearch" aria-hidden="true"></i>
            </#if>
            <#if settings.night_mode!true>
                <i class="fa night-mode" id="nightMode" aria-hidden="true"></i>
            </#if>
        </div>
    </div>
    <a class="sidebar-toggle" id="sidebarToggle">
        <span class='icon-menu cross'>
            <span class='middle' aria-hidden="true"> </span>
         </span>
    </a>
</header>
