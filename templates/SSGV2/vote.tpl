<section class="card card--poll">
	<div class="card__head">
		<h2>Опрос</h2>
		<a class="card__link" href="#" onclick="ShowAllVotes(); return false;">Все опросы<svg class="icon" aria-hidden="true"><use href="#i-right"></use></svg></a>
	</div>
	<div class="card__body">
		<p class="poll-question">{title}</p>
		<div class="poll-list">
			{list}
		</div>
		[voteresult]
		<p class="poll-total">Проголосовало: <b>{votes}</b></p>
		[/voteresult]
	</div>
	[votelist]
	<div class="card__foot">
		<div class="poll-actions">
			<button class="primary-button" type="button" onclick="doVote('vote'); return false;">Голосовать</button>
			<button class="icon-button poll-actions__results" type="button" aria-label="Показать результаты опроса" title="Показать результаты опроса" onclick="doVote('results'); return false;"><svg class="icon" aria-hidden="true"><use href="#i-chart"></use></svg></button>
		</div>
	</div>
	[/votelist]
</section>
