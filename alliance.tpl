{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<div class="box">
	<div class="boxheader">Alliance Info</div>
	<div class="boxcontent" style="padding: 0px 0px 4px 0px; height: 70px;">
		<img src="{$LOGO}" width="64" height="64" class="corplogo">
		<span style="font-size: 22px;">{$NAME}</span><br>Registered Members: {$PILOTCOUNT}<br>Kills / Losses: <a
			href="?p=kills&ialliance={$NAME}">{$KILLS}</a> / <a
			href="?p=kills&alliance={$NAME}">{$LOSSES}</a>
	</div>
</div>

<div class="box" style="margin-top: 10px;">
	<div class="boxheader">Member Corporations</div>
	<div class="boxcontent" style="border-top: 0px;">
		<table width="100%" cellpadding="1" cellspacing="0" border="0" class="header">
			<tr class="headerline">
				<td><a href="?p=alliance&amp;alliance={$NAME}&amp;sort=name">Name</a></td>
				<td width="80"><a href="?p=alliance&amp;alliance={$NAME}&amp;sort=kills">Kills</a></td>
				<td width="80"><a href="?p=alliance&amp;alliance={$NAME}&amp;sort=losses">Losses</a></td>
				<td width="80">K:D Ratio</td>
			</tr>
			{foreach $MEMBERSLIST as $corp}
			<tr class="line">
				<td><a href="?p=corp&amp;corp={$corp["name"]}">{$corp["name"]}</a></td>
				<td>{$corp["kills"]}</td>
				<td>{$corp["losses"]}</td>
				<td>{$corp["ratio"]}</td>
			</tr>
			{/foreach}
		</table>

	</div>
</div>
