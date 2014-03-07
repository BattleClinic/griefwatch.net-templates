{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

	{foreach $KILLS as $date => $killset}
	<div class="box">
		<div class="boxheader headerline">
			<div class="headerfilter">
				[
					<a href="?p={$PAGE}&amp;date={$date}&amp;class=Battleship">BS</a> |
					<a href="?p={$PAGE}&amp;date={$date}&amp;mode=solo">Solo</a> |
					<a href="?p={$PAGE}&amp;date={$date}&amp;class=Capsule">Pods</a>
				]
			</div>
			<div class="headercontent">{date('l jS F, Y', strtotime($date))}</div>
		</div>
		<div class="boxcontent" style="border-top: 0px;">
			<table width="100%" cellpadding="1" cellspacing="0" border="0" class="header">
				<tr class="headerline">
					<td width="60">Time</td>
					<td width="170">Victim</td>
					<td width="250">Corporation</td>
					<td width="140" colspan="2">Ship</td>
					<td width="90">System</td>
					<td width="16">&nbsp;</td>
				</tr>
				{foreach $killset as $kill}
					<tr class="line">
						<td>&nbsp;{$kill["time"]}</td>
						<td><a href="?p=pilot&amp;pilot={$kill["name"]}">{$kill["name"]}</a></td>
						<td><a href="?p=corp&amp;corp={$kill["corp"]}">{$kill["corp"]}</a></td>
						<td width="14">
							<a href="?p=details&amp;kill={$kill["id"]}">
								<img src="http://image.eveonline.com/InventoryType/{$kill["icon"]}_32.png" alt="" width="14" height="14" class="icon">
							</a>
						</td>
						<td width="126"><a href="?p={$PAGE}&amp;type={$kill["type"]}">{$kill["type"]}</a></td>
						<td>{$kill["systemlink"]}</td>
						<td align="center"><a href="?p=details&amp;kill={$kill["id"]}">
							<div class="mailicon">
								<img src="{$TEMPLATEURL}/images/nil.gif" border="0" title="View killmail" alt="View kill" width="16" height="12">
							</div>
						</a></td>
					</tr>
				{/foreach}
			</table>

		</div>
	</div>
	<div style="padding: 5px;"></div>
	{/foreach}

	{if ($PAGES)}
	<div class="box" style="width: 400px; margin: auto;">
	<div class="boxcontent" style="padding: 2px; text-align: center;">
		Page:
		{foreach $PAGES as $page => $num}
			{if ($num == $CURPAGE)}
				{$num}
				{else}
				<a href="?{$FILTER}&amp;page={$num}">{$page}</a>
			{/if}
		{/foreach}
		({$TOTALENTRIES} entries)
	{/if}