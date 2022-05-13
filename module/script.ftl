<#include "mermaid.ftl">
<script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
<script src="${theme_base!}/assets/media/scripts/plugins.min.js?ver=202101022020"></script>
<script src="${theme_base!}/assets/media/scripts/main.min.js?ver=202101022020"></script>
<script src="//cdn.jsdelivr.net/npm/velocity-animate@1.5.2/velocity.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/velocity-animate@1.5.2/velocity.ui.min.js"></script>
<#if settings.auto_night_mode>
    <script src="//cdn.jsdelivr.net/gh/hshanx/halo-comment-normal@v1.0.0/dist/halo-comment.min.js"></script>
<#else>
    <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/hshanx/halo-comment-normal@v1.0.0/dist/halo-comment.min.js'}"></script>
</#if>

<#if settings.Aplayer?? && settings.Aplayer != ''>
    <script src="//cdn.jsdelivr.net/npm/aplayer@1.10.1/dist/APlayer.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/meting@2/dist/Meting.min.js"></script>
<#else>
    <script type="text/javascript">
        // Smooth scroll to anchors
        var scroll = new SmoothScroll('[data-scroll]', {
            speed: 300,
            updateURL: false,
        })
    </script>
</#if>

<#-- 暗夜模式 -->
<#if settings.auto_night_mode!true>
    <script type="text/javascript">
        var nightModeStartTime = ${settings.night_mode_start_time?default('18')};
        var nightModeEndTime = ${settings.night_mode_end_time?default('6')};
    </script>
    <script src="${theme_base!}/assets/media/scripts/night-mode.min.js?ver=202101022020"></script>
</#if>

<#if settings.visit_statistics!false>
    <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
</#if>

<#-- katex-->
<#if settings.enabled_mathjax!true>
    <script defer src="//cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js"></script>
    <script defer src="//cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js"
            onload="if (document.getElementById('post-content') ) {renderMathInElement(document.getElementById('post-content'),katex_config)}"></script>
</#if>

<#-- gallery  -->
<#--<script src="//cdn.jsdelivr.net/npm/lightgallery@1.6.8/dist/js/lightgallery.min.js"></script>-->
<script src="//cdn.jsdelivr.net/npm/justifiedGallery@3.7.0/dist/js/jquery.justifiedGallery.min.js"></script>
<!--图片预览插件-->
<script data-pjax-viewer src="//cdn.jsdelivr.net/npm/viewerjs@1.5.0/dist/viewer.min.js" onload="
if (document.getElementById('post-content')) {
     new Viewer(document.getElementById('post-content'), {
         toolbar: false,
     });
}"></script>
<script data-gallery src="${theme_base!}/assets/media/scripts/gallery.js"></script>

<script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@10.5.0/build/highlight.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/xzzai/static@master/js/highlight.lang.js"></script>
<script src="https://cdn.jsdelivr.net/npm/highlightjs-line-numbers.js@2.8.0/dist/highlightjs-line-numbers.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/js/social-share.min.js"></script>

<div class="qr-code-wrap" role="dialog">
    <div role="document" class="qr-code" style="transform-origin: 201px 294px;">
        <span class="closinglayer"><svg viewBox="64 64 896 896" focusable="false" class="" data-icon="close" width="1em"
                                        height="1em" fill="currentColor" aria-hidden="true"><path
                        d="M563.8 512l262.5-312.9c4.4-5.2.7-13.1-6.1-13.1h-79.8c-4.7 0-9.2 2.1-12.3 5.7L511.6 449.8 295.1 191.7c-3-3.6-7.5-5.7-12.3-5.7H203c-6.8 0-10.5 7.9-6.1 13.1L459.4 512 196.9 824.9A7.95 7.95 0 0 0 203 838h79.8c4.7 0 9.2-2.1 12.3-5.7l216.5-258.1 216.5 258.1c3 3.6 7.5 5.7 12.3 5.7h79.8c6.8 0 10.5-7.9 6.1-13.1L563.8 512z"></path></svg>
        </span>
        <div style="text-align: center;padding: 10px 0;">
            <#if settings.QR_code_zfb??>
                <img class="qr_code_zfb" src="${settings.QR_code_zfb!}"/>
            </#if>
            <#if settings.QR_code_wx??>
                <img class="qr_code_wx" src="${settings.QR_code_wx!}"/>
            </#if>
        </div>
        <#if settings.QR_code_zfb?? && settings.QR_code_wx??>
            <div class="switch-btn">
                <span class="zfb-btn">支付宝</span>
                <span class="wx-btn">微信</span>
            </div>
        </#if>
    </div>
</div>

<#--目录-->
<#if settings.post_toc!true>
    <script src="${theme_base!}/assets/media/scripts/tocbot.min.js"></script>
</#if>

<script type="application/javascript">
    var displayReadProgress = <#if (settings.open_read_progress)??>${settings.open_read_progress?c}<#else>true</#if>;
</script>
<script src="${theme_base!}/assets/media/scripts/post.min.js?ver=202101022022"></script>
<style>
    /* 阅读进度的进度条颜色 */
    #readProgress .read-progress-bar {
        background: ${settings.progress_color?default('#2474b5')} !important;
        height: 0.1875rem;
    }
</style>


<#if settings.TimeStatistics??>
    <script type="text/javascript">
        // 建站时间统计
        function show_date_time() {
            if ($("#span_dt_dt").length > 0) {
                window.setTimeout("show_date_time()", 1000);
                BirthDay = new Date("${settings.TimeStatistics!}");
                today = new Date();
                timeold = (today.getTime() - BirthDay.getTime());
                sectimeold = timeold / 1000;
                secondsold = Math.floor(sectimeold);
                msPerDay = 24 * 60 * 60 * 1000;
                e_daysold = timeold / msPerDay;
                daysold = Math.floor(e_daysold);
                e_hrsold = (e_daysold - daysold) * 24;
                hrsold = Math.floor(e_hrsold);
                e_minsold = (e_hrsold - hrsold) * 60;
                minsold = Math.floor((e_hrsold - hrsold) * 60);
                seconds = Math.floor((e_minsold - minsold) * 60);
                span_dt_dt.innerHTML = daysold + "天" + hrsold + "小时" + minsold + "分" + seconds + "秒";
            }
        }

        show_date_time();
    </script>
</#if>

<#if settings.Custom_js_foot??>
    <script type="text/javascript">
        ${settings.Custom_js_foot!}
    </script>
</#if>

<#if settings.Custom_js_foot_src??>
    ${settings.Custom_js_foot_src!}
</#if>

<#if settings.pjax_enabled!false>
    <script src="https://cdn.jsdelivr.net/npm/pjax@0.2.8/pjax.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.css">

    <script>
        var socialDisabled = '${settings.share_disabeld?default('')}';
        var pjax = new Pjax({
            elements: 'a[href]:not([href^="#"]):not([data-not-pjax]), form', // default is "a[href], form[action]"
            cacheBust: false,
            debug: false,
            selectors: [
                'title',
                '#page'
            ]
        });

        //在Pjax请求开始后触发
        document.addEventListener('pjax:send', function () {
            NProgress.start();
        });

        //在Pjax请求完成后触发
        document.addEventListener('pjax:complete', function (e) {
            NProgress.done();

            //增加 LinkCard 的 js 代码
            var LinkCards=document.getElementsByClassName('LinkCard');
            if(LinkCards.length != 0){
            var LinkCard=LinkCards[0];
            var link=LinkCard.href;
            var title=LinkCard.innerText;
            LinkCard.innerHTML="<style type=text/css>.LinkCard,.LinkCard:hover{text-decoration:none;border:none!important;color:inherit!important}.LinkCard{position:relative;display:block;margin:1em auto;width:390px;box-sizing:border-box;border-radius:12px;max-width:100%;overflow:hidden;color:inherit;text-decoration:none}.ztext{word-break:break-word;line-height:1.6}.LinkCard-backdrop{position:absolute;top:0;left:0;right:0;bottom:0;background-repeat:no-repeat;-webkit-filter:blur(20px);filter:blur(20px);background-size:cover;background-position:center}.LinkCard,.LinkCard:hover{text-decoration:none;border:none!important;color:inherit!important}.LinkCard-content{position:relative;display:flex;align-items:center;justify-content:space-between;padding:12px;border-radius:inherit;background-color:rgba(246,246,246,0.88)}.LinkCard-text{overflow:hidden}.LinkCard-title{display:-webkit-box;-webkit-line-clamp:2;overflow:hidden;text-overflow:ellipsis;max-height:calc(16px * 1.25 * 2);font-size:16px;font-weight:500;line-height:1.25;color:#1a1a1a}.LinkCard-meta{display:flex;margin-top:4px;font-size:14px;line-height:20px;color:#999;white-space:nowrap}.LinkCard-imageCell{margin-left:8px;border-radius:6px}.LinkCard-image{display:block;width:60px;height:auto;border-radius:inherit}</style><span class=LinkCard-backdrop style=background-image:url(https://zhstatic.zhihu.com/assets/zhihu/editor/zhihu-card-default.svg)></span><span class=LinkCard-content><span class=LinkCard-text><span class=LinkCard-title>"+title+"</span><span class=LinkCard-meta><span style=display:inline-flex;align-items:center>​<svg class="+"'Zi Zi--InsertLink'"+" fill=currentColor viewBox="+"'0 0 24 24'"+" width=17 height=17><path d="+"'M6.77 17.23c-.905-.904-.94-2.333-.08-3.193l3.059-3.06-1.192-1.19-3.059 3.058c-1.489 1.489-1.427 3.954.138 5.519s4.03 1.627 5.519.138l3.059-3.059-1.192-1.192-3.059 3.06c-.86.86-2.289.824-3.193-.08zm3.016-8.673l1.192 1.192 3.059-3.06c.86-.86 2.289-.824 3.193.08.905.905.94 2.334.08 3.194l-3.059 3.06 1.192 1.19 3.059-3.058c1.489-1.489 1.427-3.954-.138-5.519s-4.03-1.627-5.519-.138L9.786 8.557zm-1.023 6.68c.33.33.863.343 1.177.029l5.34-5.34c.314-.314.3-.846-.03-1.176-.33-.33-.862-.344-1.176-.03l-5.34 5.34c-.314.314-.3.846.03 1.177z'"+" fill-rule=evenodd></path></svg></span>"+link+"</span></span><span class=LinkCard-imageCell><img class=LinkCard-image alt=图标 src=https://site-1258928558.cos.ap-guangzhou.myqcloud.com/linkcard.png></span></span>";

            for (var i = LinkCards.length - 1; i >= 1; i--) {
                LinkCard=LinkCards[i];
                title=LinkCard.innerText;
                link=LinkCard.href;
                LinkCard.innerHTML="<span class=LinkCard-backdrop style=background-image:url(https://zhstatic.zhihu.com/assets/zhihu/editor/zhihu-card-default.svg)></span><span class=LinkCard-content><span class=LinkCard-text><span class=LinkCard-title>"+title+"</span><span class=LinkCard-meta><span style=display:inline-flex;align-items:center>​<svg class="+"'Zi Zi--InsertLink'"+" fill=currentColor viewBox="+"'0 0 24 24'"+" width=17 height=17><path d="+"'M6.77 17.23c-.905-.904-.94-2.333-.08-3.193l3.059-3.06-1.192-1.19-3.059 3.058c-1.489 1.489-1.427 3.954.138 5.519s4.03 1.627 5.519.138l3.059-3.059-1.192-1.192-3.059 3.06c-.86.86-2.289.824-3.193-.08zm3.016-8.673l1.192 1.192 3.059-3.06c.86-.86 2.289-.824 3.193.08.905.905.94 2.334.08 3.194l-3.059 3.06 1.192 1.19 3.059-3.058c1.489-1.489 1.427-3.954-.138-5.519s-4.03-1.627-5.519-.138L9.786 8.557zm-1.023 6.68c.33.33.863.343 1.177.029l5.34-5.34c.314-.314.3-.846-.03-1.176-.33-.33-.862-.344-1.176-.03l-5.34 5.34c-.314.314-.3.846.03 1.177z'"+" fill-rule=evenodd></path></svg></span>"+link+"</span></span><span class=LinkCard-imageCell><img class=LinkCard-image alt=图标 src=https://site-1258928558.cos.ap-guangzhou.myqcloud.com/linkcard.png></span></span>";
                }
            }

            // 加载相册
            if ($("#page").find('.photos-page').length > 0) {
                photo.loadGallery();
                // $('script[data-pjax-viewer]').each(function () {
                //     $(this).remove()
                // });
            }

            han.initLazyLoad();
            // 整个页面延迟加载
            han.lazyLoad();

            // card 延迟加载
            han.lazyLoadCardItem()

            //重载
            if (typeof _hmt !== 'undefined') {
                // support 百度统计
                _hmt.push(['_trackPageview', location.pathname + location.search]);
            }
            if (typeof ga !== 'undefined') {
                // support google analytics
                ga('send', 'pageview', location.pathname + location.search);
            }

            // 菜单高亮
            han.highlightMenu();

            // 小屏幕菜单隐藏
            han.makeMenuInvisible();

            //  关闭搜索框
            $(".search-popup").velocity("transition.expandOut", { duration: 300 });

            // 重新加载 评论
            $('script[data-pjax-comment]').each(function () {
                $(this).parent().append($(this).remove());
            });

            if ($("#page").find('.post-page').length > 0) {
                window.removeEventListener('scroll', post.tocScroll, false);
                // 赞赏
                post.appreciate();

                // 初始化toc
                post.initToc()

                // 删除文章第一个 <ul>
                post.removeFirstUL()

                // 目录事件
                post.scrollTocFixed();

                // 搞一个阅读进度，为了提高准确度，数据都要实时获取
                post.readProgress();

                // 代码块
                post.loadHighlight();

                // 按钮事件
                post.appreciateModel()

                // 分享
                post.toggleSocialShare()

                // 图片预览
                post.initViewer()

                // 目录悬浮时间
                post.tocHover();


                try {
                    post.shareIcon()

                    if (renderMathInElement && typeof renderMathInElement !== 'undefined') {
                        renderMathInElement(document.getElementById('post-content'), katex_config);
                    }

                    if (mermaid && typeof mermaid !== 'undefined') {
                        mermaid.initialize();
                    }
                } catch (e) {
                    console.log("error");
                }
                // 刷新
                han.refreshLazyLoad();
            } else {
                han.initLazyLoad()
            }

            if ($("#page").find('#category-echarts').length > 0) {
                initCategoryEcharts();
            }

            if ($("#page").find('#post-calendar').length > 0) {
                initArchiveCalendar();
            }

            if ($("#page").find('#rotate').length > 0) {
                initTagsCloud();
            }

            if ($("#page").find('#tag-chips').length > 0) {
                initChipStyle();
            }

        });


        document.addEventListener('pjax:end', function () {

        });

        //Pjax请求失败后触发，请求对象将作为一起传递event.options.request
        document.addEventListener('pjax:error', function () {
            NProgress.done();
            bar('系统出现问题，请手动刷新一次', '3000');
        });
    </script>
</#if>


<script type="text/javascript">
    console.clear();
    console.log("%c 有朋自远方来, 不亦说乎.", "background:#24272A; color:#ffffff", "");
    console.log("%c Github %c", "background:#24272A; color:#ffffff", "", "https://github.com/hshanx");
    console.log("%c 版本号: %c", "background:#24272A; color:#ffffff", "", "1.4.2");
</script>

<script>
    fetch('https://api.eatrice.top')
    .then(response => response.json())
    .then(data => {
        var rainbow = document.getElementById('rainbow');
        rainbow.innerHTML = data.Content;
        rainbow.href = "https://rainbow.eatrice.top/?ID=" + data.ID;
    })
    .catch(console.error)
</script>

<script>
    var moonMenuListener = function() {

        var contentHeight = $("#main").height() - window.innerHeight;
        if (contentHeight <= 0) return;
        var readHeight = window.pageYOffset - $("#main").offset().top;

        var percent = Math.round(readHeight / contentHeight * 100);
        if (percent > 100) percent = 100;

        if (!percent) {
            percent = 0;
            $('.moon-menu-text').css('display', 'none');
            $('.moon-dot').css('display', '');
        } else {
            $('.moon-menu-text').css('display', 'block');
            $('.moon-menu-text').html(percent + '%');
            $('.moon-dot').css('display', 'none');
        }

        var length = 196;
        $('.moon-menu-border').css('strokeDasharray', percent * length / 100 + ' ' + length);

    };

    $(window).on('load', function () {
        moonMenuListener();
    });

    $(window).on('scroll', function () {
        moonMenuListener();
    });

    $('.moon-menu-button').on('click', function () {
        $('.moon-menu-icon').toggleClass('active');
        $('.moon-menu-items').toggleClass('item-ani');
        $('.moon-menu-items').toggleClass('active');
        if ($('.moon-menu-items').hasClass('active')) {
            $('.moon-menu-item').css('opacity', '0.9');
            $('.moon-dot circle')[0].setAttribute("cx", "-0.8rem");
            $('.moon-dot circle')[0].setAttribute("cy", "0");
            $('.moon-dot circle')[2].setAttribute("cx", "0.8rem");
            $('.moon-dot circle')[2].setAttribute("cy", "0");
        } else {
            $('.moon-menu-item').css('opacity', '0');
            $('.moon-dot circle')[0].setAttribute("cx", "0");
            $('.moon-dot circle')[0].setAttribute("cy", "-0.8rem");
            $('.moon-dot circle')[2].setAttribute("cx", "0");
            $('.moon-dot circle')[2].setAttribute("cy", "0.8rem");
        }
    });

    function back2Top() {
        window.scroll({ top: 0, behavior: 'smooth'});
    }

    function back2Bottom() {
        window.scroll({ top: $("#main").height(), behavior: 'smooth' });
    }

    function toSearchBox() {
        openSearchPanel()
        $('.searchbox-input').focus()
        this.makeMenuInvisible()
    }

</script>

<script src="${theme_base!}/assets/media/scripts/echarts.min.js"></script>

<script type="text/javascript">
    var categoryRadar = {
        <@categoryTag method="list">
            <#list categories as category>
                '${category.name!}': '${category.postCount!}',
            </#list>
        </@categoryTag>
    };
</script>

<script>
    function initCategoryEcharts() {
        if (
        $("#category-echarts").length > 0 &&
        $("#category-echarts").children().length == 0
      ) {
        var values = Object.values(categoryRadar), keys = Object.keys(categoryRadar);
        // 这里向上取5的倍数，例如100则取100 101则取105]
        if (keys.length < 3) {
            $("#category-echarts").remove();
            return;
        }
        var maxNum =
          Math.ceil(Math.max.apply(Math, _toConsumableArray(values)) / 5) * 5;
        console.log("123");
        var categoryChart = echarts.init(
          document.getElementById("category-echarts")
        );
        console.log($('body').hasClass('night'));
        var option = {
          tooltip: {
            trigger: "item",
            textStyle: {
              align: "left",
            },
          },
          radar: [
            {
              indicator: (function () {
                var indicators = [];
                for (var i = 0; i < keys.length; i++) {
                  indicators.push({ text: keys[i], max: maxNum });
                }
                return indicators;
              })(),
              name: {
                textStyle: {
                  color: "#999"
                },
              },
              center: ["50%", "60%"],
              radius: "60%",
            },
          ],
          series: [
            {
              type: "radar",
              itemStyle: {
                color: "rgb(123,234,185)",
              },
              lineStyle: {
                color: "rgb(123,234,185)",
              },
              areaStyle: {
                color: "rgb(123,234,185)",
              },
              data: [
                {
                  value: values,
                  name: "文章分类数量",
                },
              ],
            },
          ],
        };
        categoryChart.setOption(option);
      }

        function _toConsumableArray(arr) {
            return (
                _arrayWithoutHoles(arr) ||
                _iterableToArray(arr) ||
                _unsupportedIterableToArray(arr) ||
                _nonIterableSpread()
            );
        };

        function _arrayWithoutHoles(arr) {
            if (Array.isArray(arr)) return _arrayLikeToArray(arr);
        };

        function _iterableToArray(iter) {
            if (typeof Symbol !== "undefined" && Symbol.iterator in Object(iter))
                return Array.from(iter);
        };

        function _unsupportedIterableToArray(o, minLen) {
            if (!o) return;
            if (typeof o === "string") return _arrayLikeToArray(o, minLen);
            var n = Object.prototype.toString.call(o).slice(8, -1);
            if (n === "Object" && o.constructor) n = o.constructor.name;
            if (n === "Map" || n === "Set") return Array.from(o);
            if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))
                return _arrayLikeToArray(o, minLen);
        };

        function _nonIterableSpread() {
            throw new TypeError(
                "Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."
            );
        };

        function _arrayLikeToArray(arr, len) {
            if (len == null || len > arr.length) len = arr.length;
            for (var i = 0, arr2 = new Array(len); i < len; i++) {
                arr2[i] = arr[i];
            }
            return arr2;
        };
    };

    initCategoryEcharts();
</script>

<script src="${theme_base!}/assets/media/scripts/moment.js"></script>
<script type="text/javascript">

    function initArchiveCalendar() {
        var calendarChart = echarts.init(document.getElementById('post-calendar'));

        // calculate range.
        var startDate = moment().subtract(1, 'years');
        var endDate = moment();
        var rangeArr = '["' + startDate.format('YYYY-MM-DD') + '", "' + endDate.format('YYYY-MM-DD') + '"]';

        rangeArr = JSON.parse(rangeArr);
        console.log(rangeArr);

        // post and count map.
        var dateMap = new Map();
        <@postTag method="archive" type="year">
            <#list archives as archive>
                <#list archive.posts?sort_by("createTime")?reverse as post>
                    var date = "${post.createTime?string('YYYY-MM-dd')?js_string}";
                    var count = dateMap.get(date);
                    dateMap.set(date, count == null || count == undefined ? 1 : count + 1);
                </#list>
            </#list>
        </@postTag>

        console.log(dateMap);

        // loop the data for the current year, generating the number of post per day
        var i = 0;
        var datePosts = '[';
        var dayTime = 3600 * 24 * 1000;
        for (var time = startDate; time <= endDate; time += dayTime) {
            var date = moment(time).format('YYYY-MM-DD');
            datePosts = (i === 0 ? datePosts + '["' : datePosts + ', ["') + date + '", '
                    + (dateMap.has(date) ? dateMap.get(date) : 0) + ']';
            i++;
        }
        datePosts += ']';

        datePosts = JSON.parse(datePosts);
        console.log(datePosts);

        var option = {
            title: {
                top: 0,
                text: '文章日历',
                left: 'center',
                textStyle: {
                    color: '#999'
                }
            },
            tooltip: {
                padding: 10,
                backgroundColor: '#555',
                borderColor: '#777',
                borderWidth: 1,
                formatter: function (obj) {
                    var value = obj.value;
                    return '<div style="font-size: 14px;">' + value[0] + '：' + value[1] + '</div>';
                }
            },
            legend: {
                textStyle: {
                    color: '#999'
                }
            },
            visualMap: {
                show: true,
                showLabel: true,
                categories: [0, 1, 2, 3, 4],
                calculable: true,
                inRange: {
                    symbol: 'rect',
                    color: ['#ebedf0', '#c6e48b', '#7bc96f', '#239a3b', '#196127'], 
                },
                itemWidth: 12,
                itemHeight: 12,
                orient: 'horizontal',
                left: 'center',
                bottom: 0, 
                textStyle: {
                    color: '#999'
                }
            },
            calendar: [{
                left: 'center',
                range: rangeArr,
                cellSize: [13, 13],
                splitLine: {
                    show: false
                },
                itemStyle: {
                    color: '#ebedf0',
                    borderColor: '#fff',
                    borderWidth: 2
                },
                yearLabel: {
                    show: false
                },
                monthLabel: {
                    nameMap: 'en',
                    fontSize: 11, 
                    color: '#bebebe'
                },
                dayLabel: {
                    formatter: '{start}  1st',
                    nameMap: 'cn',
                    fontSize: 11, 
                    color: '#bebebe'
                }
            }],
            series: [{
                type: 'heatmap',
                coordinateSystem: 'calendar',
                calendarIndex: 0,
                data: datePosts
            }]

        };

        calendarChart.setOption(option);
    }

    initArchiveCalendar();

</script>

<script type="text/javascript"> 

    function initTagsCloud() {
        var radius = 150;  
        var dtr = Math.PI/180;  
        var d = 300;  

        var mcList = [];  
        var active = false;  
        var lasta = 1;  
        var lastb = 1;  
        var distr = true;  
        var tspeed = 2;  
        var size = 250;  

        var mouseX = 0;  
        var mouseY = 0;  

        var howElliptical = 1;  

        var aA = null;  
        var oDiv = null;  

        var i = 0;  
        var oTag = null;  

        oDiv=document.getElementById('rotate');  
        aA=oDiv.getElementsByTagName('a');  

        for(i = 0; i < aA.length; i++) {  
            oTag={};  

            oTag.offsetWidth=aA[i].offsetWidth;  
            oTag.offsetHeight=aA[i].offsetHeight;  

            mcList.push(oTag);  
        }  

        sineCosine( 0,0,0 );  

        positionAll();  

        oDiv.onmouseover = function () {  
            active = true;  
        };  

        oDiv.onmouseout = function () {  
            active = false;  
        };  

        oDiv.onmousemove = function (ev) {  
            var oEvent = window.event || ev;  

            mouseX = oEvent.clientX - (oDiv.offsetLeft + oDiv.offsetWidth / 2);  
            mouseY = oEvent.clientY - (oDiv.offsetTop + oDiv.offsetHeight / 2);  

            mouseX /= 5;  
            mouseY /= 5;  
        };  

        setInterval(update, 30);  

        function update() {  
            var a;  
            var b;  

            if (active) {  
                a = (-Math.min(Math.max(-mouseY, -size ), size) / radius) * tspeed;  
                b = (Math.min(Math.max(-mouseX, -size ), size) / radius) * tspeed;  
            }  
            else {  
                a = lasta * 0.98;  
                b = lastb * 0.98;  
            }  

            lasta = a;  
            lastb = b;  

            if (Math.abs(a) <= 0.01 && Math.abs(b) <= 0.01) {  
                return;  
            }  

            var c = 0;  
            sineCosine(a,b,c);  
            for(var j = 0; j < mcList.length; j++) {  
                var rx1 = mcList[j].cx;  
                var ry1 = mcList[j].cy * ca + mcList[j].cz * (-sa);  
                var rz1 = mcList[j].cy * sa + mcList[j].cz * ca;  

                var rx2 = rx1 * cb + rz1 * sb;  
                var ry2 = ry1;  
                var rz2 = rx1 * (-sb) + rz1 * cb;  

                var rx3 = rx2 * cc + ry2 * (-sc);  
                var ry3 = rx2 * sc + ry2 * cc;  
                var rz3 = rz2;  

                mcList[j].cx = rx3;  
                mcList[j].cy = ry3;  
                mcList[j].cz = rz3;  

                per = d / (d + rz3);  

                mcList[j].x = (howElliptical * rx3 * per) - (howElliptical * 2);  
                mcList[j].y = ry3 * per;  
                mcList[j].scale = per;  
                mcList[j].alpha = per;  

                mcList[j].alpha = (mcList[j].alpha - 0.6) * (10 / 6);  
            }  

            doPosition();  
            depthSort();  
        }  

        function depthSort() {  
            var i = 0;  
            var aTmp = [];  

            for (i = 0; i < aA.length; i++) {  
                aTmp.push(aA[i]);  
            }  

            aTmp.sort (  
                function (vItem1, vItem2) {  
                    if(vItem1.cz > vItem2.cz) {  
                        return -1;  
                    }  
                    else if(vItem1.cz < vItem2.cz) {  
                        return 1;  
                    }  
                    else {  
                        return 0;  
                    }  
                }  
            );  

            for (i = 0;i < aTmp.length; i++) {  
                aTmp[i].style.zIndex = i;  
            }  
        }  

        function positionAll() {  
            var phi = 0;  
            var theta = 0;  
            var max = mcList.length;  
            var i = 0;  

            var aTmp = [];  
            var oFragment = document.createDocumentFragment();   
            for(i = 0; i < aA.length; i++) {  
                aTmp.push(aA[i]);  
            }  

            aTmp.sort (  
                function () {  
                    return Math.random() < 0.5 ? 1 : -1;  
                }  
            );  

            for (i = 0;i < aTmp.length; i++) {  
                oFragment.appendChild(aTmp[i]);  
            }  

            oDiv.appendChild(oFragment);  

            for (var i = 1; i < max + 1; i++) {  
                if (distr) {  
                    phi = Math.acos(-1 + (2 * i - 1) / max);  
                    theta = Math.sqrt(max * Math.PI) * phi;  
                }  
                else {  
                    phi = Math.random() * (Math.PI);  
                    theta = Math.random() * (2 * Math.PI);  
                }  
                mcList[i - 1].cx = radius * Math.cos(theta) * Math.sin(phi);  
                mcList[i - 1].cy = radius * Math.sin(theta) * Math.sin(phi);  
                mcList[i - 1].cz = radius * Math.cos(phi);  

                aA[i - 1].style.left = mcList[i - 1].cx + oDiv.offsetWidth / 2 - mcList[i - 1].offsetWidth / 2 + 'px';  
                aA[i - 1].style.top = mcList[i - 1].cy + oDiv.offsetHeight / 2 - mcList[i - 1].offsetHeight / 2 + 'px';  
            }  
        }  

        function doPosition() {  
            var l = oDiv.offsetWidth / 2;  
            var t = oDiv.offsetHeight / 2;  
            for (var i = 0; i < mcList.length; i++) {  
                aA[i].style.left = mcList[i].cx + l - mcList[i].offsetWidth / 2+'px';  
                aA[i].style.top = mcList[i].cy + t - mcList[i].offsetHeight / 2+'px';  
                aA[i].style.fontSize = Math.ceil(12 * mcList[i].scale / 2) + 8 + 'px';  
                aA[i].style.filter = "alpha(opacity=" + 100 * mcList[i].alpha + ")";  
                aA[i].style.opacity = mcList[i].alpha;  
            }  
        }  

        function sineCosine( a, b, c) {  
            sa = Math.sin(a * dtr);  
            ca = Math.cos(a * dtr);  
            sb = Math.sin(b * dtr);  
            cb = Math.cos(b * dtr);  
            sc = Math.sin(c * dtr);  
            cc = Math.cos(c * dtr);  
        }
    };

    $(window).on('load', initTagsCloud);

</script>

<script>
    function initChipStyle() {
        if ($(".chip").length > 0) {
            $(".chip").each(function () {
                $(this).css("background-color",getRandomColor(0.999, 1));
            });
        }

        function getRandomColor(min = 0, max = 1) {
            if (!min) {
                min = 0;
            }
            if (!max) {
                max = 0;
            }
            min = isNaN(min) ? 0 : Number(min);
            max = isNaN(max) ? 1 : Number(max);
            min = Math.min(Math.max(Math.abs(min), 0), 1);
            max = Math.min(Math.max(Math.abs(max), 0), 1);
            max = max < min ? 1 : max;
            return (
                "#" +
                (function (h) {
                    return new Array(7 - h.length).join("0") + h;
                })((((Math.random() * (max - min) + min) * 0x1000000) << 0).toString(16))
            );
        }
    };

    initChipStyle();
</script>
