{if ($ERROR)}
<div class="box" style="width: 400px; margin: auto;">
	<div class="boxheader">Something went wrong</div>
	<div class="boxcontent" style="text-align: center; padding: 2px;">{$ERROR}</div>
</div>
{return}
{/if}

<div class="box">
	<div class="boxheader">Original Kill Mail [<a href="?p=details&amp;kill={$KILLID}">Detailed Killmail</a>]</div>
	<div class="boxcontent">
		<pre>{$KILLMAIL}</pre>
	</div>
</div>