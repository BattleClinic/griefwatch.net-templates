<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="robots" content="nofollow">
	<title>{$TITLE}</title>
	<link href="{$TEMPLATEURL}/style.css" rel="stylesheet" type="text/css">
	{if !empty($CSS)}
		<link href="{$CSS}" rel="stylesheet" type="text/css">
	{/if}
	<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
	<script src="{$STATICURL}/swfobject.js"></script>

	{if ($EXPIRED == 1)}
		{$GAM}
	{/if}

</head>
<body>
{if ($EXPIRED == 1)}
<div id="gwAdvertTop" style="padding: 5px; text-align: center; width: 100%">
	<!-- Ad slot -->
	<script type="text/javascript">
		GA_googleFillSlot("GriefwatchInactiveTop");
	</script>
	<!-- Ad slot -->
</div>
{/if}

<div class="main">
	<img src="{$BANNER}" alt="{$TITLE}"><br>

	<div class="content">

		{if ($EXPIRED == 1)}
		<div id="gwAdvertExpired" style="text-align: center; width: 100%">
			<!-- Ad slot -->
			<script type="text/javascript">
				GA_googleFillSlot("GriefwatchTop");
			</script>
			<!-- Ad slot -->
		</div>
		{/if}

		<table width="100%" cellspacing="0" cellpadding="5" border="0" align="center">
			<tr>
				<td valign="top" width="180">

					<!-- Navigation -->
					<div class="box">
						<div class="boxheader">Kill List Navigation</div>
						<div class="boxcontent" style="padding: 2px;">
							<b>Home</b><br>
							{$NAVIGATION}
							<hr size="1" width="80%">
							<b>Statistics</b><br>
							&raquo; <a href="?p=corplist">Corporations</a><br>
							&raquo; <a href="?p=alliances">Alliances</a><br>
							&raquo; <a href="?p=ranking">Ranking</a><br>
							&raquo; <a href="?p=monthly">Monthly Stats</a><br>
							&raquo; <a href="?p=top10">Top 10 Summary</a><br>
							&raquo; <a href="?p=activity">Region Activity</a><br>
							&raquo; <a href="?p=search">Search</a><br>
							<hr size="1" width="80%">
							<b>{$MEMBERHEADER}</b><br>
							{foreach $MEMBERLINKS as $link}
							&raquo; {$link}<br>
							{/foreach}
							<hr size="1" width="80%">
							<b>Tools</b><br>
							&raquo; <a href="?p=addmail">Add Kill Mail</a><br>
							<!--&raquo; <a href="/itemdb/" target="_blank">Ship Database</a><br>-->
							&raquo; <a href="http://sigs.griefwatch.net/?board={$PREFIX}">Signatures</a><br>
							&raquo; <a href="http://admin.griefwatch.net/">Administration Panel</a><br>
						</div>
					</div>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader">Quick Search</div>
						<div class="boxcontent" style="padding: 2px;">
							<form method="GET" action="?" onsubmit="return check()" id="qsearch">
								<input type="hidden" name="p" value="qsearch">
								<input type="text" style="width: 160px;" name="q"><br>
								<select style="width: 120px;" name="w">
									<option value="pilot">Pilot
									<option value="corp">Corporation
									<option value="alliance">Alliance
								</select>&nbsp;<input type="submit" value="Go">
							</form>
						</div>
					</div>
					<script type="text/javascript">
						<!--
	  var orig = document.getElementById("qsearch").innerHTML;
	  function check()
	  {
						if (document.forms[0].q.value.length < 3)
						{
						var a = document.getElementById("qsearch");
						a.innerHTML = "Search string too short" + orig;
						return false;
						}
						}
-->
					</script>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader">GPS Ranking</div>
						<div class="boxcontent stats">
							<div style="text-align: center">
								<img src="http://image.eveonline.com/Character/{(int)$RANKING[1]["eveid"]}_64.jpg" class="icon" width="64" height="64"><br>
								<b><a href="?p=pilot&amp;pilot={$RANKING[1]["name"]}">{$RANKING[1]["name"]}</a>
								</b><br>
								(Most dangerous of us all)
							</div>
							<hr size="1" width="80%" align="center">
							{foreach $RANKING as $num => $pilot}
							{$num}: <a href="?p=pilot&amp;pilot={$pilot["name"]}">{$pilot["name"]}</a>
							[{$pilot["points"]}]<br>
							<img src="{$TEMPLATEURL}/images/bar.png" width="{$pilot["bar"]*14}" height="3" style="padding-top: 2px; padding-bottom: 1px;"><br>
							{/foreach}
						</div>
					</div>

					<div class="box" style="margin-top: 10px;">
						<div class="boxheader">Griefwatch</div>
						<div class="boxcontent" style="text-align: center;">
							<br><a href="http://www.griefwatch.net/"><b>IMPORTANT NOTICE</b></a><br><br>
							Killboard Copyright &copy;<br><a href="http://www.griefwatch.net/">Griefwatch.net</a><br><br>
							EVE Graphics Copyright &copy;<br><a href="http://www.ccpgames.com/">CCP Games</a><br><br>
							<a href="<{$RSSURL}">RSS Feed</a><br><br>
							<a href="{$DSSLINK}">Buy EVE Time codes</a><br><br>
						</div>
					</div>

				</td>

				<td valign="top">
					<!-- Content begin -->
					{$BODY}
					<!-- Content end -->
				</td>
			</tr>
		</table>
	</div>
</div>

<div align="center" style="padding-top: 10px;" class="copyright">
	<div class="poweredby"><a href="http://www.griefwatch.net/"><img src="{$TEMPLATEURL}/images/nil.gif" width="150" height="15" border="0"></a></div>
</div>
<br>

{if ($EXPIRED == 1)}
<div id="gwAdvertBottom" style="padding: 5px; text-align: center; width: 100%">
	<!-- Ad slot -->
	<script type="text/javascript">
		GA_googleFillSlot("GriefwatchInactiveBottom");
	</script>
	<!-- Ad slot -->
</div>
{/if}

{$GAN}

</body>
</html>
