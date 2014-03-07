<div class="box">
	<div class="boxheader">News</div>
	<div class="boxcontent">
		{$date = date("l jS M Y H:i:s", strtotime($NEWS["date"]))}
		<span style="font-size: 12px; color: white; font-weight: bold;">{$date} -- {$NEWS["topic"]}</span>
		</span><br>
		{if ($NEWS["image"])}
		<img src="{$NEWS["image"]}" class="icon" style="float: left; margin-bottom: 14px; margin-right: 4px;">
		{/if}
		{$NEWS["content"]}<br>
	</div>
</div>


<div class="box" style="margin-top: 10px;">
	<div class="boxheader">Comments</div>
	<div class="boxcontent">
		{foreach $COMMENTS as $comment}
		<div style="padding: 2px;">
			<b><a href="?p=qsearch&amp;w=pilot&amp;q={$comment["name"]}">{$comment["name"]}</a></b> on
			<b>{$comment["date"]}</b>:<br>
			{$comment["comment"]}
		</div>
		{/foreach}
		<div style="border-top: 1px solid #111111; margin-top: 4px;">
			<b>Add comment:</b><br>

			<form method="POST" action="?p=addnewscomment">
				<input type="hidden" name="id" value="{$NEWS['newsId']}">
				<table border="0" cellspacing="0" width="100%">
					<tr valign="top">
						<td colspan="2"><textarea name="comment" style="width: 390px; height: 70px;"></textarea></td>
					</tr>
					<tr>
						<td><b>Name:</b> <input type="text" name="name" maxlength="80" size="15"></td>
						<td><b>Password:</b> <input type="password" name="password" size="10"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Add comment"></td>
					</tr>
				</table>
			</form>

		</div>
	</div>
</div>