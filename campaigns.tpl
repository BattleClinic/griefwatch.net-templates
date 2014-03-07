{if ($ERROR)}
<div class="top top380 head3">ERROR</div>
<div class="boxsmall" style="width: 380px;">
	<div class="bordertl">
		<div class="bordertr">
			<div class="bordert">
				<div class="borderr">
					<div class="boxcontent">{$ERROR}</div>
					<div class="borderbl">
						<div class="borderbr"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{return}
{/if}

{if ($CAMPAIGN)}
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr valign="top">
		<td>

			<div class="box">
				<div class="boxheader">Campaign Details</div>

				<div class="boxcontent" style="padding: 4px; min-height: 64px;">
					<img src="{$IMAGEURL}/{$TYPE}.gif" class="icon" style="float: left; margin-right: 4px;" width="64" height="64" title="<{$TYPE|capitalize}" alt="{$TYPE}">
					<span style="font-size: 16px; font-weight: bold;">{$NAME}</span><br>
					{$DETAILS}<br>
					Kills / Losses: <a href="?p=kills&amp;campaign={$CAMPAIGN}">{$TOTALKILLS}</a> / <a
						href="?p=losses&amp;campaign={$CAMPAIGN}">{$TOTALLOSSES}</a><br>
					ISK Destroyed / Lost: {$ISKINFLICTED} / {$ISKLOST}
					({round(($ISKINFLICTED/($ISKLOST + $ISKINFLICTED))*100)}%)<br>
				</div>
			</div>

			<div class="box" style="margin-top: 10px;">
				<div class="boxheader">Timeline</div>
				<div class="boxcontent" style="padding: 2px;">
					{$STARTDATE} - {$ENDDATE} (<span class="{if $STATUS == "Active"}c1{else}c2{/if}">{$STATUS}</span>)
				</div>
			</div>

			<div class="box" style="margin-top: 10px;">
				<div class="boxheader">Targets</div>
				<div class="boxcontent" style="border-top: 0px;">
					<table width="100%" cellpadding="1" cellspacing="0" border="0" class="header">
						<tr class="headerline">
							<td>Name</td>
							<td>Type</td>
							<td>Kills</td>
							<td>Losses</td>
						</tr>
						{foreach $TARGETS as $target}
							<tr class="line">
								<td><a href="{$target["link"]}">{$target["name"]}</a></td>
								<td>{$target["type"]}</td>
								{if ($target["type"] == "Region")}
									<td>
										<a href="?p=kills&amp;campaign={$CAMPAIGN}&amp;region={$target["name"]}">{$target["kills"]}</a>
									</td>
									<td>
										<a href="?p=losses&amp;campaign={$CAMPAIGN}&amp;region={$target["name"]}">{$target["losses"]}</a>
									</td>
								{else}
									<td>
										<a href="?p=kills&amp;campaign={$CAMPAIGN}&amp;{if $target["type"][0] == "C"}corp{else}alliance{/if}={$target["name"]}">{$target["kills"]}</a>
									</td>
									<td>
										<a href="?p=losses&amp;campaign={$CAMPAIGN}&amp;{if $target["type"][0] == "C"}icorp{else}ialliance{/if}={$target["name"]}">{$target["losses"]}</a>
									</td>
								{/if}
							</tr>
						{/foreach}
					</table>
				</div>
			</div>

			<table cellpadding="0" cellspacing="0" border="0" align="center">
				<tr valign="top">
					<td width="280" style="padding-right: 4px;">

						<div class="box" style="margin-top: 10px;">
							<div class="boxheader">Top Pilots</div>
							<div class="boxcontent" style="padding: 2px;">
								{foreach $PILOTRANK as $pilot}
								<div style="min-height: 38px;">
									<img src="http://image.eveonline.com/Character/{$pilot["eveid"]}_32.jpg" class="icon" style="float: left;">
									<a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a>
									[{$pilot["kills"]}]<br>
									<img src="{$TEMPLATEURL}/images/bar.png" height="3" style="padding-top: 2px; padding-bottom: 1px; width: {(1+((int)(($pilot["kills"]*100)/$PILOTRANK[0]["kills"]))/10)*18}px;"><br>
								</div>
								{/foreach}
							</div>
						</div>

					</td>
					<td width="280" style="padding-left: 5px;">

						<div class="box" style="margin-top: 10px;">
							<div class="boxheader">Top Losers</div>
							<div class="boxcontent" style="padding: 2px;">
								{foreach $TOPLOSERS as $pilot}
								<div style="min-height: 38px;">
									<img src="http://image.eveonline.com/Character/{$pilot["eveid"]}_32.jpg" class="icon" style="float: left;">
									<a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a>
									[{$pilot["num"]}]<br>
									<img src="{$TEMPLATEURL}/images/bar.png" height="3" style="padding-top: 2px; padding-bottom: 1px; width: {(1+((int)(($pilot["num"]*100)/$TOPLOSERS[0]["num"]))/10)*18}px;"><br>
								</div>
								{/foreach}
							</div>

					</td>
				</tr>
			</table>

		</td>
		<td style="padding-left: 10px; width: 180px;">

			<div class="box">
				<div class="boxheader">Ships Destroyed</div>
				<div class="boxcontent" style="padding: 2px;">
					{if isset($STATSCLASSES_killed)}
						{foreach $STATSCLASSES_killed as $num => $class}
					{$num+1}: <a href="?p=kills&amp;campaign={$CAMPAIGN}&amp;class={$class["name"]}">{$class["name"]}</a> [{$class["num"]}]<br>
					<img src="{$TEMPLATEURL}/images/bar.png" height="3" style="padding-top: 2px; padding-bottom: 1px; width: {(1+((int)(($class["num"]*100)/$STATSCLASSES_killed[0]["num"]))/10)*14}px;"><br>
					{/foreach}
					{else}
					No kills
					{/if}
				</div>
			</div>

			<div class="box" style="margin-top: 10px;">
				<div class="boxheader">Ships Lost</div>
				<div class="boxcontent" style="padding: 2px;">
					{if isset($STATSCLASSES_lost)}
					{foreach $STATSCLASSES_lost as $num => $class}
					{$num+1}: <a href="?p=losses&amp;campaign={$CAMPAIGN}&amp;class={$class["name"]}">{$class["name"]}</a> [{$class["num"]}]<br>
					<img src="{$TEMPLATEURL}/images/bar.png" height="3" style="padding-top: 2px; padding-bottom: 1px; width: {(1+((int)(($class["num"]*100)/$STATSCLASSES_lost[0]["num"]))/10)*14}px;"><br>
					{/foreach}
					{else}
					No losses
					{/if}
				</div>
			</div>

		</td>
	</tr>

</table>
{else}
<div class="box">
	<div class="boxheader">Campaign List</div>

	<div class="boxcontent" style="padding: 2px;">
		{if ($CAMPAIGNS)}
		{foreach $CAMPAIGNS as $campaign}
		<div style="min-height: 68px; padding-bottom: 8px;">
			<img src="{$IMAGEURL}/{$campaign["type"]}.gif" class="icon" style="margin-right: 4px; float: left;" width="64" height="64" title="{$campaign["type"]|capitalize}" alt="{$campaign["type"]}">
			<span style="font-size: 16px; font-weight: bold;"><a href="?p=campaigns&amp;campaign={$campaign["campaignId"]}">{$campaign["name"]}</a></span><br>
			<b>Targets:</b>

			{capture name="targets"}
				{foreach $campaign.targets as $target}
					<a href="{$target.link}">{$target.name}</a>,
				{/foreach}
			{/capture}
			{$smarty.capture.targets}

			<br>
			<b>Duration:</b> {$campaign["startDate"]} - {$campaign["endDate"]} (<span class="{if $campaign["status"] == "Active"}c1{else}c2{/if}">{$campaign["status"]}</span>
			)
		</div>
		{/foreach}
		{else}
		There are currently no campaigns.
		{/if}
	</div>
</div>
{/if}