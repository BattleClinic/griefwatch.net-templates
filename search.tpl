<div class="box">
	<div class="boxheader">Search</div>
	<div class="boxcontent">

		<script language="javascript">
			<!--
   function mangle()
   {
			for (i = 1; i < document.forms[1].length; i++)
			{
			box = document.forms[1].elements[i];
			if ((box.type == 'text' && !box.value) || (box.type == 'select-one' && box.selectedIndex == 0))
			{
			box.disabled = true;
			}
			}
			}
-->
		</script>

		<form action="?" method="get" onsubmit="mangle();">
			<input type="hidden" name="p" value="search">
			<table width="100%" border="0">

				<tr>
					<td colspan="6">
						<span style="padding-left: 4px; font-size: 13px; font-weight: bold;">Victim:</span>
					</td>
				</tr>

				<tr>
					<td>Name:</td>
					<td><input name="vname" type="text" size="25" value="{$smarty.request.vname}"></td>
					<td>Corporation:</td>
					<td><input name="vcorp" type="text" size="25" value="{$smarty.request.vcorp}"></td>
					<td>Ship:</td>
					<td><input name="vtype" type="text" size="25" value="{$smarty.request.vtype}"></td>
				</tr>

				<tr>
					<td>System:</td>
					<td><input name="system" type="text" size="25" value="{$smarty.request.system}"></td>
					<td>Alliance:</td>
					<td><input name="valliance" type="text" size="25" value="{$smarty.request.valliance}"></td>
					<td>Class:</td>
					<td><select name="vclass">
						<option value="">Any
						{foreach $SHIPVCLASSES as $class}
							<option {$class[1]}>{$class[0]}
						{/foreach}
					</select></td>
				</tr>

				<tr>
					<td colspan="6">
						<span style="padding-left: 4px; font-size: 13px; font-weight: bold;">Involved parties:</span>
					</td>
				</tr>

				<tr>
					<td>Name:</td>
					<td><input name="iname" type="text" size="25" value="{$smarty.request.iname}"></td>
					<td>Corporation:</td>
					<td><input name="icorp" type="text" size="25" value="{$smarty.request.icorp}"></td>
					<td>Ship:</td>
					<td><input name="itype" type="text" size="25" value="{$smarty.request.itype}"></td>
				</tr>

				<tr>
					<td>Weapon Used:</td>
					<td><input name="weapon" type="text" size="25" value="{$smarty.request.weapon}"></td>
					<td>Alliance:</td>
					<td><input name="ialliance" type="text" size="25" value="{$smarty.request.ialliance}"></td>
					<td>Class:</td>
					<td><select name="iclass">
						<option value="">Any
						{foreach $SHIPICLASSES as $class}
							<option {$class[1]}>{$class[0]}
						{/foreach}
					</select></td>
				</tr>

				<tr>
					<td colspan="6">
						<span style="padding-left: 4px; font-size: 13px; font-weight: bold;">Dates:</span>
					</td>
				</tr>

				<tr>
					<td>Last:</td>
					<td colspan="3"><select name="days">
						<option value="">
						{for $days = 1 to 6}
							<option>{$days}
						{/for}
					</select> days or <select name="weeks">
						<option value="">
						{for $weeks = 1 to 3}
							<option>{$weeks}
						{/for}
					</select> weeks or <select name="months">
						<option value="">
						{for $months = 1 to 12}
							<option>{$months}
						{/for}
					</select> months
					</td>
				</tr>

				<tr>
					<td colspan="6">
						<span style="padding-left: 4px; font-size: 13px; font-weight: bold;">Miscellaneous:</span>
					</td>
				</tr>
				<tr>
					<td>Limit to:</td>
					<td colspan="5">
						<select name="limit">
							{foreach $LIMITS as $limit}
								<option value="{$limit[1]}"{$limit[2]}>{$limit[0]}
							{/foreach}
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="6" align="center"><input type="submit" value="Search"> <input type="reset" value="Reset"></td>
				</tr>
			</table>
		</form>

	</div>
</div>
<br>

{if !empty($ERROR)}
	<div class="box" style="width: 400px; margin: auto;">
		<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
	</div>
{else}

{if !empty($KILLS)}

	{foreach $KILLS as $date => $killset}
	<div class="box">
		<div class="boxheader">{date("l jS F, Y", strtotime($date))}</div>
		<div class="boxcontent" style="border-top: 0px;">
			<table width="100%" cellpadding="1" cellspacing="0" border="0" class="header">
				<tr class="headerline">
					<td width="60">Time</td>
					<td width="170">Victim</td>
					<td width="250">Corporation</td>
					<td width="140" colspan="2">Ship</td>
					<td width="90">System</td>
					<td width="16">&nbsp;</td>
				</tr>
				{foreach $killset as $kill}
				<tr class="line">
					<td>&nbsp;{$kill["time"]}</td>
					<td><a href="?p=pilot&amp;pilot={$kill["name"]}">{$kill["name"]}</a></td>
					<td><a href="?p=corp&amp;corp={$kill["corp"]}">{$kill["corp"]}</a></td>
					<td width="14"><img src="http://image.eveonline.com/InventoryType/{$kill["icon"]}_32.png" alt="" width="14" height="14" class="icon">
					</td>
					<td width="126"><a href="?p={$PAGE}&amp;type={$kill["type"]}">{$kill["type"]}</a></td>
					<td>{$kill["systemlink"]}</td>
					<td align="center"><a href="?p=details&amp;kill={$kill["id"]}">
						<div class="mailicon"><img src="{$TEMPLATEURL}/images/nil.gif" border="0" title="View killmail"
												   alt="View kill" width="16" height="12"></div>
						</a></td>
				</tr>
				{/foreach}
			</table>

		</div>
	</div>
	<div style="padding: 5px;"></div>
	{/foreach}


	{if !empty($PAGES)}
	<div class="box" style="width: 400px; margin: auto;">
		<div class="boxcontent" style="padding: 2px; text-align: center;">
			Page:
			{foreach $PAGES as $page => $num}
			{if ($num == $CURPAGE)}
			{$page}
			{else}
			<a href="?{$FILTER}&amp;page={$num}">{$page}</a>
			{/if}
			{/foreach}
			({$TOTALENTRIES} entries)
			{/if}
	{/if}
{/if}
