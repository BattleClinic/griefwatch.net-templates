<div class="box">
	<div class="boxheader">Damage Inflicted</div>
	<div class="boxcontent">

		{foreach $ITEMS as $catname => $groups}
		<b>{$catname}</b><br>
		{foreach $groups as $group}
		&nbsp;&nbsp;{$group["groupname"]} {$group["isk"]} ISK<br>
		{/foreach}
		{/foreach}

	</div>
</div>
