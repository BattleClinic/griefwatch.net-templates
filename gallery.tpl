{if ($ERROR)}
<div class="header">Error</div>
{$ERROR}
{return}
{/if}

<div class="box">
	<div class="boxheader">Image Gallery</div>

	<div class="boxcontent" style="padding: 2px;">

		{if ($GALLERY)}
		{if ($GALLERYTYPE == 1)}
		{foreach $GALLERY as $image}
		<a href="{$GALLERYURL}/{$image["file"]}"><img src="{$GALLERYURL}/{$image["thumb"]}" class="icon"></a>
		{/foreach}
		{else}
		<div id="gallery"></div>
		<script>
		function flashPutHref(href) { location.href = href; }

		if(location.href.indexOf('#') == -1) {
		location.href = '#id=images&num={count($GALLERY)}';
		}


		var so = new SWFObject("{$STATICURL}/slideshow.swf", "gallery", "800", "600", "8", "0A0A0A");
		so.addParam('FlashVars', 'xmlfile={$STATICURL}/slideshow_xml.php&board={$BOARDID}&initialURL=' + escape(document.location));
		so.addParam('allowFullScreen', true);
		so.write("gallery");
		</script>
		{/if}
		{else}
		No images have been posted.
		{/if}
	</div>
</div>

<div class="box" style="margin-top: 10px; width: 400px;">
	<div class="boxheader">Upload New Image</div>
	<div class="boxcontent" style="padding: 2px;">
		<form action="?p=gallery" method="post" enctype="multipart/form-data">
			<input type="hidden" name="MAX_FILE_SIZE" value="2097152">
			<table cellspacing="1" cellpadding="0" border="0">
				<tr>
					<td>File:</td>
					<td><input type="file" name="file" size="20"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" size="20"></td>
				</tr>
			</table>
			Accepted filetypes: GIF, JPG, PNG<br>
			<input type="submit" value="Upload">
		</form>
	</div>
</div>