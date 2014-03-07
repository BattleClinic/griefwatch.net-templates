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
					<option value="statcorps">Kills by Corporation
					<option value="statalliances" selected>Kills by Alliance
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

<table width="100%" cellpadding="1" cellspacing="0" border="0" class="forumline genmed">
	<tr class="bar">
		<td width="40">Rank</td>
		<td width="80">Ships Lost</td>
		<td>Alliance</td>
	</tr>
	<tr class="foo">
		<td>#{$cnt}</td>
		<td>{$row['killed']}</td>
		<td><a href="?p=kills&amp;alliance={$row['alliance']}">{$row['alliance']}</a></td>
	</tr>
</table>
