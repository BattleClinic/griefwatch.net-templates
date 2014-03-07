<div class="box">
	<div class="boxheader">Alliances</div>
	<div class="boxcontent" style="border-top: 0px;">

		<table border="0" cellpadding="1" cellspacing="0" width="100%" class="header">
			<tr class="headerline">
				<td><a href="?p=alliances&amp;sort=name">Name</a></td>
				<td width="90"><a href="?p=alliances&amp;sort=kills">Kills</a></td>
				<td width="90"><a href="?p=alliances&amp;sort=losses">Losses</a></td>
			</tr>
			{foreach $ALLIANCES as $alliance}
			<tr class="line">
				<td><a href="?p=alliance&alliance={$alliance["name"]}">{$alliance["name"]}</a></td>
				<td>{$alliance["kills"]}</td>
				<td>{$alliance["losses"]}</td>
			</tr>
			{/foreach}
		</table>
	</div>
</div>
