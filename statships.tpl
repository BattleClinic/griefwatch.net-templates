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
					<option value="statalliances">Kills by Alliance
					<option value="statships" selected>Ships Destroyed
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

<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr valign="top">

		<td>
			<table border="0" cellpadding="0" cellspacing="0" width="230">
				<tr>
					<td class="boxtl" width="4" height="23"></td>
					<td class="boxtop boxheader">Ship Types</td>
					<td class="boxtr" width="4" height="23"></td>
				</tr>
				<tr>
					<td class="boxl" width="4"></td>
					<td class="boxcontent stats">

						{foreach $SHIPTYPES as $num => $ship}
						{$num}: {$ship["Name"]} ({$ship["Destroyed"]})<br>
						<img src="killboard/img/gradient_blue.png" width="{$ship["Width"]}" height="8"><br>
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

		</td>
		<td>

			<table border="0" cellpadding="0" cellspacing="0" width="230">
				<tr>
					<td class="boxtl" width="4" height="23"></td>
					<td class="boxtop boxheader">Ship Classes</td>
					<td class="boxtr" width="4" height="23"></td>
				</tr>
				<tr>
					<td class="boxl" width="4"></td>
					<td class="boxcontent stats">
						{foreach $SHIPCLASSES as $class => $num}
						{$num}: {$class} ({$num})<br>
						<img src="killboard/img/gradient_blue.png" width="{$ship["Width"]}" height="8"><br>
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

		</td>
	</tr>
</table>
