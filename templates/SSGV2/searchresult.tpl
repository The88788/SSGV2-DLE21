[searchposts]
	[fullresult]
		{include file="shortstory.tpl"}
	[/fullresult]
	[shortresult]
<article class="result-card[fixed] result-card--pinned[/fixed]">
	<div class="result-card__top">
		<a class="chips chips--rub chips--plain" href="{category-url}">{category}</a>
		<span class="meta-item meta-item--author">{author}</span>
		<span class="meta-dot" aria-hidden="true"></span>
		<time class="meta-item" datetime="{date=Y-m-d}">[day-news]{date}[/day-news]</time>
	</div>
	<h2 class="result-card__title">[full-link]{title}[/full-link]</h2>
	<p class="result-card__text">{short-story limit="220"}</p>
	[not-group=5]
	<div class="result-card__tools">
		[edit]<span class="icon-action" title="Редактировать"><svg class="icon" aria-hidden="true"><use href="#i-edit"></use></svg><span class="sr-only">Редактировать</span></span>[/edit]
	</div>
	[/not-group]
</article>
	[/shortresult]
[/searchposts]
[searchcomments]
	[fullresult]
		{include file="comments.tpl"}
	[/fullresult]
	[shortresult]
<article class="result-card result-card--comment" id="{comment-id}">
	<div class="result-card__top">
		<span class="meta-item meta-item--author">{author}</span>
		<span class="meta-dot" aria-hidden="true"></span>
		<time class="meta-item">{date}</time>
	</div>
	<h2 class="result-card__title">{news_title}</h2>
	<p class="result-card__text">{comment limit="220"}</p>
</article>
	[/shortresult]
[/searchcomments]
