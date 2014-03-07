<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="boxtl" width="4" height="23"></td>
		<td class="boxtop boxheader">Statistics for {$TITLE}</td>
		<td class="boxtr" width="4" height="23"></td>
	</tr>
	<tr>
		<td class="boxl" width="4"></td>
		<td class="boxcontent stats" align="center">
			<form>
				Show detailed statistics:
				<select name="p" onchange="javascript:this.form.submit()">
					<option value="statsummary">Summaries
					<option value="statdaily" selected>Daily
					<option value="statcorps">Kills by Corporation
					<option value="statalliances">Kills by Alliance
					<option value="statships">Ships Destroyed
					<option value="statitems">Items Destroyed
				</select>
			</form>
		</td>
		<td class="boxr" width="4"></td>
	</tr>
	<tr>
		<td class="boxbl" width="4" height="4"></td>
		<td class="boxbot"></td>
		<td class="boxbr" width="4" height="4"></td>
	</tr>
</table>

<br>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	{foreach DAILYSET as $daily}
	<tr valign="top">
		{foreach $daily as $yearmonth => $days}
		<td>

			<table border="0" cellpadding="0" cellspacing="0" width="230">
				<tr>
					<td class="boxtl" width="4" height="23"></td>
					<td class="boxtop boxheader">{$yearmonth}</td>
					<td class="boxtr" width="4" height="23"></td>
				</tr>
				<tr>
					<td class="boxl" width="4"></td>
					<td class="boxcontent stats">
						{foreach $days as $day}
						{$day["date"]}:{$day["num"]}<br>
						{/foreach}
					</td>
					<td class="boxr" width="4"></td>
				</tr>
				<tr>
					<td class="boxbl" width="4" height="4"></td>
					<td class="boxbot"></td>
					<td class="boxbr" width="4" height="4"></td>
				</tr>
			</table>
			<br>
		</td>
		{/foreach}
	</tr>
	{/foreach}
