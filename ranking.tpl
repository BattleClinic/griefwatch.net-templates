<div class="box">
	<div class="boxheader">Ranking (Global)</div>
	<div class="boxcontent" style="padding: 10px 0px;">
		<table border="0" cellpadding="0" cellspacing="0" align="center">
			<tr valign="top">
				<td>
					<div class="box" style="width: 500px;">
						<div class="boxheader2">Pilots</div>
						<div class="boxcontent" style="border-top: 0px; padding: 2px;">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
								{foreach $PLAYERS as $num => $player}
								<tr valign="top">
									<td>
										<img src="http://image.eveonline.com/Character/{$player["eveid"]}_32.jpg" width="32" height="32" class="icon" style="float: left; margin: 2px;">
										<a href="?p=pilot&amp;pilot={$player["name"]}" style="font-size: 16px; font-weight: bold;">{$player["name"]}
										</a> (#{$num})<br>{$player["corp"]}
										{if ($player["alliance"])}
										[{$player["alliance"]}]
										{/if}
									</td>
									<td style="font-size: 16px; font-weight: bold;">{$player["points"]} points</td>
								</tr>
								{/foreach}
							</table>

							{if ($PAGES)}
							<div align="center">
								<hr size="1" width="80%">
								<b>Page:</b>
								{foreach $PAGES as $page}
								{if ($page == $CURPAGE)}
								{$page}
								{else}
								<a href="?p=ranking&amp;page={$page}">{$page}</a>
								{/if}
								{/foreach}
							</div>
							{/if}

						</div>
					</div>
				</td>
				<td style="padding: 0px 10px;">
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Alliances</div>
						<div class="boxcontent" style="border-top: 0px;">
							{foreach $ALLIANCES as $num => $alliance}
							{$num}: {$alliance["namelink"]} [{$alliance["points"]}]<br>
							{/foreach}
						</div>
					</div>
					<div class="box" style="width: 240px; margin-top: 10px;">
						<div class="boxheader2">Corporations</div>
						<div class="boxcontent" style="border-top: 0px;">
							{foreach $CORPORATIONS as $num => $corp}
							{$num}: {$corp["namelink"]} [{$corp["points"]}]<br>
							{/foreach}
						</div>
					</div>
				</td>
			</tr>

		</table>

	</div>
</div>
