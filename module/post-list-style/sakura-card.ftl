<div id="post-list" class="post-list inner">
	<h1 class="fes-title">
		<i class="fa fa-envira" aria-hidden="true"></i>&nbsp;最新文章
	</h1>
	<#if posts?? && posts.getTotalElements() gt 0>
		<#list posts.content as post>
			<article class="post-item post-item-simple">
				<div class="post-thumb">
					<a href="${post.fullPath!}">
						<#if post.thumbnail?? && post.thumbnail!=''>
							<img class="lazyload" src="${post.thumbnail!}" onerror="this.src='${theme_base!}/assets/images/orange.progress-bar-stripe-loader.svg'"/>
						<#else>
							<img class="lazyload" src="https://api.lixingyong.com/api/images?type=url" onerror="this.src='${theme_base!}/assets/images/orange.progress-bar-stripe-loader.svg'"/>
						</#if>
					</a>
				</div><!-- thumbnail-->
				<div class="post-content-wrap">
					<div class="post-content">
						<div class="post-date">
							<i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;${post.createTime?string('yyyy-MM-dd')}&nbsp;
							<#if (.now?long-86400000*5)?number_to_datetime lte post.editTime?datetime && post.editTime?datetime gt post.createTime?datetime>
								<i class="fa fa-refresh" aria-hidden="true" title="最近有更新" style="color: var(--code-toolbar-color);"></i>
							</#if>
							<#if post.topPriority?? && post.topPriority!=0>&nbsp;<i class="fa fa-arrow-circle-o-up" aria-hidden="true" title="置顶"></i></#if>
						</div>
						<a href="${post.fullPath!}" class="post-title"><h3>${post.title!}</h3></a>
						<div class="post-meta">
							<span title="浏览量">
								<i class="fa fa-eye" aria-hidden="true"></i>
								<span>${post.visits!0}热度</span>
							</span>
							<span title="评论数" style="margin-left: 5px;">
								<i class="fa fa-commenting-o" aria-hidden="true"></i>
								<span>${post.commentCount!0}条评论</span>
							</span>
							<#if post.categories?? && post.categories?size gt 0>
								<span title="分类" style="margin-left: 5px;">
									<i class="fa fa-folder-o" aria-hidden="true"></i>
									<a href="${post.categories[0].fullPath!}">${post.categories[0].name!}</a>
								</span>
							</#if>
						</div>
						<div class="float-content">
							<p class="post-excerpt" <#if post_index % 2==0>style="text-align: right"</#if>>${post.summary!}</p>
						</div>
					</div>
				</div>
				<div class="post-bottom">
					<a href="${post.fullPath!}" class="postReadMore">
						<i class="fa fa-ellipsis-h" aria-hidden="true"></i>
					</a>
				</div>
			</article>
		</#list>
	</#if>
</div><!-- #primary -->