<div class="box">
	<div class="boxheader">Top 10 Summary</div>
	<div class="boxcontent" style="padding-bottom: 10px;">

		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding-top: 10px;">
			<tr valign="top">
				<td align="center">

					<!-- Top 10 Final Blows -->
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Top 10 Final Blows</div>
						<div class="boxcontent stats" style="border-top: 0px;">

							{foreach $TOP10FINALBLOWS as $num => $pilot}
							{$num}: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a>
							[{$pilot["num"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$pilot["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}

						</div>
					</div>

				</td>
				<td align="center">

					<!-- Top 10 Participation -->

					<div class="box" style="width: 240px;">
						<div class="boxheader2">Top 10 Participation</div>
						<div class="boxcontent stats" style="border-top: 0px;">

							{foreach $TOP10PARTICIPATION as $num => $pilot}
							{$num}: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a>
							[{$pilot["num"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$pilot["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}

						</div>
					</div>

				</td>
				<td align="center">

					<!-- Top 10 Ships Flown -->
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Top 10 Ships Flown</div>
						<div class="boxcontent stats" style="border-top: 0px;">

							{foreach $TOP10SHIPSFLOWN as $num => $ship}
							{$num}: <a href="?p=kills&amp;itype={$ship["name"]}">{$ship["name"]}</a>
							[{$ship["num"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$ship["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}

						</div>
					</div>

				</td>
			</tr>

			<tr>
				<td colspan="3"><br></td>
			</tr>

			<tr valign="top">
				<td align="center">

					<!-- Top 10 Systems -->
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Top 10 Systems</div>
						<div class="boxcontent stats" style="border-top: 0px;">

							{foreach $TOP10SYSTEMS as $num => $system}
							{$num}: <a href="?p=system&amp;system={$system["name"]}">{$system["name"]}</a>
							[{$system["num"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$system["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}

						</div>
					</div>

				</td>
				<td align="center">

					<!-- Top 10 Ships Destroyed -->
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Top 10 Ships Destroyed</div>
						<div class="boxcontent stats" style="border-top: 0px;">

							{foreach $TOP10DESTROYED as $num => $ship}
							{$num}: <a href="?p=kills&amp;type={$ship["name"]}">{$ship["name"]}</a>
							[{$ship["num"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$ship["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}

						</div>
					</div>

				</td>
				<td align="center">

					<!-- Top 10 Victims -->
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Top 10 Victims</div>
						<div class="boxcontent stats" style="border-top: 0px;">

							{foreach $TOP10VICTIMS as $num => $pilot}
							{$num}: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a>
							[{$pilot["num"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$pilot["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}

						</div>
					</div>

				</td>
			</tr>
		</table>

	</div>
</div>
