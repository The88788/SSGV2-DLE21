'use strict';
(() => {
 const toggle = document.querySelector('.menu-toggle');
 const sidebar = document.querySelector('.site-sidebar');
 const backdrop = document.querySelector('.sidebar-backdrop');
 let previousFocus;
 function setMenu(open) {
  if (!toggle || !sidebar || !backdrop) return;
  document.body.classList.toggle('menu-open', open);
  toggle.setAttribute('aria-expanded', String(open));
  toggle.setAttribute('aria-label', open ? 'Закрыть меню' : 'Открыть меню');
  backdrop.hidden = !open;
  sidebar.inert = mobile.matches && !open;
  if (open) { previousFocus = document.activeElement; sidebar.querySelector('a')?.focus(); }
  else if (previousFocus) { previousFocus.focus(); previousFocus = null; }
 }
 toggle?.addEventListener('click', () => setMenu(!document.body.classList.contains('menu-open')));
 backdrop?.addEventListener('click', () => setMenu(false));
 document.addEventListener('keydown', event => {
  if (event.key === 'Escape') {
   if (document.body.classList.contains('menu-open')) setMenu(false);
   document.querySelectorAll('.account-menu[open]').forEach(menu => { menu.open = false; menu.querySelector('summary')?.focus(); });
  }
  if(event.key === 'Tab' && document.body.classList.contains('menu-open')) {
   const links = [...sidebar.querySelectorAll('a,button')];
   const first = links[0], last = links[links.length-1];
   if(event.shiftKey && document.activeElement === first) { event.preventDefault(); last.focus(); }
   else if(!event.shiftKey && document.activeElement === last) { event.preventDefault(); first.focus(); }
  }
 });
 document.addEventListener('click', event => document.querySelectorAll('.account-menu[open]').forEach(menu => { if(!menu.contains(event.target)) menu.open = false; }));
 const mobile = matchMedia('(max-width: 760px)');
 const sync = () => { if(!mobile.matches && document.body.classList.contains('menu-open')) setMenu(false); sidebar.inert = mobile.matches && !document.body.classList.contains('menu-open'); };
 new MutationObserver(sync).observe(document.body, {attributes:true,attributeFilter:['class']});
 mobile.addEventListener('change', sync); sync();
})();
