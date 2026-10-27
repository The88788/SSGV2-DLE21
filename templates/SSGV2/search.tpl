<section class="panel searchpage">
	<div class="section-heading">
		<div>
			<h1>Поиск по сайту</h1>
			<p>Ищите по публикациям, комментариям и статическим страницам</p>
		</div>
	</div>

	<div id="searchtable" class="searchtable">
		[simple-search]
		<div class="search-simple">
			<div class="form-row">
				<label class="form-label" for="searchinput">Слова для поиска</label>
				{searchfield}
			</div>
			<div class="form-actions">
				<button class="primary-button" type="button" name="dosearch" id="dosearch" onclick="javascript:list_submit(-1); return false;">Найти</button>
				<button class="soft-button" type="button" name="dofullsearch" id="dofullsearch" onclick="javascript:full_submit(1); return false;">Расширенный поиск</button>
			</div>
		</div>
		[/simple-search]

		[extended-search]
		<div class="search-advanced">
			<fieldset class="search-fieldset">
				<legend>Поиск по содержанию</legend>
				<div class="form-row">
					<label class="form-label" for="searchinput">Слова для поиска</label>
					{searchfield}
					{word-option}
				</div>
				<div class="form-row">
					<label class="form-label" for="titleonly">Область поиска</label>
					{search-area}
				</div>
			</fieldset>

			<fieldset class="search-fieldset">
				<legend>Поиск по автору</legend>
				<div class="form-row">
					<label class="form-label" for="searchuser">Имя пользователя</label>
					<div id="userfield">{userfield}</div>
					{user-option}
				</div>
			</fieldset>

			<fieldset class="search-fieldset">
				<legend>Публикации</legend>
				<div class="form-row form-row--inline">
					{news-option}
					<span class="form-hint">{comments-num} комментариями</span>
				</div>
			</fieldset>

			<fieldset class="search-fieldset">
				<legend>Временной период</legend>
				<div class="form-row form-row--inline">
					{date-option}
					{date-beforeafter}
				</div>
			</fieldset>

			<fieldset class="search-fieldset">
				<legend>Сортировка результатов</legend>
				<div class="form-row form-row--inline">
					{sort-option}
					{order-option}
				</div>
			</fieldset>

			<fieldset class="search-fieldset">
				<legend>Вид результатов</legend>
				<div class="form-row form-row--inline">
					{view-option}
				</div>
			</fieldset>

			<fieldset class="search-fieldset search-fieldset--wide">
				<legend>Поиск по разделам</legend>
				<div class="form-row">{category-option}</div>
			</fieldset>

			<div class="form-actions search-actions">
				<button class="primary-button" type="button" name="dosearch" id="dosearch" onclick="javascript:list_submit(-1); return false;">Найти</button>
				<button class="soft-button" type="button" name="doclear" id="doclear" onclick="javascript:clearform('fullsearch'); return false;">Сбросить</button>
				<button class="soft-button" type="reset" name="doreset" id="doreset">Вернуть</button>
			</div>
		</div>
		[/extended-search]
	</div>

	[searchmsg]<p class="search-result-msg">{searchmsg}</p>[/searchmsg]
</section>
