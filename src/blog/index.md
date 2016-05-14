CSS: ../theme.css
Format: complete
Title: Kavon Farvardin — Blog Posts
HTML header: <link rel="icon" type="image/png" href="../images/duck.png" />

#include "default.html"
#include "utils.html"

NAVBAR(NAV_LINK("../index.html",Kavon Farvardin),SMALL(NAV_LINK_CRNT("index.html",Blog)))
====================

<!-- thanks DDG: https://duckduckgo.com/search_box -->
<iframe src="https://duckduckgo.com/search.html?width=408&site=farvard.in&prefill=Search the blog" style="overflow:hidden;margin:0;padding:0;width:466px;height:40px;" frameborder="0"></iframe>

<!-- handy guide: https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide -->

### All Blog Posts (newest first)

POST_LIST_ITEM(POST_DATE(Sep,02,2015),Second Test Post,"template.html")

POST_LIST_ITEM(POST_DATE(Sep,01,2015),First Test Post,"template.html")
