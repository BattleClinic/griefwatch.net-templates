<div class="box">
	<div class="boxheader">Quick Search</div>

	<div class="boxcontent" style="padding: 2px">
		<b>Results for ({$SEARCH})</b>:<br>
	{if ($MODE == "pilot")}
		{foreach $RESULTS as $result}
			<img src="http://image.eveonline.com/Character/{$result["eveid"]}_32.jpg" width="32" height="32" style="float: left; margin-right: 4px;" class="icon">
			<a href="?p=pilot&amp;pilot={$result["name"]}" name="result">{$result["name"]}</a>
			[{$result["kills"]} kills, {$result["losses"]}
			losses, {round($result["killpoints"]-$result["losspoints"])} points]<br>
			<span style="font-style: italic;">{$result["corp"]} {if $result["alliance"] != ''}[{$result['alliance']}]{/if}</span><br>
			<br>
		{/foreach}
	{elseif ($MODE =="corp")}
		{foreach $RESULTS as $result}
			<img src="{$IMAGEURL}/corplogos/{$result["ticker"]}.gif" width="32" height="32" style="float: left; margin-right: 4px;" class="icon">
			<a href="?p=corp&amp;corp={$result["name"]}" name="result">{$result["name"]}</a>
			[{$result["kills"]} kills, {$result["losses"]}
			losses, {round($result["killpoints"]-$result["losspoints"])} points]<br>
			<span style="font-style: italic;">{if $result["alliance"] == ''}
				No known alliance{else}{$result["alliance"]}{/if}</span>
			<br><br>
		{/foreach}
	{elseif ($MODE == "alliance")}
		{foreach $RESULTS as $result}
			<img src="{$IMAGEURL}/alliancelogos/{$result["logo"]}.png" width="32" height="32" style="float: left; margin-right: 4px;" class="icon">
			<a href="?p=alliance&amp;alliance={$result["name"]}" name="result">{$result["name"]}</a>
			[{$result["kills"]} kills, {$result["losses"]}
			losses, {round($result["killpoints"]-$result["losspoints"])} points]<br>
			<br><br>
		{/foreach}
	{/if}
	</div>
</div>

<script type="text/javascript">
	<!--
	var a = document.getElementsByName("result");
	for (i = 0; i < a.length; i++)
	{
	var b = a[i].innerHTML;
	b = b.replace(/({$SEARCH})/ig, '<span class="result">$1</span>');
	a[i].innerHTML = b;
	}
	//-->
</script>
