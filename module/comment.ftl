<#macro comment target,type>
    <#if !post.disallowComment!false>
        <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
        <script src="//cdn.jsdelivr.net/gh/LIlGG/halo-comment-sakura@v1.3.5/dist/halo-comment.min.js"></script>
        <#assign
          configs = '{
            "autoLoad": false,
            "showUserAgent": true
          }'
        >

        <section class="comments-area">
            <hr />
            <h2 id="comments-list-title">评论</h2>
            <div class="inner" id="commentInner">
                <halo-comment id='${target.id?c}' type='${type}' configs='${configs}'/>
            </div>
        </section>
        
    </#if>
</#macro>