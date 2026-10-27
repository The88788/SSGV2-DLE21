<section class="panel addnews-form">
	<div class="section-heading">
		<div>
			<h1>{header-title}</h1>
			<p>Заполните поля публикации. Поля со звёздочкой обязательны.</p>
		</div>
	</div>

	<div class="form-body">
		<div class="form-row">
			<label class="form-label" for="title">Заголовок<span class="form-req" title="Обязательное поле">*</span></label>
			<input class="form-input" type="text" name="title" id="title" value="{title}" required>
		</div>
		[urltag]
		<div class="form-row">
			<label class="form-label" for="alt_name">URL публикации</label>
			<input class="form-input" type="text" name="alt_name" id="alt_name" value="{alt-name}">
		</div>
		[/urltag]
		<div class="form-row">
			<label class="form-label" for="category">Категория<span class="form-req" title="Обязательное поле">*</span></label>
			{category}
		</div>

		<details class="addvote">
			<summary class="soft-button"><svg class="icon" aria-hidden="true"><use href="#i-plus"></use></svg><span>Добавить опрос к публикации</span></summary>
			<div class="addvote__body">
				<div class="form-row">
					<label class="form-label" for="vote_title">Заголовок опроса</label>
					<input class="form-input" type="text" name="vote_title" id="vote_title" value="{votetitle}">
				</div>
				<div class="form-row">
					<label class="form-label" for="frage">Вопрос</label>
					<input class="form-input" type="text" name="frage" id="frage" value="{frage}">
				</div>
				<div class="form-row">
					<label class="form-label" for="vote_body">Варианты ответов</label>
					<textarea class="form-input" name="vote_body" id="vote_body" rows="5" placeholder="Каждая новая строка — отдельный вариант ответа">{votebody}</textarea>
				</div>
				<div class="form-row form-row--check">
					<label class="form-check-label"><input class="form-check-input" type="checkbox" name="allow_m_vote" value="1" {allowmvote}><span>Разрешить выбор нескольких вариантов</span></label>
				</div>
			</div>
		</details>

		[allow-shortstory]
		<div class="form-row">
			<label class="form-label" for="short_story">Краткое описание<span class="form-req" title="Обязательное поле">*</span></label>
			{shortarea}
		</div>
		[/allow-shortstory]
		[allow-fullstory]
		<div class="form-row">
			<label class="form-label" for="full_story">Полное описание</label>
			{fullarea}
		</div>
		[/allow-fullstory]

		<div class="form-row">{xfields}</div>

		<div class="form-row">
			<label class="form-label" for="tags">Ключевые слова</label>
			<input class="form-input" type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" placeholder="Вводите через запятую">
		</div>

		<div class="form-row admin_checkboxs">{admintag}</div>

		[recaptcha]
		<div class="form-row">{recaptcha}</div>
		[/recaptcha]
		[question]
		<div class="form-row">
			<label class="form-label" for="question_answer">{question}</label>
			<input class="form-input" type="text" name="question_answer" id="question_answer" placeholder="Введите ответ" required>
		</div>
		[/question]
		[sec_code]
		<div class="form-row">
			<label class="form-label" for="sec_code">Код с картинки</label>
			<div class="c-captcha">
				{sec_code}
				<input type="text" name="sec_code" id="sec_code" title="Повторите Код" placeholder="Повторите Код" required>
			</div>
		</div>
		[/sec_code]

		<div class="form-actions">
			<button class="primary-button" type="submit" name="add">Отправить</button>
			<button class="soft-button" type="submit" name="nview" onclick="preview()">Предпросмотр</button>
			<span class="form-actions__hint"><span class="form-req">*</span> — обязательные поля</span>
		</div>
	</div>
</section>
