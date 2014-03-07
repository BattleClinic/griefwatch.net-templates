<table border="0" cellpadding="0" cellspacing="0" align="center">
	<tr valign="top">
		<td>

			<div class="box" style="width: 570px;">
				<div class="boxheader">Statistics for {$CURMONTH|capitalize}</div>
				<div class="boxcontent" style="padding: 2px;">

					<div class="box">
						<div class="boxheader2">Most kills</div>
						<div class="boxcontent" style="border-top: 0px; padding: 4px;">
							{foreach $MOSTKILLS as $num => $pilot}
							<div style="height: 38px;">
								<img src="http://image.eveonline.com/Character/{$pilot["eveid"]}_64.jpg" class="icon" height="32" width="32" style="float: left; margin-right: 4px;">
								<div style="float: right; font-size: 16px; font-weight: bold; width: 130px;">
									{$pilot["num"]} kills
								</div>
								<a href="?p=pilot&amp;pilot={$pilot["name"]}" style="font-size: 16px; font-weight: bold;">{$pilot["name"]}</a> (#{$num+1})<br>{$pilot["corp"]} {if $pilot["alliance"] != ""}[<a href="?p=alliance&amp;alliance={$pilot['alliance']}">{$pilot['alliance']}</a>]{/if}
							</div>
							{/foreach}
						</div>
					</div>

					<div class="box" style="margin-top: 8px;">
						<div class="boxheader2">Most points</div>
						<div class="boxcontent" style="border-top: 0px; padding: 4px;">
							{foreach $MOSTPOINTS as $num => $pilot}
							<div style="height: 38px;">
								<img src="http://image.eveonline.com/Character/{$pilot["eveid"]}_32.jpg" class="icon" height="32" width="32" style="float: left; margin-right: 4px;">
								<div style="float: right; font-size: 16px; font-weight: bold; width: 130px;">{$pilot["num"]} points</div>
								<a href="?p=pilot&amp;pilot={$pilot["name"]}" style="font-size: 16px; font-weight: bold;">{$pilot["name"]}</a> (#{$num+1})<br>{$pilot["corp"]} {if $pilot["alliance"] != ""}[<a href="?p=alliance&amp;alliance={$pilot['alliance']}">{$pilot['alliance']}</a>]{/if}
							</div>
							{/foreach}
						</div>
					</div>

				</div>
			</div>
			<br>

		</td>
		<td style="padding: 0px 10px;">

			<div class="box" style="width: 200px;">
				<div class="boxheader">Previous Months</div>
				<div class="boxcontent" style="padding: 2px;">

					{foreach $MONTHS as $k => $v}
					<div class="box" style="margin-bottom: 8px">
						<div class="boxheader2">{$k}</div>
						<div class="boxcontent" style="border-top: 0px; padding: 4px;">
							{foreach $v as $month}
							<a href="?p=monthly&amp;year={$k}&amp;month={$month['month']}">{$month['month']}</a><br>
							{/foreach}
						</div>
					</div>
					{/foreach}
				</div>
			</div>

		</td>
	</tr>
</table>
