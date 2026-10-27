<article class="thread__item[childrencomments] thread__item--reply[/childrencomments]" id="{comment-id}">
	<div class="thread__top">
		<span class="thread__avatar">
			[profile][has-avatar]<img class="avatar" src="{foto}" alt="" width="52" height="52" loading="lazy">[/has-avatar][not-has-avatar]<span class="avatar avatar--initial" aria-hidden="true"></span>[/not-has-avatar][/profile]
			[online]<span class="thread__online" title="{login} — на сайте"><span class="sr-only">{login} — на сайте</span></span>[/online]
		</span>
		<div class="thread__ident">
			<div class="thread__who">
				<span class="thread__author">{author}</span>
				[news-author]<span class="thread__badge">Автор публикации</span>[/news-author]
			</div>
			<div class="thread__when">
				<time>{date}</time>
				<span class="thread__group">{group-name}</span>
				[available=lastcomments|search]{news_title}[/available]
			</div>
		</div>
		[not-group=5]<span class="thread__mass">{mass-action}</span>[/not-group]
	</div>

	<div class="thread__text text">{comment}</div>
	[images]<div class="thread__images">{images}</div>[/images]
	[signature]<div class="thread__signature">{signature}</div>[/signature]

	<div class="thread__actions">
		[fast]<span class="thread__btn" title="Цитировать"><svg class="icon" aria-hidden="true"><use href="#i-quote"></use></svg>Цитата</span>[/fast]
		[reply]<span class="thread__btn" title="Ответить"><svg class="icon" aria-hidden="true"><use href="#i-reply"></use></svg>Ответить</span>[/reply]
		[replycount]<span class="thread__replies" title="Ответов: {replycount}"><svg class="icon" aria-hidden="true"><use href="#i-comment"></use></svg>{replycount}</span>[/replycount]
		[complaint]<span class="thread__btn" title="Пожаловаться"><svg class="icon" aria-hidden="true"><use href="#i-flag"></use></svg><span class="sr-only">Пожаловаться</span></span>[/complaint]
		[not-group=5]
		[com-edit]<span class="thread__btn" title="Редактировать"><svg class="icon" aria-hidden="true"><use href="#i-edit"></use></svg><span class="sr-only">Редактировать</span></span>[/com-edit]
		[com-del]<span class="thread__btn thread__btn--danger" title="Удалить"><svg class="icon" aria-hidden="true"><use href="#i-trash"></use></svg><span class="sr-only">Удалить</span></span>[/com-del]
		[/not-group]
		[rating]
		<span class="thread__rate[positive-comment] is-positive[/positive-comment][negative-comment] is-negative[/negative-comment]">
			[rating-type-1]<span class="thread__stars">{rating}</span>[/rating-type-1]
			[rating-type-2][rating-plus]<span class="vote-pill vote-pill--up" title="Нравится"><svg class="icon" aria-hidden="true"><use href="#i-arrow-up"></use></svg>{rating}</span>[/rating-plus][/rating-type-2]
			[rating-type-3][rating-plus]<span class="vote-pill vote-pill--up" title="Нравится"><svg class="icon" aria-hidden="true"><use href="#i-arrow-up"></use></svg></span>[/rating-plus]<span class="vote-score">{rating}</span>[rating-minus]<span class="vote-pill vote-pill--down" title="Не нравится"><svg class="icon" aria-hidden="true"><use href="#i-arrow-down"></use></svg></span>[/rating-minus][/rating-type-3]
			[rating-type-4][rating-plus]<span class="vote-pill vote-pill--up" title="Нравится"><svg class="icon" aria-hidden="true"><use href="#i-arrow-up"></use></svg><span class="ratingtypeplusminus ratingplus">{likes}</span></span>[/rating-plus][rating-minus]<span class="vote-pill vote-pill--down" title="Не нравится"><svg class="icon" aria-hidden="true"><use href="#i-arrow-down"></use></svg><span class="ratingtypeplusminus ratingminus">{dislikes}</span></span>[/rating-minus][/rating-type-4]
		</span>
		[/rating]
	</div>
</article>
