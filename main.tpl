{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<table cellpadding="0" cellspacing="0" border="0" width="100%">

	<tr valign="top">
		<td>

			<!-- Left Box: Begin -->
			<div class="box" style="width: 380px;">
				<div class="boxheader">20 Most Recent Kills</div>
				<div class="boxcontent">

					<table width="100%" border="0" cellpadding="0" cellspacing="0">
					{foreach $LAST15KILLS as $date => $kills}
						<tr>
							<td colspan="2" class="mainheader">{date("l jS F, Y", strtotime($date))}</td>
						</tr>
						{foreach $kills as $kill}
							<tr valign="top">
								<td style="padding-bottom: 6px;">
									<img src="http://image.eveonline.com/InventoryType/{$kill["icon"]}_32.png" alt="" width="32" height="32" class="shipnb" title="{$kill["type"]}">
									Victim: <b>{$kill["namelink"]}</b><br>
									Corp: {$kill["corplink"]}<br>
									Alliance: {$kill["alliancelink"]}
								</td>
								<td>
									System: {$kill["systemlink"]}<br>
									Time: {$kill["time"]}<br>
									<a href="?p=details&amp;kill={$kill['id']}">View Details</a>
								</td>
							</tr>
						{/foreach}
						{/foreach}
					</table>

				</div>
			</div>

		</td>
		<td style="padding-left: 10px;">

			<div class="box" style="width: 392px;">
				<div class="boxheader">Activity in {$REGION_NAME} (Past {$ACTIVITY_PERIOD_NAME})</div>
				<div class="boxcontent" style="width: 390px;">

					<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'
							codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'
							width="390" height="390">

						<param name="movie" value="{$STATICURL}/data/map.swf">
						<param name="wmode" value="transparent">
						<param name="allowScriptAccess" value="always">
						<param name="flashvars" value="{$FLASHMAP}">
						<embed src="{$STATICURL}/data/map.swf" width="390" height="390" quality="high"
							   flashvars="{$FLASHMAP}" wmode="transparent" allowScriptAccess="always">

						</embed>
					</object>
				</div>
			</div>

			<div style="width: 392px; padding-top: 10px;">

				<div class="box">
					<div class="boxheader">Destroyed and Lost (Past {$ACTIVITY_PERIOD_NAME})</div>
					<div class="boxcontent stats">
						{$classes = array_chunk($SHIPCLASSES, max(1, round(count($SHIPCLASSES)/2)), TRUE)}
						{if ($classes[0])}
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr valign="top">
								<td style="width: 186px;">
									{foreach $classes[0] as $class => $num}
									<div style="float: right;"><b>{$num["kill"]}</b> / <b>{$num["loss"]}</b>
									</div>
									{$class}<br>
									{/foreach}
								</td>

								<td style="width: 186px; padding-left: 4px;">
									{if ($classes[1])}
									{foreach $classes[1] as $class => $num}
									<div style="float: right;"><b>{$num["kill"]}</b> / <b>{$num["loss"]}</b>
									</div>
									{$class}<br>
									{/foreach}
									{/if}
								</td>
							</tr>
						</table>
						{/if}
					</div>
				</div>

			</div>

			<div style="width: 392px; padding-top: 10px;">

				<div class="box">
					<div class="boxheader">Pilot Activity (Past {$ACTIVITY_PERIOD_NAME})</div>
					<div class="boxcontent stats">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr valign="top">
								{foreach array_chunk($PILOTACTIVITY, 5, TRUE) as $set}
								<td width="50%">
									{foreach $set as $num => $pilot}
									<img src="http://image.eveonline.com/Character/{$pilot["eveid"]}_32.jpg" width="32" height="32" style="float: left; margin-right: 4px;" class="icon">
									{$num+1}: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a> [{$pilot['num']}]<br>
									<img src="{$TEMPLATEURL}/images/bar.png" width={$pilot["width"]*12}" height="3" style="padding-top: 2px; padding-bottom: 18px;"><br>
									{/foreach}
								</td>
								{/foreach}
							</tr>
						</table>
					</div>
				</div>

			</div>

		</td>

	</tr>
</table><br>
<div align="center" class="copyright" style="margin-right: 190px;">Shuttles, rookie ships, and capsules are not shown.
</div>