{if ($ERROR)}
<div class="box" style="width: 400px;">
	<div class="headerdeco"></div>
	<div class="header">Notice</div>
	<div class="contentbox pad" style="text-align: center;">{$ERROR}</div>
</div>
{return}
{/if}

<div class="box">
	<div class="deco"></div>
	<div class="boxheader">Daily Statistics</div>
	<div class="subdeco"></div>
	<div class="boxheader">{date("l jS M\, Y", strtotime($DATE))}</div>

	<div class="boxcontent">

		{if ($TOTALCOUNT)}
		{$classes = array_chunk($SHIPCLASSES, max(1, round(count($SHIPCLASSES)/3)), TRUE)}

		<div style="float: left; width: 250px;">
			{foreach $classes[0] as $class => $num}
			<div style="float: right;"><span class="c1">{$num["killed"]}</span> / <span class="c2">{$num["lost"]}</span></div>
			{$class}<br>
			{/foreach}
		</div>

		{if ($classes[2])}
		<div style="float: right; width: 250px">
			{foreach $classes[2] as $class => $num}
			<div style="float: right;"><span class="c1">{$num["killed"]}</span> / <span class="c2">{$num["lost"]}</span></div>
			{$class}<br>
			{/foreach}
		</div>
		{/if}

		{if ($classes[1])}
		<div style="margin: auto; width: 250px;">
			{foreach $classes[1] as $class => $num}
			<div style="float: right;"><span class="c1">{$num["killed"]}</span> / <span class="c2">{$num["lost"]}</span></div>
			{$class}<br>
			{/foreach}
		</div>

		<br>

		<div style="margin: auto; text-align: center; font-size: 1.4em;">
			<span class="c1">{$ISKINFLICTED}</span> ISK / <span class="c2">{$ISKLOST}</span> ISK<br>
			<span class="c1">{$KILLPOINTS}</span> points / <span class="c2">{$LOSSPOINTS}</span> points
		</div>

		{/if}

		{else}
		<div style="text-align: center;">No kills/losses registered</div>
		{/if}

		<div style="clear: both; text-align: center; padding-top: 8px; font-size: 1.4em;">
			<a href="?p=daily&amp;date={$DAYPREV}">&lt;&lt; {$DAYPREV}</a>&nbsp;&nbsp;
			<a href="?p=daily&amp;date={$DAYNEXT}">{$DAYNEXT} &gt;&gt;</a>
		</div>
	</div>

	{if ($TOTALCOUNT)}

		{if ($KILLINDEX)}
		<div class="subdeco"></div>
		<div class="boxheader">Kills</div>
		<div class="boxcontent">
			<table cellspacing="0" cellpadding="0" class="kill">
				{foreach $KILLINDEX as $kill}
				<tr>
					<td style="width: 260px;"><a href="?p=pilot&amp;pilot={$kill["name"]}">{$kill["name"]}</a></td>
					<td rowspan="2" style="width: 36px;">
						<img src="http://image.eveonline.com/InventoryType/{$kill["icon"]}_32.png" class="icon" alt="{$kill["type"]}" height="32" width="32" style="float: left;">
					</td>
					<td style="width: 150px;">{$kill["type"]}</td>
					<td style="width: 150px;">{$kill["system"]}</td>
					<td style="width: 140px;">{$kill["time"]}</td>
					<td class="mail pad" rowspan="2"><a href="?p=details&amp;kill={$kill["id"]}">
						<img src="{$TEMPLATEURL}/images/mail.gif" border="0" alt="View details">
					</a>
					</td>
				</tr>
				<tr class="i" valign="top">
					<td>{$kill["corp"]}</td>
					<td>{$kill["shipclass"]}</td>
					<td>{$kill["region"]}, {$kill["secstatus"]}</td>
					<td>
						{if ($kill["invcount"] == 1)}Solo kill{else}{$kill['invcount']} involved parties{/if}
					</td>
				</tr>
				<tr>
					<td colspan="6" style="padding-bottom: 3px;"></td>
				</tr>
				{/foreach}
			</table>
		</div>
		{/if}


		{if ($LOSSINDEX)}
		<div class="subdeco"></div>
		<div class="boxheader">Losses</div>
		<div class="boxcontent">
			<table cellspacing="0" cellpadding="0" class="kill">
				{foreach $LOSSINDEX as $kill}
				<tr>
					<td style="width: 260px;"><a href="?p=pilot&amp;pilot={$kill["name"]}">{$kill["name"]}</a></td>
					<td rowspan="2" style="width: 36px;">
						<img src="http://image.eveonline.com/InventoryType/{$kill["icon"]}_32.png" class="icon" alt="{$kill["type"]}" height="32" width="32" style="float: left;">
					</td>
					<td style="width: 150px;">{$kill["type"]}</td>
					<td style="width: 150px;">{$kill["system"]}</td>
					<td style="width: 140px;">{$kill["time"]}</td>
					<td class="mail pad" rowspan="2"><a href="?p=details&amp;kill={$kill["id"]}">
						<img src="{$TEMPLATEURL}/images/mail.gif" border="0" alt="View details"></a></td>
				</tr>
				<tr class="i" valign="top">
					<td>{$kill["corp"]}</td>
					<td>{$kill["shipclass"]}</td>
					<td>{$kill["region"]}, {$kill["secstatus"]}</td>
					<td>
						{if ($kill["invcount"] == 1)}Solo kill{else}{$kill['invcount']} involved parties{/if}
					</td>
				</tr>
				<tr>
					<td colspan="6" style="padding-bottom: 3px;"></td>
				</tr>
				{/foreach}
			</table>
		</div>
		{/if}
	{/if}