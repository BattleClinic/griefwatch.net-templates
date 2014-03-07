{if ($ERROR)}
<div class="top top380"><span class="head3">ERROR</span></div>
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

<div style="padding-bottom: 8px;">

	<div class="box">
		<div class="boxheader">Engagement Details</div>
		<div class="boxcontent" style="height: 200px;">

			<div style="float: left;">
				<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'
						codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'
						width="192" height="192">
					<param name="movie" value="{$FLASHURL}/mapsystem.swf">
					<param name="wmode" value="transparent">
					<param name="flashvars" value="{$FLASHVARS}">
					<embed src="{$FLASHURL}/mapsystem.swf" width="192" height="192" quality="high"
						   flashvars="{$FLASHVARS}" wmode="transparent">
					</embed>
				</object>
			</div>

			<div style="text-align: center; font-size: 16px; padding-right: 192px; ">
				<span style="font-size: 20px; font-weight: bold;">{$SYSTEM} ({$SECSTATUS})</span><br>
				<span style="font-size: 16px; font-style: italic;">{$DATE}<br>{$START} - {$END}</span><br>
				<b>{$TOTALKILLS}</b> kills / <b>{$TOTALLOSSES}</b> kills<br>
				<b>{$ISKINFLICTED}</b> ISK / <b>{$ISKLOST}</b> ISK<br>
				<b>{$IPM2}</b> <acronym title="ISK Damage Per Minute">IDPM</acronym> / <b>{$IPM1}</b> <acronym title="ISK Damage Per Minute">IDPM</acronym><br>
				<b>{$KILLPOINTS}</b> points / <b>{$LOSSPOINTS}</b> points<br>
			</div>

		</div>
	</div>

</div>

<table width="100%" border="0">
	<tr valign="top">
		<td style="padding-right: 5px;" width="50%">

			<div class="box">
				<div class="boxheader">Us</div>
				<div class="boxcontent" style="padding: 4px;">

					<div class="box">
						<div class="boxheader2">Involved Parties</div>
						<div class="boxcontent" style="border-top: 0px;">
							{foreach $US as $pilot}
							<div style="min-height: 40px; padding-bottom: 1px;">
								<img src="http://image.eveonline.com/InventoryType/{$pilot["icon"]}_32.png" class="shipnb" width="32" height="32" alt="" title="{$pilot["type"]}">
								Name: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a><br>
								Corp: <a href="?p=corp&amp;corp={$pilot["corp"]}">{$pilot["corp"]}</a>  {if $pilot["alliance"] != ''}[<a href="?p=alliance&amp;alliance={$pilot['alliance']}">{$pilot['alliance']}</a>]{/if}<br>
								{if ($pilot["losses"])}
								Lost:
								{foreach $pilot["losses"] as $loss}
								<a href="?p=details&amp;kill={$loss[1]}">{$loss[0]}</a>
								{/foreach}
								{/if}
								<br>
							</div>
							{/foreach}
						</div>
					</div>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader2">Ships Fielded</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{capture name="str"}
								{foreach $USCLASSES as $class => $num}
									{$num} {$class}{if $num > 1}s{/if},
								{/foreach}
							{/capture}
							{$smarty.capture.str}
						</div>
					</div>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader2">Ships Lost<br></div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{capture name="str"}
								{foreach $CLASSLOST as $class => $num}
									{$num} {$class}{if $num > 1}s{/if},
								{/foreach}
							{/capture}
							{$smarty.capture.str}
						</div>
					</div>

				</div>
			</div>

		</td>
		<td style="padding-left: 5px;" width="50%">

			<div class="box">
				<div class="boxheader">Them</div>
				<div class="boxcontent" style="padding: 4px;">

					<div class="box">
						<div class="boxheader2">Involved Parties</div>
						<div class="boxcontent" style="border-top: 0px;">

							{foreach $THEM as $pilot}
							<div style="min-height: 40px; padding-bottom: 1px;">
								<img src="http://image.eveonline.com/InventoryType/{$pilot["icon"]}_32.png" class="shipnb" width="32" height="32" alt="" title="{$pilot["type"]}">
								Name: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a><br>
								Corp: <a href="?p=corp&amp;corp={$pilot["corp"]}">{$pilot["corp"]}</a> {if $pilot["alliance"] != ''}[<a href="?p=alliance&amp;alliance={$pilot['alliance']}">{$pilot['alliance']}</a>]{/if}<br>
								{if ($pilot["losses"])}
								Lost:
								{foreach $pilot["losses"] as $loss}
								<a href="?p=details&amp;kill={$loss[1]}">{$loss[0]}</a>
								{/foreach}
								{/if}
							</div>
							{/foreach}

						</div>
					</div>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader2">Ships Fielded</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{capture name="str"}
								{foreach $THEMCLASSES as $class => $num}
									{$num} {$class}{if $num > 1}s{/if},
								{/foreach}
							{/capture}
							{$smarty.capture.str}
						</div>
					</div>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader2">Ships Lost</div>
						<div class="boxcontent stats" style="border-top: 0px;">
							{capture name="str"}
								{foreach $CLASSKILL as $class => $num}
									{$num} {$class}{if $num > 1}s{/if},
								{/foreach}
							{/capture}
							{$smarty.capture.str}
						</div>
					</div>

				</div>
			</div>
		</td>
	</tr>
</table>