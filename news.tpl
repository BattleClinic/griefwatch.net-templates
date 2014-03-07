<div class="box">
	<div class="boxheader">News</div>
	<div class="boxcontent">
		{foreach $NEWS as $newsitem}
		{date("l jS M Y H:i:s", strtotime($newsitem["date"]))}
		<span style="font-size: 12px; color: white; font-weight: bold;">{$date} -- {$newsitem["topic"]}  (<a href="?p=news_article&id={$newsitem['newsId']}">Comments</a>)</span>
		</span><br>
		{if ($newsitem["image"])}
		<img src="{$newsitem["image"]}" class="icon" style="float: left; margin-bottom: 14px; margin-right: 4px;">
		{/if}
		{$newsitem["content"]}<br>
		{/foreach}
	</div>
</div>
