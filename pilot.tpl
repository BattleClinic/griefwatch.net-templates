{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Something went wrong</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<div class="box">
	<div class="boxheader">{$PILOTNAME} / <a href="?p=corp&corp={$CORPNAME}">{$CORPNAME}</a></div>
	<div class="boxcontent">

		<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
			<tr valign="top">

				<td width="300" style="padding-top: 20px; padding-left: 10px;">
					<div class="box">
						{if ($LASTKILL)}
						<div class="boxheader2">Latest Kill (<a href="?p=kills&amp;iname={$PILOTNAME}">View All</a>)
						</div>
						<div class="boxcontent" style="border-top: 0px; padding-right: 4px;">
							<img src="http://image.eveonline.com/InventoryType/{$LASTKILL["icon"]}_64.png" class="shipicon" width="64" height="64" alt="" title="{$LASTKILL["type"]}">
							Victim: <a href="?p=pilot&amp;pilot={$LASTKILL["name"]}">{$LASTKILL["name"]}</a>
							<br>
							Corp: <a href="?p=corp&amp;corp={$LASTKILL["corp"]}">{$LASTKILL["corp"]}</a><br>
							Destroyed: {$LASTKILL["type"]}<br>
							System: {$LASTKILL["system"]}><br>
							Security: {$LASTKILL["security"]}<br>
							<a href="?p=details&amp;kill={$LASTKILL["id"]}">View Details</a><br>
							<br>
						</div>
						{else}
						<div class="boxheader2" style="padding: 2px 4px 4px 4px;">
							No kills registered
						</div>
						{/if}
					</div>
				</td>

				<td width="130" align="center" style="padding: 10px;">
					<img src="http://image.eveonline.com/Character/{$EVEID}_128.jpg" width="128" height="128" class="icon" style="margin: 2px;" alt="[Portrait]">
				</td>

				<td width="300" style="padding-top: 20px; padding-right: 10px;">

					<div class="box">
						{if ($LASTLOSS)}
						<div class="boxheader2">Latest Loss (<a href="?p=kills&amp;victim={$PILOTNAME}">View All</a>)
						</div>
						<div class="boxcontent" style="border-top: 0px; padding-right: 4px;">
							<img src="http://image.eveonline.com/InventoryType/{$LASTLOSS["icon"]}_64.png" class="shipicon" width="64" height="64" alt="" title="{$LASTLOSS["type"]}">
							Final Blow: <a href="?p=pilot&amp;pilot={$LASTLOSS["name"]}">{$LASTLOSS["name"]}</a><br>
							Corp: <a href="?p=corp&amp;corp={$LASTLOSS["corp"]}">{$LASTLOSS["corp"]}</a><br>
							Lost: {$LASTLOSS["type"]}<br>
							System: {$LASTLOSS["system"]}<br>
							Security: {$LASTLOSS["security"]}<br>
							<a href="?p=details&amp;kill={$LASTLOSS["id"]}">View Details</a><br>
							<br>
						</div>
						{else}
						<div class="boxheader2" style="padding: 2px 4px 4px 4px;">
							No losses registered
						</div>
						{/if}
					</div>

				</td>


			</tr>

		</table>

	</div>
</div>

<div class="box" style="margin-top: 10px;">
	<div class="boxheader">Summary</div>
	<div class="boxcontent" style="padding-bottom: 10px;">

		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-top: 10px;">
			<tr>
				<td align="center">
					<div class="box" style="width: 240px;">
						<div class="boxheader2">ISK Damage Inflicted</div>
						<div class="boxcontent stats" style="border-top: 0px; text-align: center; font-size: 24px; font-weight: bold;">
							{$ISK} Billion<br>
						</div>
					</div>
				</td>
				<td align="center">
					<div class="box" style="width: 240px;">
						<div class="boxheader2">GPS Points</div>
						<div class="boxcontent stats" style="border-top: 0px; text-align: center; font-size: 24px; font-weight: bold;">
							{$POINTS}<br>
						</div>
					</div>
				</td>
				<td align="center">
					<div class="box" style="width: 240px;">
						<div class="boxheader2">Ratio</div>
						<div class="boxcontent stats" style="border-top: 0px; text-align: center; font-size: 24px; font-weight: bold;">
							{$RATIO}<br>
						</div>
					</div>
				</td>
			</tr>
		</table>

		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-top: 10px;">

			<tr valign="top">

				<td align="center">
					<div class="box" style="width: 240px;">

						<div class="boxcontent" style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">
							Ships Flown
						</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{foreach $SHIPSFLOWN as $num => $ship}
							{$num}: <a href="?p=kills&amp;iname={$PILOTNAME}&amp;itype={$ship["name"]}" title="{$ship["name"]}">{$ship["shortname"]}</a> [{$ship['num']}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$ship["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
							{if ($SHIPSFLOWNMORE)}
							<span style="float: right; padding-right: 2px;"><a href="">Show Full List</a></span>
							{/if}
						</div>
					</div>

				</td>
				<td align="center">

					<div class="box" style="width: 240px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">
							Ships Lost
						</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{foreach $SHIPSLOST as $num => $ship}
							{$num}: <a href="?p=kills&amp;victim={$PILOTNAME}&amp;type={$ship["name"]}" title="{$ship["name"]}">{$ship["shortname"]}</a> [{$ship['num']}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$ship["bar"]*19}>" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
							{if ($SHIPSLOSTMORE)}
							<span style="float: right; padding-right: 2px;"><a href="">Show Full List</a></span>
							{/if}
						</div>
					</div>

				</td>
				<td align="center">

					<div class="box" style="width: 240px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">
							Ships Destroyed
						</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{foreach $SHIPSDESTROYED as $num => $ship}
							{$num}: <a href="?p=kills&amp;iname={$PILOTNAME}&amp;type={$ship["name"]}" title="{$ship["name"]}">{$ship["shortname"]}</a> [{$ship['num']}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$ship["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
							{if ($SHIPSDESTROYEDMORE)}
							<span style="float: right; padding-right: 2px;"><a href="">Show Full List</a></span>
							{/if}
						</div>
					</div>

				</td>
			</tr>
			
			<tr valign="top">

				<td align="center" style="padding-top: 10px;">

					<div class="box" style="width: 240px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">
							Favorite Targets
						</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{foreach $FAVORITETARGETS as $num => $target}
							{$num}: <a href="?p=kills&amp;iname={$PILOTNAME}&amp;victim={$target["name"]}" title="{$target["name"]}">{$target["shortname"]}</a> [{$target['num']}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$target["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
							{if ($FAVORITETARGETSMORE)}
							<span style="float: right; padding-right: 2px;"><a href="">Show Full List</a></span>
							{/if}
						</div>
					</div>

				</td>
				<td align="center" style="padding: 10px 0px;">

					<div class="box" style="width: 240px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">
							Favorite Weapons
						</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{foreach $WEAPONSUSED as $num => $weapon}
							{$num}: <a href="?p=kills&amp;iname={$PILOTNAME}&amp;iweapon={$weapon["name"]}" title="{$weapon["name"]}">{$weapon["shortname"]}</a> [{$weapon['num']}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$weapon["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
							{if ($WEAPONSUSEDMORE)}
							<span style="float: right; padding-right: 2px;"><a href="">Show Full List</a></span>
							{/if}
						</div>
					</div>

				</td>
				<td align="center" style="padding-top: 10px;">

					<div class="box" style="width: 240px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">
							Favorite Systems
						</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{foreach $FAVORITESYSTEMS as $num => $system}
							{$num}: <a href="?p=kills&amp;iname={$PILOTNAME}&amp;system={$system["name"]}" title="{$system["name"]}">{$system["shortname"]}</a> [{$system['num']}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$system["bar"]*19}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
							{if ($FAVORITESYSTEMSMORE)}
							<span style="float: right; padding-right: 2px;"><a href="">Show Full List</a></span>
							{/if}
						</div>
					</div>

				</td>
			</tr>
		</table>

	</div>
</div>