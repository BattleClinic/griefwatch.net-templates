{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Something went wrong</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

{if ($FLASHVARS)}
<div class="box">
	<div class="boxheader">Recent Activity</div>
	<div class="boxcontent" style="padding: 10px;">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr valign="top">
				<td>
					<div class="box" style="text-align: center; width: 520px">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d">{$HEADER}</div>
						<div class="boxcontent" style="border-top: 0px;">
							<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'
									codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'
									width="512" height="512">

								<param name="movie" value="http://static.griefwatch.net/data/mapl.swf">
								<param name="wmode" value="transparent">
								<param name="flashvars" value="{$FLASHVARS}">
								<embed src="http://static.griefwatch.net/data/mapl.swf" width="512" height="512"
									   quality="high" flashvars="{$FLASHVARS}" wmode="transparent">
								</embed>
							</object>

						</div>
					</div>
				</td>
				<td>
					{$var = shuffle($REGIONS)}
					{foreach array_splice($REGIONS, 0, 2) as $region}
					<div class="box" style="width: 200px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d; text-align: center;">{$region["name"]}</div>
						<div class="boxcontent" style="border-top: 0px; text-align: center; padding-bottom: 4px;">
							<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'
									codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'
									width="200" height="200">
								<param name="movie" value="{$FLASHURL}/maps.swf">
								<param name="wmode" value="transparent">
								<param name="flashvars" value="map={$region["xml"]}&amp;{$BASEVARS}">
								<embed src="{$FLASHURL}/maps.swf" width="200" height="200" quality="high"
									   flashvars="map={$region["xml"]}&amp;{$BASEVARS}" wmode="transparent">
								</embed>
							</object>
							Days back:
							{foreach $region["days"] as $day}
							<a href="?p=activity&amp;ra={$region["linkname"]}_{$day}">{$day}</a>
							{/foreach}
							<br>
						</div>
					</div>
					<br>
					{/foreach}
				</td>
			</tr>
		</table>

	</div>
</div>
{else}

<div class="box">
	<div class="boxheader">Recent Activity</div>
	<div class="boxcontent" style="text-align: center">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			{foreach array_chunk($REGIONS, 3, TRUE) as $regionset}
			<tr>
				{foreach $regionset as $region}
				<td align="center" style="padding-top: 10px;">
					<div class="box" style="width: 206px;">
						<div class="boxcontent"
							 style="font-weight: bold; padding: 2px; border-bottom: 0px; background: #1d1d1d">{$region["name"]}</div>
						<div class="boxcontent" style="border-top: 0px;">
							<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'
									codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'
									width="200" height="200">
								<param name="movie" value="{$FLASHURL}/maps.swf">
								<param name="wmode" value="transparent">
								<param name="flashvars" value="map={$region["xml"]}&amp;{$BASEVARS}">
								<embed src="{$FLASHURL}/maps.swf" width="200" height="200" quality="high"
									   flashvars="map={$region["xml"]}&amp;{$BASEVARS}" wmode="transparent">
								</embed>
							</object>

							<br>Days back:
							{foreach $region["days"] as $day}
							<a href="?p=activity&amp;ra={$region["linkname"]}_{$day}">{$day}</a>
							{/foreach}
							<br><br></div>
					</div>
				</td>
				{/foreach}
			</tr>
			{/foreach}
		</table>
		<br></div>
</div>
{/if}