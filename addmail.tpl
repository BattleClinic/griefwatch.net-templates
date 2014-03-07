{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Add New Mail</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<!--
  function disable()
  {
document.forms[1].sub.disabled = true;
return false;
}
-->

<div class="box">
	<div class="boxheader">Add Kill Mail</div>
	<div class="boxcontent stats">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr valign="top">
				<td width="100"><b>Kill Mail</b><br>
					Paste the kill mail in the text area to the right exactly how it was sent to you by CONCORD,
					including any notice about the mail being truncated.
				</td>
				<td>
					<form action="?p=addmail" method="post" onsubmit="return disable();" accept-charset="UTF-8">
						<textarea name="mail" cols="80" rows="30"></textarea>
				</td>
			</tr>
			<tr>
				<td><b>Password</b></td>
				<td>
					<input type="password" name="password"><br>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" value="Add" name="sub">&nbsp;<input type="reset" value="Clear"
																			 style="margin-top: 4px;">
					{if ($EXPIRY)}
					<img src="{$IMAGEURL}/within{$EXPIRY}.gif"
						 title="Killboard expires within {$EXPIRY} days">
					{/if}
					</form>
				</td>
			</tr>
		</table>
	</div>
</div>