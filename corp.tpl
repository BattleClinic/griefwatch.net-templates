{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Something went wrong</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr valign="top">
		<td>

			<div class="box">
				<div class="boxheader">Corporation Info</div>
				<div class="boxcontent" style="padding: 0px 0px 9px 0px;">
					<img src="{$LOGO}" width="64" height="64" class="corplogo">

					<div style="padding-left: 74px;">
						<span style="font-size: 20px;">{$CORPNAME} {$TICKER}</span><br>CEO: {$CEO}<br>Alliance:
						{if ($ALLIANCE)}
						<a href="?p=alliance&amp;alliance={$ALLIANCE}">{$ALLIANCE}</a>
						{else}
						None
						{/if}
						<br>Registered Members: {$PILOTCOUNT}<br>Kills / Losses: <a
							href="?p=kills&amp;icorp={$CORPNAME}">{$KILLS}</a> / <a
							href="?p=kills&amp;corp={$CORPNAME}">{$LOSSES}</a>
					</div>
				</div>
			</div>

			<div class="box" style="margin-top: 10px;">
				<div class="boxheader">Pilots</div>
				<div class="boxcontent" style="border-top: 0px;">
					<table width="100%" cellpadding="1" cellspacing="0" border="0" class="header">
						<tr class="headerline">
							<td><a href="?p=corp&amp;corp={$CORPNAME}&amp;sort=name">Pilot</a></td>
							<td width="80"><a href="?p=corp&amp;corp={$CORPNAME}&amp;sort=finalblows">Final Blows</a></td>
							<td width="80"><a href="?p=corp&amp;corp={$CORPNAME}&amp;sort=kills">Participation</a>
							</td>
							<td width="50"><a href="?p=corp&amp;corp={$CORPNAME}&amp;sort=podkills">Podkills</a>
							</td>
							<td width="80"><a href="?p=corp&amp;corp={$CORPNAME}&amp;sort=losses">Ships Lost</a>
							</td>
							<td width="80">K:D Ratio</td>
						</tr>
						{foreach $PILOTS as $pilot}
						<tr class="line">
							<td><a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a></td>
							<td>{$pilot["finalblows"]}</td>
							<td>{$pilot["kills"]}</td>
							<td>{$pilot["podkills"]}</td>
							<td>{$pilot["losses"]}</td>
							<td>{$pilot["ratio"]}</td>
						</tr>
						{/foreach}
					</table>
				</div>
			</div>

		</td>
		<td style="padding-left: 10px; width: 180px;">
			<a name="kills"></a>

			<div class="box" style="width: 180px;">
				<div class="boxheader">Corporation Ship Kills</div>
				<div class="boxcontent stats">
					{foreach $SHIPCLASSES_killed as $class => $killed}
					<a href="?p=kills&amp;icorp={$CORPNAME}&amp;class={$class}">{$class}</a> [{$killed}]<br>
					<img src="{$TEMPLATEURL}/images/bar.png" height="3" style="padding-top: 2px; padding-bottom: 1px; width: {(1+((int)(($killed*100)/max($SHIPCLASSES_killed)))/10)*15}px;"><br>
					{/foreach}
				</div>
			</div>

			<a name="losses"></a>

			<div class="box" style="width: 180px; margin-top: 10px">
				<div class="boxheader">Corporation Ship Losses</div>
				<div class="boxcontent stats">
					{foreach $SHIPCLASSES_losses as $class => $killed}
					<a href="?p=kills&amp;corp={$CORPNAME}&amp;class={$class}">{$class}</a> [{$killed}]<br>
					<img src="{$TEMPLATEURL}/images/bar.png" height="3" style="padding-top: 2px; padding-bottom: 1px; width: {(1+((int)(($killed*100)/max($SHIPCLASSES_losses)))/10)*15}px;"><br>
					{/foreach}
				</div>
			</div>

		</td>
	</tr>
</table>