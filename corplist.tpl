<div class="box">
	<div class="boxheader">Corporations starting with {$ALPHA}</div>
	<div class="boxcontent" style="border-top: 0px;">
		<table border="0" cellpadding="1" cellspacing="0" width="100%" class="header">
			<tr class="headerline">
				<td><a href="?p=corplist&l={$ALPHA}&amp;sort=name">Name</a></td>
				<td width="90"><a href="?p=corplist&l={$ALPHA}&amp;sort=kills">Kills</a></td>
				<td width="90"><a href="?p=corplist&l={$ALPHA}&amp;sort=losses">Losses</a></td>
			</tr>
			{foreach $CORPORATIONS as $corps}
			<tr class="line">
				<td><a href="?p=corp&corp={$corps["name"]}">{$corps["name"]}</a></td>
				<td>{$corps["kills"]}</td>
				<td>{$corps["losses"]}</td>
			</tr>
			{/foreach}
		</table>
	</div>
</div>

<div class="box" style="width: 600px; margin: auto; margin-top: 10px;">
	<div class="boxcontent" style="padding: 2px; text-align: center;">
		Corporations starting with:
		{foreach $PAGES as $page}
		<a href="?p=corplist&l={$page}">{$page}</a>
		{/foreach}
	</div>
</div>
