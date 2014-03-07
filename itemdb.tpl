{if ($ERROR)}
<div style="width: 392px;">
	<div class="top top392"><span class="head3">ERROR</span></div>
	<div class="boxsmall">
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
</div>
{return}
{/if}

<div style="float: left; width: 500px;">

	<div class="top top800">
		<div class="boxheader">SHIP INFORMATION</div>
	</div>

	<div class="boxsmall">
		<div class="bordertl">
			<div class="bordertr">
				<div class="bordert">
					<div class="borderr">
						<div class="boxcontent">
							<img src="http://image.eveonline.com/InventoryType/{$SHIP['typeID']}_64.png" class="shipicon">

							<div style="padding-left: 74px;">
								<span class="nameheader">{$SHIP['typeName']}</span><br>
								{$SHIP['description']}
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="borderbl">
							<div class="borderbr"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="top top800" style="margin-top: 8px;">
		<div class="boxheader">DID YOU KNOW?</div>
	</div>
	<div class="boxsmall">
		<div class="bordertl">
			<div class="bordertr">
				<div class="bordert">
					<div class="borderr">
						<div class="boxcontent">
							{$found = 0}
							{if ($FAVORITESHIP)}
							<div style="height: 66px;">
								<img src="http://image.eveonline.com/Character/{$FAVORITESHIP["eveid"]}_64.jpg" class="item">
								<div style="padding-left: 70px;">
									<span class="fhead1"><a href="?p=pilot&amp;pilot={$FAVORITESHIP["name"]}">{$FAVORITESHIP["name"]}</a></span><br>
									<span class="fhead2"><a href="?p=corp&amp;corp={$FAVORITESHIP["corp"]}">{$FAVORITESHIP["corp"]}</a></span><br>
									<span class="fhead3">Has flown the {$SHIP['typeName']} {$FAVORITESHIP["num"]} times</span>
								</div>
							</div>
							{$found = 1}
							{/if}

							{if ($DEATHTRAP)}
							<hr size="1" width="75%">
							<div style="height: 66px;">
								<img src="http://image.eveonline.com/Character/{$DEATHTRAP["eveid"]}_64.jpg" class="item">
								<div style="padding-left: 70px;">
									<span class="fhead1"><a href="?p=pilot&amp;pilot={$DEATHTRAP["name"]}">{$DEATHTRAP["name"]}</a></span><br>
									<span class="fhead2"><a href="?p=corp&amp;corp={$DEATHTRAP["corp"]}">{$DEATHTRAP["corp"]}</a></span><br>
									<span class="fhead3">Has died {$DEATHTRAP["num"]} times flying the {$SHIP['typeName']}</span>
								</div>
							</div>
							{$found = 1}
							{/if}
							
							{if ($AVERAGEISK)}
							<hr size="1" width="75%">
							<div style="height: 66px;">
								<img src="{$IMAGEURL}/icons/64_64/icon07_12.png" class="item">

								<div style="padding-left: 70px;">
									<span class="fhead1">{$AVERAGEISK} ISK</span><br>
									<span class="fhead3">Is the average value of a {$SHIP['typeName']} kill</span>
								</div>
							</div>
							{$found = 1}
							{/if}


							{if ($COMMONWEAPON)}
							<hr size="1" width="75%">
							<div style="height: 66px;">
								<img src="http://image.eveonline.com/InventoryType/{$COMMONWEAPON["id"]}_64.png" class="item" width="64" height="64">
								<div style="padding-left: 70px;">
									<span class="fhead1">{$COMMONWEAPON["weapon"]}</span><br>
									<span class="fhead3">Is the most popular weapon on a {$SHIP['typeName']}</span>
								</div>
							</div>
							{$found = 1}
							{/if}

							{if ($LOADOUTS)}
							<hr size="1" width="75%">
							<div>
								<img src="{$IMAGEURL}/load.jpg" class="item">

								<div>
									<span class="fhead1">There are {number_format($NUMLOADOUTS)} loadouts posted.</span><br>

									<div style="padding-left: 70px;">
										<ul>
											{foreach $LOADOUTS as $k => $v}
												<li><a href="http://www.battleclinic.com/forum/index.php/topic,{$v['loadout_topic']}.msg{$v['loadout_post']}.html#msg{$v['loadout_post']}">{$v['subject']}</a> by {$v['real_name']}</li>
											{/foreach}
										</ul>
									</div>
								</div>
							</div>
							{$found = 1}
							{/if}

							{if ($found != 1)}
							Nothing is known about the {$SHIP['typeName']}
							{/if}
						</div>
						<div class="borderbl">
							<div class="borderbr"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<div style="margin-left: 510px;">

	<div class="top top380">
		<div class="boxheader">DETAILS</div>
	</div>

	<div class="sub sub380">
		<div class="boxheader">Fitting</div>
	</div>

	<div class="boxsmall">
		<div class="bordertl">
			<div class="bordertr">
				<div class="bordert">
					<div class="borderr">
						<div class="boxcontent">

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["cpuOutput"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Fitting']["cpuOutput"]["name"]}: {$ATTRIBUTES['Fitting']["cpuOutput"]["value"]}{$ATTRIBUTES['Fitting']["cpuOutput"]["unit"]}
								</div>
							</div>

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["powerOutput"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Fitting']["powerOutput"]["name"]}: {$ATTRIBUTES['Fitting']["powerOutput"]["value"]}{$ATTRIBUTES['Fitting']["powerOutput"]["unit"]}
								</div>
							</div>

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Miscellaneous']["upgradeCapacity"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Miscellaneous']["upgradeCapacity"]["name"]}: {$ATTRIBUTES['Miscellaneous']["upgradeCapacity"]["value"]}{$ATTRIBUTES['Miscellaneous']["upgradeCapacity"]["unit"]}
								</div>
							</div>

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["lowSlots"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Fitting']["lowSlots"]["name"]}: {$ATTRIBUTES['Fitting']["lowSlots"]["value"]}{$ATTRIBUTES['Fitting']["lowSlots"]["unit"]}
								</div>
							</div>

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["medSlots"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Fitting']["medSlots"]["name"]}: {$ATTRIBUTES['Fitting']["medSlots"]["value"]}{$ATTRIBUTES['Fitting']["medSlots"]["unit"]}
								</div>
							</div>

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["hiSlots"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Fitting']["hiSlots"]["name"]}: {$ATTRIBUTES['Fitting']["hiSlots"]["value"]}{$ATTRIBUTES['Fitting']["hiSlots"]["unit"]}
								</div>
							</div>

							{if ($ATTRIBUTES['Fitting']["turretSlotsLeft"]["value"])}
								<div style="height: 20px;">
									<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["turretSlotsLeft"]["icon"]}.png" class="item" width="16" height="16">
									<div style="padding-left: 20px;padding-top: 2px;">
										{$ATTRIBUTES['Fitting']["turretSlotsLeft"]["name"]}: {$ATTRIBUTES['Fitting']["turretSlotsLeft"]["value"]}{$ATTRIBUTES['Fitting']["turretSlotsLeft"]["unit"]}
									</div>
								</div>
							{/if}

							{if ($ATTRIBUTES['Fitting']["launcherSlotsLeft"]["value"])}
								<div style="height: 20px;">
									<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["launcherSlotsLeft"]["icon"]}.png" class="item" width="16" height="16">
									<div style="padding-left: 20px;padding-top: 2px;">
										{$ATTRIBUTES['Fitting']["launcherSlotsLeft"]["name"]}: {$ATTRIBUTES['Fitting']["launcherSlotsLeft"]["value"]}{$ATTRIBUTES['Fitting']["launcherSlotsLeft"]["unit"]}
									</div>
								</div>
							{/if}

							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$ATTRIBUTES['Fitting']["rigSlots"]["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$ATTRIBUTES['Fitting']["rigSlots"]["name"]}: {$ATTRIBUTES['Fitting']["rigSlots"]["value"]}{$ATTRIBUTES['Fitting']["rigSlots"]["unit"]}
								</div>
							</div>
						</div>
						<div class="borderbl">
							<div class="borderbr"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="sub sub380">
		<div class="boxheader">Attributes</div>
	</div>

	<div class="boxsmall">
		<div class="bordertl">
			<div class="bordertr">
				<div class="bordert">
					<div class="borderr">
						<div class="boxcontent">
							{foreach $ATTRIBUTES[5] as $tmp => $attribute}
							{if $attribute["name"]}
							<div style="height: 20px;">
								<img src="{$IMAGEURL}/icons/32_32/icon{$attribute["icon"]}.png" class="item" width="16" height="16">
								<div style="padding-left: 20px;padding-top: 2px;">
									{$attribute["name"]}: {$attribute["value"]}{$attribute["unit"]}</div>
							</div>
							{/if}
							{/foreach}
						</div>
						<div class="borderbl">
							<div class="borderbr"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>