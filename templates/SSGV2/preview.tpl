[short-preview]
<article class="item">
	<div class="item__art">
		[xfgiven_poster]<img class="cover-image" src="[xfvalue_thumb_url_poster]" alt="[xfvalue_image_description_poster]">[/xfgiven_poster]
		[xfnotgiven_poster]<span class="visual"></span>[/xfnotgiven_poster]
	</div>
	<div class="item__body">
		<div class="item__top meta">
			<span class="chips chips--rub">{link-category}</span>
			<time class="meta-item" datetime="{date=Y-m-d}">[day-news]{date}[/day-news]</time>
		</div>
		<h3 class="item__title">[full-link]{title}[/full-link]</h3>
		<div class="item__text text">{short-story}</div>
	</div>
</article>
[/short-preview]
[full-preview]
<article class="fullstory">
	<header class="fullstory__head">
		<div class="story-top">
			<span class="chips chips--rub">{link-category}</span>
		</div>
		<h1 class="fullstory__title">{title}</h1>
		<div class="fullstory__meta">
			<time class="meta-item" datetime="{date=Y-m-d}">[day-news]{date}[/day-news]</time>
		</div>
	</header>
	[xfgiven_poster]
	<div class="fullstory__media">
		<img class="cover-image" src="[xfvalue_image_url_poster]" alt="[xfvalue_image_description_poster]">
	</div>
	[/xfgiven_poster]
	[xfnotgiven_poster]
	<div class="fullstory__media fullstory__media--plain">
		<span class="visual"></span>
	</div>
	[/xfnotgiven_poster]
	<div class="story-text text">{full-story}</div>
</article>
[/full-preview]
[static-preview]
<article class="panel staticpage">
	<div class="section-heading">
		<div>
			<h1>{description}</h1>
			<p class="static-meta">
				<time class="meta-item">{date}</time>
			</p>
		</div>
	</div>
	<div class="story-text text">{static}</div>
	{pages}
</article>
[/static-preview]
