{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Something went wrong</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr valign="top">
		<td width="410">

			<div class="box">
				<div class="boxheader">Ship Destruction on <a href="?p=kills&amp;date={$DATELINK}">{date("l jS F Y", $TIMESTAMP)}</a>, {date("H:i", $TIMESTAMP)}
				</div>
				<div class="boxcontent" style="padding: 2px; height: 91px;">
					<a href="?p=itemdb&amp;name={$VICTIM["type"]}">
						<img src="http://image.eveonline.com/InventoryType/{$VICTIM["icon"]}_64.png" class="shipicon" width="64" height="64" alt="">
					</a>
					Victim: <a href="?p=pilot&amp;pilot={$VICTIM["name"]}">{$VICTIM["name"]}</a><br>
					Alliance: {$VICTIM["alliance"]}<br>
					Corp: <a href="?p=corp&amp;corp={$VICTIM["corp"]}">{$VICTIM["corp"]}</a><br>
					Destroyed: <a href="?p=kills&amp;type={$VICTIM["type"]}">{$VICTIM["type"]}</a><br>
					System: {$VICTIM["system"]} ({$VICTIM["secstatus"]})<br>
					Damage Taken: {number_format($VICTIM['damage'])}<br/>
				</div>
			</div>

			<div class="box" style="margin-top: 10px;" id="items">
				<div class="boxheader">
					Destroyed Items //
					<a href="#" onclick="javascript:toggle('isk');">ISK Lost</a> //
					<a href="#" onclick="javascript:toggle('points');">Points Awarded</a> //
					<a href="#"  onclick="javascript:toggle('raw');");>Raw Mail</a></div>
				<div class="boxcontent" style="padding: 2px;">
					<iframe src="http://eve.battleclinic.com/ship_loadout_xml.php?loadFrom=griefwatch&id={$KILLID}&board={$BOARDID}&format=iframe" frameborder="0" style="width: 420px; height: 420px; border: none; margin: 0px; overflow: visible;"></iframe>
                    <div id="killmail">

                        {foreach $FITTING as $item}
                            <div>
                                <img class="item" src="http://image.eveonline.com/InventoryType/{$item["typeID"]}_32.png" width="16" height="16" alt="{$item['typeName']}" title="{$item['typeName']}">

                                <div style="padding: 2px 0px 7px 0px;">{$item["typeName"]} [<span class="dropped">{$item['dropped']}</span> / <span class="destroyed">{$item['destroyed']}</span>]
                                </div>
                            </div>
                        {/foreach}

                        {foreach $ITEMS as $item}
                            <div>
                                <img class="item" src="http://image.eveonline.com/InventoryType/{$item["typeID"]}_32.png" width="16" height="16" alt="{$item['typeName']}" title="{$item['typeName']}">

                                <div style="padding: 2px 0px 7px 0px;">{$item["typeName"]} [<span class="dropped">{$item['dropped']}</span> / <span class="destroyed">{$item['destroyed']}</span>]</div>
                            </div>
                        {/foreach}
                    </div>
				</div>
			</div>

			<div class="box" style="margin-top: 10px; display: none;" id="isk">
				<div class="boxheader">
					<a href="#" onclick="javascript:toggle('items');">Destroyed Items</a> //
					ISK Lost //
					<a href="#" onclick="javascript:toggle('points');">Points Awarded</a> //
					<a href="#" onclick="javascript:toggle('raw');");>Raw Mail</a>
				</div>
				<div class="boxcontent" style="padding: 2px;">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr valign="top">
							<td>{$VICTIM['type']} (<span class="destroyed">1</span>)</td>
							<td align="right" width="110">{number_format($VICTIM['isk'], 2)} ISK</td>
						</tr>

                        {foreach $FITTING as $item}
                            <tr valign="top">
                                <td>{$item['typeName']} (<span class="dropped">{$item['dropped']}</span> / <span class="destroyed">{$item['destroyed']}</span>)
                                </td>
                                <td align="right" width="110">{number_format($item['isk'], 2)} ISK</td>
                            </tr>
                        {/foreach}

						{foreach $ITEMS as $item}
                            <tr valign="top">
                                <td>{$item['typeName']} (<span class="dropped">{$item['dropped']}</span> / <span class="destroyed">{$item['destroyed']}</span>)</td>
                                <td align="right" width="110">{number_format($item['isk'], 2)} ISK</td>
                            </tr>
						{/foreach}

						<tr style="font-weight: bold;" class="dropped">
							<td style="border-top: 1px solid #cccccc">Total ISK Dropped</td>
							<td style="border-top: 1px solid #cccccc" align="right">{number_format($TOTALISKDROPPED, 2)} ISK</td>
						</tr>

						<tr style="font-weight: bold;" class="destroyed">
							<td style="border-top: 1px solid #cccccc">Total ISK DESTROYED</td>
							<td style="border-top: 1px solid #cccccc" align="right">{number_format($TOTALISKDESTROYED, 2)} ISK</td>
						</tr>

						<tr style="font-weight: bold;">
							<td style="border-top: 1px solid #cccccc">Total ISK Lost</td>
							<td style="border-top: 1px solid #cccccc" align="right">{number_format($TOTALISK, 2)} ISK</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="box" style="margin-top: 10px; display: none;" id="points">
				<div class="boxheader">
					<a href="#" onclick="javascript:toggle('items');">Destroyed Items</a> //
					<a href="#" onclick="javascript:toggle('isk');">ISK Lost</a> //
					Points Awarded //
					<a href="#" onclick="javascript:toggle('raw');");>Raw Mail</a>
				</div>
				
				<div class="boxcontent" style="padding: 2px; height: 72px;">
					<div title="Griefwatch Point System" class="shipicon gps">{$POINTS}</div>
					<div style="padding-top: 4px;">
						<span style="font-weight: bold; text-decoration: underline">How awarded points are calculacted:</span><br>
						The GPS score is based on the size of the ship killed, the average size of the killing ships,
						and the number of players involved on the mail.
					</div>
				</div>
			</div>

			<div class="box" style="margin-top: 10px; display: none;" id="raw">
				<div class="boxheader">
					<a href="#" onclick="javascript:toggle('items');">Destroyed Items</a> //
					<a href="#" onclick="javascript:toggle('isk');">ISK Lost</a> //
					<a href="#" onclick="javascript:toggle('points');">Points Awarded</a> //
					Raw Mail
				</div>
				<div class="boxcontent" style="padding: 2px;">
					{$RAWMAIL}
				</div>
			</div>

			<script type="text/javascript">
				<!--
				var active = document.getElementById('items');
				function toggle(a) {
				active.style.display = 'none';
				active = document.getElementById(a);
				active.style.display = 'block';
				}
-->
			</script>

			<div class="box" style="margin-top: 10px;">
				<div class="boxheader">Comments</div>
				<div class="boxcontent">
					{foreach $COMMENTS as $comment}
					<div style="padding: 2px;">
						<b><a href="?p=qsearch&amp;w=pilot&amp;q={$comment["name"]}">{$comment["name"]}</a></b>
						on <b>{$comment["date"]}</b>:<br>
						{$comment["comment"]}
					</div>
					{/foreach}
					<div style="border-top: 1px solid #111111; margin-top: 4px;">
						<b>Add comment:</b><br>

						<form method="POST" action="?p=addcomment">
							<input type="hidden" name="id" value="{$KILLID}">
							<table border="0" cellspacing="0" width="100%">
								<tr valign="top">
									<td colspan="2"><textarea name="comment" style="width: 390px; height: 70px;"></textarea></td>
								</tr>
								<tr>
									<td><b>Name:</b> <input type="text" name="name" maxlength="80" size="15"></td>
									<td><b>Password:</b> <input type="password" name="password" size="10"></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" value="Add comment"></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>


		</td>
		<td width="370" style="padding-left: 10px;">

			<div class="box">
				<div class="boxheader">Involved Parties {$SOURCE}</div>
				<div class="boxcontent" style="padding: 2px">
					{foreach $INVOLVED as $involved}
					<img src="http://image.eveonline.com/InventoryType/{$involved["icon"]}_64.png" class="shipicon" width="64" height="64" alt="">
					Name: <a href="?p=pilot&amp;pilot={$involved["name"]}">{$involved["name"]}</a> {if $involved["finalblow"] == 1} (Final blow){/if}
					<br>
					{if ($involved["NPC"] != TRUE)}
					Alliance: {$involved["alliance"]}<br>
					Corp: <a href="?p=corp&amp;corp={$involved["corp"]}">{$involved["corp"]}</a><br>
					Ship: {$involved["type"]}<br>
					Weapon: {$involved["weapon"]}<br/>
					Damage Done: {number_format($involved['damage'])}<br>
					<br>
					{else}
					Corp: {$involved["Corp"]}<br><br><br><br><br>
					{/if}
					{/foreach}
				</div>
			</div>

			{if ($RELATED)}
			<div class="box" style="margin-top: 10px;">
				<div class="boxheader">Related Death</div>
				{foreach $RELATED as $kill}
				<div class="boxcontent" style="padding: 2px; height: 75px;">
					<img src="http://image.eveonline.com/InventoryType/{$kill["icon"]}_64.png" class="shipicon" width="64" height="64" alt="">
					Date: {$kill["date"]}<br>
					Destroyed: <a href="?p=kills&amp;type={$kill["type"]}">{$kill["type"]}</a><br>
					System: <a href="?p=system&amp;system={$kill["system"]}">{$kill["system"]}</a><br>
					<br>
					<a href="?p=details&amp;kill={$kill["id"]}">View Details</a>
				</div>
				{/foreach}
				{if (count($RELATED) > 1)}
				<div style="margin-left: 246px; margin-top: -2px;">
					<a href="?p=engagement&amp;kill={$RELATED[0]["id"]}"><img src="{$TEMPLATEURL}/images/vieweng.gif" border="0"></a>
				</div>
				{/if}
			</div>
			{/if}

		</td>
	</tr>
</table>