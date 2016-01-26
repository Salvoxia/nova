<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
	<meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
	<title>{$kb_title}</title>
	<link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />
{$page_headerlines}
	<script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
</head>
<body {$on_load} style="height: 100%">
{$page_bodylines}
	<div id="popup"></div>
	<div id="stuff1"></div>
	<div id="stuff2"></div>
	<div id="stuff3"></div>
	<div id="stuff4"></div>
<div id="headerbar">
			<div class="containerbar">
				{if $banner}<div id="navlogo">
{if $bannerswf=='true'}
			<object type="application/x-shockwave-flash" data="{$kb_host}/banner/{$banner}" height="35" width="400">
				<param name="movie" value="myFlashMovie.swf" />
			</object>
{else}
		<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="{$banner_y}"{/if} />
		</a>
{/if}

			</div>
{/if}
      
				<div id="navbar">
					<ul>
						{section name=item loop=$menu}
						<li><a class="link" href="{$menu[item].link}">{$menu[item].text}</a></li>
{/section}
					</ul>
				</div>
			</div>
</div>
	<div id="toparea">
		<div id="topbox" class="wrapper">
<div id="userarea"></div>
			</div>
		</div>
	<div align="center" id="popup" style="display:none;
		position:absolute;
		top:217px; width:99%;
		z-index:3;
		padding: 5px;">
	</div>
				<div id="page-title">{$page_title}</div>												

<div id="bodybox" class="boxwrapper">
	<div id="bdybox-l">
		<div id="bdybox-b">
			<div id="bdybox-br">
				<div id="bdybox-bl">
					<div id="bdybox-t">
						<div id="bdybox-tr">
							<div id="bdybox-tl">
{if $message}
		<div id="boardmessage">{$message}</div>
{/if}
		<div id="content">
{$content_html}
		</div>
{if $context_html}
		<div id="context">
{$context_html}
		</div>
{/if}
{if $profile}
		<div id="profile"><!-- profile -->{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, Total time {$profile_time}s<!-- /profile --></div>
{/if}

	<div id="footerarea">
		<span class="smalltext"><font size="1">
<br> Nova theme by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a>.</font><br/>
	</span>
	</div>
		<div class="counter"></div>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br><br>
</body>
</html>
