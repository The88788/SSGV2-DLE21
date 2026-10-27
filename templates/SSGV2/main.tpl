<!DOCTYPE html>
<html data-theme="light" lang="ru"><head>{headers}
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="theme-color" content="#242733">
<link rel="icon" href="{THEME}/images/favicon.png">

<link rel="stylesheet" href="{THEME}/css/engine.css"><link rel="stylesheet" href="{THEME}/css/components.css?v=20261026-clean">
<link rel="stylesheet" href="{THEME}/css/modern.css?v=20261027-release">
</head><body>{AJAX}{include file="modules/icons.tpl"}
<a class="skip-link" href="#main-content">Перейти к содержимому</a>
{include file="sidebar.tpl"}
<div class="site-shell">
<header class="site-header">
<button class="menu-toggle" type="button" aria-controls="site-sidebar" aria-expanded="false" aria-label="Открыть меню">☰</button>
<form class="header-search" action="{THEME}/../../index.php" method="get" role="search">
<label class="sr-only" for="story">Поиск по сайту</label><span aria-hidden="true">⌕</span>
<input id="story" name="story" type="search" placeholder="Найти публикацию…" required minlength="3">
<input type="hidden" name="do" value="search"><input type="hidden" name="subaction" value="search"><button type="submit" aria-label="Найти">Найти</button>
</form>
{login}
</header>
<main id="main-content" class="site-main" tabindex="-1">
[available=main]<section class="welcome"><div><span class="eyebrow">ВАШЕ ПРОСТРАНСТВО ДЛЯ ИДЕЙ</span><h1>Интересное начинается здесь<span>.</span></h1><p>Свежие истории, полезные находки и общение по делу.</p><a class="button" href="#publications">Читать публикации <span aria-hidden="true">↗</span></a></div><div class="welcome-art" aria-hidden="true"><span>SSG</span><small>читать · узнавать · обсуждать</small></div></section>[/available]
<div class="breadcrumbs">{speedbar}</div>
<div class="page-grid[available=register|lostpassword|feedback|pm|addnews|userinfo] page-grid--form[/available]"><section class="main-column" id="publications">
[available=main]<div class="section-title"><h2>Последние публикации</h2><span>Новое в сообществе</span></div>[/available]
{info}{content}
</section>[not-available=register|lostpassword|feedback|pm|addnews|userinfo]<aside class="right-column" aria-label="Дополнительная информация">{include file="rightbar.tpl"}</aside>[/not-available]</div>
{include file="modules/support.tpl"}</main><footer class="site-footer"><span>SSGV2 · Сообщество и идеи</span><span class="footer-credit">Дизайн: FOR_WEB · Адаптация: <a href="https://the88788.com/" target="_blank" rel="noopener">The88788.com ↗</a></span><a href="{THEME}/../../index.php?do=feedback">Обратная связь ↗</a></footer></div>
<button class="sidebar-backdrop" type="button" aria-label="Закрыть меню" hidden></button>
<script src="{THEME}/js/site.js" defer></script>
</body></html>