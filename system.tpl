{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Something went wrong</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<div class="box">
	<div class="boxheader">System Information</div>
	<div class="boxcontent" style="height: 205px;">
		<div style="background-image: url('{$MAPURL}/systems/{$SYSTEM}.gif'); background-repeat: no-repeat; height: 205px; text-align: center">
<span style="font-size: 22px;">{$SYSTEM} ({$SECSTATUS})<br>
	{$REGION}<br></span>
			<br>
			Ships Destroyed: <a href="?p=kills&system={$SYSTEM}">{$TOTALKILLS}</a> / Ships Lost: <a
				href="?p=losses&system={$SYSTEM}">{$TOTALLOSSES}</a>
		</div>
	</div>