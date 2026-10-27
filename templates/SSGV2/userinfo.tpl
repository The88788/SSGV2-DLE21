<section class="panel profile">
	<header class="profile__head">
		<img class="avatar avatar--xl" src="{foto}" alt="" width="112" height="112">
		<div class="profile__ident">
			<h1 class="profile__name">{usertitle}</h1>
			<p class="profile__status">
				[online]<span class="is-online">На сайте</span>[/online][offline]Не в сети[/offline]
				<span class="profile__group">{status}</span>
			</p>
			<div class="profile__actions">
				[not-group=5]{pm}[/not-group]
				[ignore]<span class="profile__action-content"><svg class="icon" aria-hidden="true"><use href="#i-dislike"></use></svg><span>Игнорировать</span></span>[/ignore]
				[rss]<span class="profile__action-content"><svg class="icon" aria-hidden="true"><use href="#i-rss"></use></svg><span>RSS автора</span></span>[/rss]
			</div>
			[banned]<p class="notice notice--warn">Пользователь заблокирован {ban-date}. Причина: {ban-description}</p>[/banned]
		</div>
	</header>

	<div class="profile__grid">
		<dl class="profile__facts">
			<dt>Полное имя</dt><dd>[fullname]{fullname}[/fullname][not-fullname]не указано[/not-fullname]</dd>
			<dt>Место жительства</dt><dd>[land]{land}[/land][not-land]не указано[/not-land]</dd>
			<dt>Зарегистрирован</dt><dd>{registration}</dd>
			<dt>Был на сайте</dt><dd>{lastdate}</dd>
			[time_limit]<dt>Ограничение группы</dt><dd>{time_limit}</dd>[/time_limit]
		</dl>
		<dl class="profile__facts">
			<dt>Публикаций</dt><dd>{news-num}[news-num]<span class="profile__link">{news}</span>[/news-num]</dd>
			<dt>Комментариев</dt><dd>{comm-num}[comm-num]<span class="profile__link">{comments}</span>[/comm-num]</dd>
			<dt>Рейтинг публикаций</dt><dd>{rate}</dd>
			<dt>Рейтинг комментариев</dt><dd>{commentsrate}</dd>
			<dt>Подписок</dt><dd>{subscribed}</dd>
		</dl>
	</div>

	[info]
	<div class="profile__about">
		<h2>О себе</h2>
		<div class="text">{info}</div>
	</div>
	[/info]
	[signature]
	<div class="profile__about">
		<h2>Подпись</h2>
		<div class="text">{signature}</div>
	</div>
	[/signature]

	[not-logged]
	<details class="profile-settings">
		<summary class="soft-button" aria-label="Настройки профиля"><svg class="icon" aria-hidden="true"><use href="#i-edit"></use></svg><span>Настройки профиля</span></summary>
		<div class="form-body" id="options">
			<div class="form-grid">
				<div class="form-row">
					<label class="form-label" for="fullname">Ваше имя</label>
					<input class="form-input" type="text" name="fullname" id="fullname" value="{fullname}" autocomplete="name">
				</div>
				<div class="form-row">
					<label class="form-label" for="land">Место жительства</label>
					<input class="form-input" type="text" name="land" id="land">
				</div>
			</div>
			<div class="form-row">
				<label class="form-label" for="email">Электронная почта<span class="form-req" title="Обязательное поле">*</span></label>
				<input class="form-input" type="email" name="email" id="email" value="{editmail}" autocomplete="email" required>
				<div class="form-check">{hidemail}</div>
			</div>
			<div class="form-row">
				<label class="form-label" for="timezone">Часовой пояс</label>
				{timezones}
			</div>

			<h3 class="form-sep">Пароль</h3>
			<div class="form-grid form-grid--three">
				<div class="form-row">
					<label class="form-label" for="altpass">Старый пароль</label>
					<input class="form-input" type="password" name="altpass" id="altpass" autocomplete="current-password">
				</div>
				<div class="form-row">
					<label class="form-label" for="password1">Новый пароль</label>
					<input class="form-input" type="password" name="password1" id="password1" autocomplete="new-password">
				</div>
				<div class="form-row">
					<label class="form-label" for="password2">Повторите новый</label>
					<input class="form-input" type="password" name="password2" id="password2" autocomplete="new-password">
				</div>
			</div>

			<h3 class="form-sep">Двухфакторная авторизация</h3>
			<div class="form-row">{twofactor-auth}</div>

			<h3 class="form-sep">Аватар</h3>
			<div class="form-row">
				<label class="form-label" for="image">Загрузить изображение</label>
				<input class="form-input form-input--file" type="file" name="image" id="image" accept="image/*">
			</div>
			<div class="form-row">
				<label class="form-label" for="gravatar">Gravatar</label>
				<input class="form-input" type="text" name="gravatar" id="gravatar" value="{gravatar}" placeholder="E-mail, привязанный к сервису Gravatar">
			</div>
			<div class="form-row form-row--check">
				<label class="form-check-label"><input class="form-check-input" type="checkbox" name="del_foto" id="del_foto" value="yes"><span>Удалить аватар</span></label>
			</div>

			<h3 class="form-sep">О себе</h3>
			<div class="form-row">
				<label class="form-label" for="info">Описание</label>
				<textarea class="form-input" name="info" id="info" rows="5">{editinfo}</textarea>
			</div>
			<div class="form-row">
				<label class="form-label" for="signature">Подпись</label>
				<textarea class="form-input" name="signature" id="signature" rows="3">{editsignature}</textarea>
			</div>

			<h3 class="form-sep">Списки и доступ</h3>
			<div class="form-row">
				<label class="form-label" for="ignore">Игнорируемые пользователи</label>
				{ignore-list}
			</div>
			[group=1,2,3]
			<div class="form-row">
				<label class="form-label" for="allowed_ip">Блокировка по IP</label>
				<textarea class="form-input" name="allowed_ip" id="allowed_ip" rows="4" placeholder="192.48.25.71, маска 129.42.0.0/16 либо 129.42.*.*">{allowed-ip}</textarea>
			</div>
			[/group]
			<div class="form-row user_fields">{xfields}</div>

			<h3 class="form-sep">Социальные сети</h3>
			<div class="soc-links">
				[vk]<a class="soc-links__item" href="{vk_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-vk"></use></svg><span class="sr-only">Привязать ВКонтакте</span></a>[/vk]
				[yandex]<a class="soc-links__item" href="{yandex_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-ya"></use></svg><span class="sr-only">Привязать Яндекс</span></a>[/yandex]
				[odnoklassniki]<a class="soc-links__item" href="{odnoklassniki_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-od"></use></svg><span class="sr-only">Привязать Одноклассники</span></a>[/odnoklassniki]
				[mailru]<a class="soc-links__item" href="{mailru_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-mailru"></use></svg><span class="sr-only">Привязать Mail.ru</span></a>[/mailru]
				[google]<a class="soc-links__item" href="{google_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-gp"></use></svg><span class="sr-only">Привязать Google</span></a>[/google]
				[facebook]<a class="soc-links__item" href="{facebook_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-fb"></use></svg><span class="sr-only">Привязать Facebook</span></a>[/facebook]
				[telegram]<a class="soc-links__item" href="{telegram_url}" target="_blank" rel="nofollow"><svg class="icon icon--brand" aria-hidden="true"><use href="#i-tg"></use></svg><span class="sr-only">Привязать Telegram</span></a>[/telegram]
			</div>
			<div class="form-row">{social-list}</div>

			<h3 class="form-sep">Подписки</h3>
			<div class="form-row form-row--check">{news-subscribe}</div>
			<div class="form-row form-row--check">{comments-reply-subscribe}</div>
			<div class="form-row form-row--check">{unsubscribe}</div>

			<div class="form-actions">
				<button class="primary-button" name="submit" type="submit">Сохранить</button>
				[delete]<span class="soft-button soft-button--danger"><svg class="icon" aria-hidden="true"><use href="#i-trash"></use></svg><span>Удалить аккаунт</span></span>[/delete]
				<input name="submit" type="hidden" id="submit" value="submit">
			</div>
		</div>
	</details>
	[/not-logged]
</section>
