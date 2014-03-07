<div class="box">
	<div class="boxheader headerline">Warp Core Stabilizer whores killed by {$NAME}</div>
	<div class="boxcontent" style="border-top: 0px;">
		<table width="100%" cellpadding="1" cellspacing="0" border="0" class="header">
			<tr class="headerline">
				<td width="85">Date</td>
				<td width="170">Victim</td>
				<td width="140">Ship</td>
				<td width="90"># stabs</td>
				<td width="16">&nbsp;</td>
			</tr>
			{foreach $KILLS as $kill}
			<tr class="line">
				<td>&nbsp;{$kill["date"]}</td>
				<td><a href="?p=pilot&amp;pilot={$kill["name"]}">{$kill["name"]}</a></td>
				<td width="126"><a href="?p=kills&amp;type={$kill["type"]}">{$kill["type"]}</a></td>
				<td>{$kill["destroyed"]}</td>
				<td align="center">
					<a href="?p=details&amp;kill={$kill["id"]}">
					<div class="mailicon"><img src="{$TEMPLATEURL}/images/nil.gif" border="0" title="View killmail" alt="View kill" width="16" height="12"></a>
				</td>
			</tr>
			{/foreach}
		</table>
	</div>
</div>
<div style="padding: 5px;"></div>
