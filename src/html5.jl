module html5

export a, abbr, address, applet, area, article, aside, audio, b, base, bdi, bdo, blockquote, 
body, br, button, canvas, caption, cite, code, col, colgroup, command, content, data, datalist,
dd, del, details, dfn, dialog, div, dl, dt, element, em, embed, eval, fieldset, figcaption, 
figure, footer, form, h1, h2, h3, h4, h5, h6, head, header, hgroup, hr, html, html5, html_doc, 
i, iframe, img, include, input, ins, kbd, keygen, label, legend, li, link, main, map, mark, menu,
menuitem, meta, meter, nav, noscript, object, ol, optgroup, option, output, p, param, picture, 
pre, progress, q, rb, rp, rt, rtc, ruby, s, samp, script, section, select, shadow, slot, small, 
source, span, strong, style, sub, summary, sup, table, tbody, td, template, textarea, tfoot, th,
thead, time, title, tr, track, tt, u, ul, var, video, wbr

html_doc = function(x..., ;doctype::String = "html")
	return string("<!DOCTYPE ", doctype, ">", join(x))
end

attr_helper = function(
attr_names::Array,
attr_values::Array
)
	attr_str::String = ""
	for i in collect(1:size(attr_names, 1))
		if attr_values[i, ] != ""
			if attr_str == ""
				attr_str = string(" ", String(attr_names[i, ]), "=", raw"\"", attr_values[i, ], raw"\"")
			else
				attr_str = string(attr_str, " ", String(attr_names[i, ]), "=", raw"\"", attr_values[i, ], raw"\"")
			end
		end
	end
	return attr_str
end

a = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
download::String = "",
draggable::String = "",
hidden::String = "",
href::String = "",
hreflang::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
ping::String = "",
referrerpolicy::String = "",
rel::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
target::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "download", "draggable", "hidden", "href", "hreflang", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "ping", "referrerpolicy", "rel", "slot", "spellcheck", "style", "tabindex", "target", "title", "type"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, download, draggable, hidden, href, hreflang, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, ping, referrerpolicy, rel, slot, spellcheck, style, tabindex, target, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<a", attr_str, ">", join(x), "</a>")
end

abbr = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<abbr", attr_str, ">", join(x), "</abbr>")
end

address = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<address", attr_str, ">", join(x), "</address>")
end

applet = function(
x...,
;accesskey::String = "",
align::String = "",
alt::String = "",
archive::String = "",
autocapitalize::String = "",
class::String = "",
code::String = "",
codebase::String = "",
contenteditable::String = "",
datafld::String = "",
datasrc::String = "",
dir::String = "",
draggable::String = "",
height::String = "",
hidden::String = "",
hspace::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
mayscript::String = "",
name::String = "",
object::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
vspace::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "align", "alt", "archive", "autocapitalize", "class", "code", "codebase", "contenteditable", "datafld", "datasrc", "dir", "draggable", "height", "hidden", "hspace", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "mayscript", "name", "object", "part", "slot", "spellcheck", "src", "style", "tabindex", "title", "vspace", "width"]
	attr_values = [accesskey, align, alt, archive, autocapitalize, class, code, codebase, contenteditable, datafld, datasrc, dir, draggable, height, hidden, hspace, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, mayscript, name, object, part, slot, spellcheck, src, style, tabindex, title, vspace, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<applet", attr_str, ">", join(x), "</applet>")
end

area = function(
;accesskey::String = "",
alt::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
coords::String = "",
dir::String = "",
download::String = "",
draggable::String = "",
hidden::String = "",
href::String = "",
hreflang::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
ping::String = "",
referrerpolicy::String = "",
rel::String = "",
shape::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
target::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "alt", "autocapitalize", "class", "contenteditable", "coords", "dir", "download", "draggable", "hidden", "href", "hreflang", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "ping", "referrerpolicy", "rel", "shape", "slot", "spellcheck", "style", "tabindex", "target", "title"]
	attr_values = [accesskey, alt, autocapitalize, class, contenteditable, coords, dir, download, draggable, hidden, href, hreflang, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, ping, referrerpolicy, rel, shape, slot, spellcheck, style, tabindex, target, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<area", attr_str, ">")
end

article = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<article", attr_str, ">", join(x), "</article>")
end

aside = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<aside", attr_str, ">", join(x), "</aside>")
end

audio = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
autoplay::String = "",
class::String = "",
contenteditable::String = "",
controls::String = "",
crossorigin::String = "",
currentTime::String = "",
dir::String = "",
disableRemotePlayback::String = "",
draggable::String = "",
duration::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
loop::String = "",
muted::String = "",
part::String = "",
preload::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "autoplay", "class", "contenteditable", "controls", "crossorigin", "currentTime", "dir", "disableRemotePlayback", "draggable", "duration", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "loop", "muted", "part", "preload", "slot", "spellcheck", "src", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, autoplay, class, contenteditable, controls, crossorigin, currentTime, dir, disableRemotePlayback, draggable, duration, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, loop, muted, part, preload, slot, spellcheck, src, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<audio", attr_str, ">", join(x), "</audio>")
end

b = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<b", attr_str, ">", join(x), "</b>")
end

base = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
href::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
target::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "href", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "target", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, href, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, target, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<base", attr_str, ">")
end

bdi = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<bdi", attr_str, ">", join(x), "</bdi>")
end

bdo = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<bdo", attr_str, ">", join(x), "</bdo>")
end

blockquote = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
cite::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "cite", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, cite, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<blockquote", attr_str, ">", join(x), "</blockquote>")
end

body = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
onafterprint::String = "",
onbeforeprint::String = "",
onbeforeunload::String = "",
onblur::String = "",
onerror::String = "",
onfocus::String = "",
onhashchange::String = "",
onlanguagechange::String = "",
onload::String = "",
onmessage::String = "",
onoffline::String = "",
ononline::String = "",
onpopstate::String = "",
onredo::String = "",
onresize::String = "",
onstorage::String = "",
onundo::String = "",
onunload::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "onafterprint", "onbeforeprint", "onbeforeunload", "onblur", "onerror", "onfocus", "onhashchange", "onlanguagechange", "onload", "onmessage", "onoffline", "ononline", "onpopstate", "onredo", "onresize", "onstorage", "onundo", "onunload", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, onafterprint, onbeforeprint, onbeforeunload, onblur, onerror, onfocus, onhashchange, onlanguagechange, onload, onmessage, onoffline, ononline, onpopstate, onredo, onresize, onstorage, onundo, onunload, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<body", attr_str, ">", join(x), "</body>")
end

br = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
clear::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "clear", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, clear, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<br", attr_str, ">")
end

button = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
autofocus::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
form::String = "",
formaction::String = "",
formenctype::String = "",
formmethod::String = "",
formnovalidate::String = "",
formtarget::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "autofocus", "class", "contenteditable", "dir", "disabled", "draggable", "form", "formaction", "formenctype", "formmethod", "formnovalidate", "formtarget", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title", "type", "value"]
	attr_values = [accesskey, autocapitalize, autofocus, class, contenteditable, dir, disabled, draggable, form, formaction, formenctype, formmethod, formnovalidate, formtarget, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title, type, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<button", attr_str, ">", join(x), "</button>")
end

canvas = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "height", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title", "width"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, height, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<canvas", attr_str, ">", join(x), "</canvas>")
end

caption = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<caption", attr_str, ">", join(x), "</caption>")
end

cite = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<cite", attr_str, ">", join(x), "</cite>")
end

code = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<code", attr_str, ">", join(x), "</code>")
end

col = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
span::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "span", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, span, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<col", attr_str, ">")
end

colgroup = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
span::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "span", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, span, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<colgroup", attr_str, ">")
end

command = function(
;accesskey::String = "",
autocapitalize::String = "",
checked::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
hidden::String = "",
icon::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
label::String = "",
lang::String = "",
part::String = "",
radiogroup::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "checked", "class", "contenteditable", "dir", "disabled", "draggable", "hidden", "icon", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "label", "lang", "part", "radiogroup", "slot", "spellcheck", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, autocapitalize, checked, class, contenteditable, dir, disabled, draggable, hidden, icon, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, label, lang, part, radiogroup, slot, spellcheck, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<command", attr_str, ">")
end

content = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<content", attr_str, ">", join(x), "</content>")
end

data = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title", "value"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<data", attr_str, ">", join(x), "</data>")
end

datalist = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<datalist", attr_str, ">", join(x), "</datalist>")
end

dd = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<dd", attr_str, ">", join(x), "</dd>")
end

del = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
cite::String = "",
class::String = "",
contenteditable::String = "",
datetime::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "cite", "class", "contenteditable", "datetime", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, cite, class, contenteditable, datetime, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<del", attr_str, ">", join(x), "</del>")
end

details = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
open::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "open", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, open, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<details", attr_str, ">", join(x), "</details>")
end

dfn = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<dfn", attr_str, ">", join(x), "</dfn>")
end

dialog = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
open::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "open", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, open, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<dialog", attr_str, ">", join(x), "</dialog>")
end

div = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<div", attr_str, ">", join(x), "</div>")
end

dl = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<dl", attr_str, ">", join(x), "</dl>")
end

dt = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<dt", attr_str, ">", join(x), "</dt>")
end

element = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<element", attr_str, ">", join(x), "</element>")
end

em = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<em", attr_str, ">", join(x), "</em>")
end

embed = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "height", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "src", "style", "tabindex", "title", "type", "width"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, height, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, src, style, tabindex, title, type, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<embed", attr_str, ">")
end

fieldset = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
form::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "disabled", "draggable", "form", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, disabled, draggable, form, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<fieldset", attr_str, ">", join(x), "</fieldset>")
end

figcaption = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<figcaption", attr_str, ">", join(x), "</figcaption>")
end

figure = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<figure", attr_str, ">", join(x), "</figure>")
end

footer = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<footer", attr_str, ">", join(x), "</footer>")
end

form = function(
x...,
;accept_charset::String = "",
accesskey::String = "",
action::String = "",
autocapitalize::String = "",
autocomplete::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
enctype::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
method::String = "",
name::String = "",
novalidate::String = "",
part::String = "",
rel::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
target::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accept-charset", "accesskey", "action", "autocapitalize", "autocomplete", "class", "contenteditable", "dir", "draggable", "enctype", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "method", "name", "novalidate", "part", "rel", "slot", "spellcheck", "style", "tabindex", "target", "title"]
	attr_values = [accept_charset, accesskey, action, autocapitalize, autocomplete, class, contenteditable, dir, draggable, enctype, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, method, name, novalidate, part, rel, slot, spellcheck, style, tabindex, target, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<form", attr_str, ">", join(x), "</form>")
end

h1 = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<h1", attr_str, ">", join(x), "</h1>")
end

h2 = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<h2", attr_str, ">", join(x), "</h2>")
end

h3 = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<h3", attr_str, ">", join(x), "</h3>")
end

h4 = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<h4", attr_str, ">", join(x), "</h4>")
end

h5 = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<h5", attr_str, ">", join(x), "</h5>")
end

h6 = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<h6", attr_str, ">", join(x), "</h6>")
end

head = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<head", attr_str, ">", join(x), "</head>")
end

header = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<header", attr_str, ">", join(x), "</header>")
end

hgroup = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<hgroup", attr_str, ">", join(x), "</hgroup>")
end

hr = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<hr", attr_str, ">")
end

html = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
xmlns::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title", "xmlns"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title, xmlns]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<html", attr_str, ">", join(x), "</html>")
end

i = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<i", attr_str, ">", join(x), "</i>")
end

iframe = function(
;accesskey::String = "",
allow::String = "",
allowfullscreen::String = "",
allowpaymentrequest::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
csp::String = "",
dir::String = "",
draggable::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
loading::String = "",
name::String = "",
part::String = "",
referrerpolicy::String = "",
sandbox::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
srcdoc::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "allow", "allowfullscreen", "allowpaymentrequest", "autocapitalize", "class", "contenteditable", "csp", "dir", "draggable", "height", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "loading", "name", "part", "referrerpolicy", "sandbox", "slot", "spellcheck", "src", "srcdoc", "style", "tabindex", "title", "width"]
	attr_values = [accesskey, allow, allowfullscreen, allowpaymentrequest, autocapitalize, class, contenteditable, csp, dir, draggable, height, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, loading, name, part, referrerpolicy, sandbox, slot, spellcheck, src, srcdoc, style, tabindex, title, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<iframe", attr_str, ">")
end

img = function(
;accesskey::String = "",
alt::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
crossorigin::String = "",
decoding::String = "",
dir::String = "",
draggable::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
ismap::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
loading::String = "",
part::String = "",
referrerpolicy::String = "",
sizes::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
srcset::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
usemap::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "alt", "autocapitalize", "class", "contenteditable", "crossorigin", "decoding", "dir", "draggable", "height", "hidden", "id", "inputmode", "is", "ismap", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "loading", "part", "referrerpolicy", "sizes", "slot", "spellcheck", "src", "srcset", "style", "tabindex", "title", "usemap", "width"]
	attr_values = [accesskey, alt, autocapitalize, class, contenteditable, crossorigin, decoding, dir, draggable, height, hidden, id, inputmode, is, ismap, itemid, itemprop, itemref, itemscope, itemtype, lang, loading, part, referrerpolicy, sizes, slot, spellcheck, src, srcset, style, tabindex, title, usemap, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<img", attr_str, ">")
end

input = function(
;accept::String = "",
accesskey::String = "",
alt::String = "",
autocapitalize::String = "",
autocomplete::String = "",
autofocus::String = "",
capture::String = "",
checked::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
dirname::String = "",
disabled::String = "",
draggable::String = "",
form::String = "",
formaction::String = "",
formenctype::String = "",
formmethod::String = "",
formnovalidate::String = "",
formtarget::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
list::String = "",
max::String = "",
maxlength::String = "",
min::String = "",
minlength::String = "",
multiple::String = "",
name::String = "",
part::String = "",
pattern::String = "",
placeholder::String = "",
readonly::String = "",
required::String = "",
size::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
step::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
value::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accept", "accesskey", "alt", "autocapitalize", "autocomplete", "autofocus", "capture", "checked", "class", "contenteditable", "dir", "dirname", "disabled", "draggable", "form", "formaction", "formenctype", "formmethod", "formnovalidate", "formtarget", "height", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "list", "max", "maxlength", "min", "minlength", "multiple", "name", "part", "pattern", "placeholder", "readonly", "required", "size", "slot", "spellcheck", "src", "step", "style", "tabindex", "title", "type", "value", "width"]
	attr_values = [accept, accesskey, alt, autocapitalize, autocomplete, autofocus, capture, checked, class, contenteditable, dir, dirname, disabled, draggable, form, formaction, formenctype, formmethod, formnovalidate, formtarget, height, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, list, max, maxlength, min, minlength, multiple, name, part, pattern, placeholder, readonly, required, size, slot, spellcheck, src, step, style, tabindex, title, type, value, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<input", attr_str, ">")
end

ins = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
cite::String = "",
class::String = "",
contenteditable::String = "",
datetime::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "cite", "class", "contenteditable", "datetime", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, cite, class, contenteditable, datetime, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<ins", attr_str, ">", join(x), "</ins>")
end

kbd = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<kbd", attr_str, ">", join(x), "</kbd>")
end

keygen = function(
;accesskey::String = "",
autocapitalize::String = "",
autofocus::String = "",
challenge::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
form::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
keytype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "autofocus", "challenge", "class", "contenteditable", "dir", "disabled", "draggable", "form", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "keytype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, autofocus, challenge, class, contenteditable, dir, disabled, draggable, form, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, keytype, lang, name, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<keygen", attr_str, ">")
end

label = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
for_attr::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "for", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, for_attr, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<label", attr_str, ">", join(x), "</label>")
end

legend = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<legend", attr_str, ">", join(x), "</legend>")
end

li = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title", "value"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<li", attr_str, ">", join(x), "</li>")
end

link = function(
;accesskey::String = "",
as::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
crossorigin::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
hidden::String = "",
href::String = "",
hreflang::String = "",
id::String = "",
imagesizes::String = "",
imagesrcset::String = "",
inputmode::String = "",
integrity::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
media::String = "",
part::String = "",
prefetch::String = "",
referrerpolicy::String = "",
rel::String = "",
sizes::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "as", "autocapitalize", "class", "contenteditable", "crossorigin", "dir", "disabled", "draggable", "hidden", "href", "hreflang", "id", "imagesizes", "imagesrcset", "inputmode", "integrity", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "media", "part", "prefetch", "referrerpolicy", "rel", "sizes", "slot", "spellcheck", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, as, autocapitalize, class, contenteditable, crossorigin, dir, disabled, draggable, hidden, href, hreflang, id, imagesizes, imagesrcset, inputmode, integrity, is, itemid, itemprop, itemref, itemscope, itemtype, lang, media, part, prefetch, referrerpolicy, rel, sizes, slot, spellcheck, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<link", attr_str, ">")
end

main = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<main", attr_str, ">", join(x), "</main>")
end

map = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<map", attr_str, ">", join(x), "</map>")
end

mark = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<mark", attr_str, ">", join(x), "</mark>")
end

menu = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<menu", attr_str, ">", join(x), "</menu>")
end

menuitem = function(
;accesskey::String = "",
autocapitalize::String = "",
checked::String = "",
class::String = "",
command::String = "",
contenteditable::String = "",
default::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
hidden::String = "",
icon::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
label::String = "",
lang::String = "",
part::String = "",
radiogroup::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "checked", "class", "command", "contenteditable", "default", "dir", "disabled", "draggable", "hidden", "icon", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "label", "lang", "part", "radiogroup", "slot", "spellcheck", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, autocapitalize, checked, class, command, contenteditable, default, dir, disabled, draggable, hidden, icon, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, label, lang, part, radiogroup, slot, spellcheck, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<menuitem", attr_str, ">")
end

meta = function(
;accesskey::String = "",
autocapitalize::String = "",
charset::String = "",
class::String = "",
content::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
http_equiv::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "charset", "class", "content", "contenteditable", "dir", "draggable", "hidden", "http-equiv", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, charset, class, content, contenteditable, dir, draggable, hidden, http_equiv, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<meta", attr_str, ">")
end

meter = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
form::String = "",
hidden::String = "",
high::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
low::String = "",
max::String = "",
min::String = "",
optimum::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "form", "hidden", "high", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "low", "max", "min", "optimum", "part", "slot", "spellcheck", "style", "tabindex", "title", "value"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, form, hidden, high, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, low, max, min, optimum, part, slot, spellcheck, style, tabindex, title, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<meter", attr_str, ">", join(x), "</meter>")
end

nav = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<nav", attr_str, ">", join(x), "</nav>")
end

noscript = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<noscript", attr_str, ">", join(x), "</noscript>")
end

object = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
data::String = "",
dir::String = "",
draggable::String = "",
form::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
typemustmatch::String = "",
usemap::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "data", "dir", "draggable", "form", "height", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title", "type", "typemustmatch", "usemap", "width"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, data, dir, draggable, form, height, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title, type, typemustmatch, usemap, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<object", attr_str, ">", join(x), "</object>")
end

ol = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
reversed::String = "",
slot::String = "",
spellcheck::String = "",
start::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "reversed", "slot", "spellcheck", "start", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, reversed, slot, spellcheck, start, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<ol", attr_str, ">", join(x), "</ol>")
end

optgroup = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
label::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "disabled", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "label", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, disabled, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, label, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<optgroup", attr_str, ">", join(x), "</optgroup>")
end

option = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
label::String = "",
lang::String = "",
part::String = "",
selected::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "disabled", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "label", "lang", "part", "selected", "slot", "spellcheck", "style", "tabindex", "title", "value"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, disabled, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, label, lang, part, selected, slot, spellcheck, style, tabindex, title, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<option", attr_str, ">", join(x), "</option>")
end

output = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
for_attr::String = "",
form::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "for", "form", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, for_attr, form, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<output", attr_str, ">", join(x), "</output>")
end

p = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<p", attr_str, ">", join(x), "</p>")
end

param = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title", "value"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<param", attr_str, ">")
end

picture = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<picture", attr_str, ">", join(x), "</picture>")
end

pre = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<pre", attr_str, ">", join(x), "</pre>")
end

progress = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
max::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
value::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "max", "part", "slot", "spellcheck", "style", "tabindex", "title", "value"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, max, part, slot, spellcheck, style, tabindex, title, value]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<progress", attr_str, ">", join(x), "</progress>")
end

q = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
cite::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "cite", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, cite, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<q", attr_str, ">", join(x), "</q>")
end

rb = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<rb", attr_str, ">", join(x), "</rb>")
end

rp = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<rp", attr_str, ">", join(x), "</rp>")
end

rt = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<rt", attr_str, ">", join(x), "</rt>")
end

rtc = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<rtc", attr_str, ">", join(x), "</rtc>")
end

ruby = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<ruby", attr_str, ">", join(x), "</ruby>")
end

s = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<s", attr_str, ">", join(x), "</s>")
end

samp = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<samp", attr_str, ">", join(x), "</samp>")
end

script = function(
x...,
;accesskey::String = "",
async::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
crossorigin::String = "",
defer::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
integrity::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
nomodule::String = "",
nonce::String = "",
part::String = "",
referrerpolicy::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "async", "autocapitalize", "class", "contenteditable", "crossorigin", "defer", "dir", "draggable", "hidden", "id", "inputmode", "integrity", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "nomodule", "nonce", "part", "referrerpolicy", "slot", "spellcheck", "src", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, async, autocapitalize, class, contenteditable, crossorigin, defer, dir, draggable, hidden, id, inputmode, integrity, is, itemid, itemprop, itemref, itemscope, itemtype, lang, nomodule, nonce, part, referrerpolicy, slot, spellcheck, src, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<script", attr_str, ">", join(x), "</script>")
end

section = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<section", attr_str, ">", join(x), "</section>")
end

select = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
autocomplete::String = "",
autofocus::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
form::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
multiple::String = "",
name::String = "",
part::String = "",
required::String = "",
size::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "autocomplete", "autofocus", "class", "contenteditable", "dir", "disabled", "draggable", "form", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "multiple", "name", "part", "required", "size", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, autocomplete, autofocus, class, contenteditable, dir, disabled, draggable, form, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, multiple, name, part, required, size, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<select", attr_str, ">", join(x), "</select>")
end

shadow = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<shadow", attr_str, ">", join(x), "</shadow>")
end

slot = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
name::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "name", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, name, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<slot", attr_str, ">", join(x), "</slot>")
end

small = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<small", attr_str, ">", join(x), "</small>")
end

source = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
media::String = "",
part::String = "",
sizes::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
srcset::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "media", "part", "sizes", "slot", "spellcheck", "src", "srcset", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, media, part, sizes, slot, spellcheck, src, srcset, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<source", attr_str, ">")
end

span = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<span", attr_str, ">", join(x), "</span>")
end

strong = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<strong", attr_str, ">", join(x), "</strong>")
end

style = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
media::String = "",
nonce::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
type::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "media", "nonce", "part", "slot", "spellcheck", "style", "tabindex", "title", "type"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, media, nonce, part, slot, spellcheck, style, tabindex, title, type]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<style", attr_str, ">", join(x), "</style>")
end

sub = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<sub", attr_str, ">", join(x), "</sub>")
end

summary = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<summary", attr_str, ">", join(x), "</summary>")
end

sup = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<sup", attr_str, ">", join(x), "</sup>")
end

table = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<table", attr_str, ">", join(x), "</table>")
end

tbody = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<tbody", attr_str, ">", join(x), "</tbody>")
end

td = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
colspan::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
headers::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
rowspan::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "colspan", "contenteditable", "dir", "draggable", "headers", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "rowspan", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, colspan, contenteditable, dir, draggable, headers, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, rowspan, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<td", attr_str, ">", join(x), "</td>")
end

template = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<template", attr_str, ">", join(x), "</template>")
end

textarea = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
autocomplete::String = "",
autofocus::String = "",
class::String = "",
cols::String = "",
contenteditable::String = "",
dir::String = "",
disabled::String = "",
draggable::String = "",
form::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
maxlength::String = "",
minlength::String = "",
name::String = "",
part::String = "",
placeholder::String = "",
readonly::String = "",
required::String = "",
rows::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
wrap::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "autocomplete", "autofocus", "class", "cols", "contenteditable", "dir", "disabled", "draggable", "form", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "maxlength", "minlength", "name", "part", "placeholder", "readonly", "required", "rows", "slot", "spellcheck", "style", "tabindex", "title", "wrap"]
	attr_values = [accesskey, autocapitalize, autocomplete, autofocus, class, cols, contenteditable, dir, disabled, draggable, form, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, maxlength, minlength, name, part, placeholder, readonly, required, rows, slot, spellcheck, style, tabindex, title, wrap]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<textarea", attr_str, ">", join(x), "</textarea>")
end

tfoot = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<tfoot", attr_str, ">", join(x), "</tfoot>")
end

th = function(
x...,
;abbr::String = "",
accesskey::String = "",
autocapitalize::String = "",
class::String = "",
colspan::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
headers::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
rowspan::String = "",
scope::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["abbr", "accesskey", "autocapitalize", "class", "colspan", "contenteditable", "dir", "draggable", "headers", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "rowspan", "scope", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [abbr, accesskey, autocapitalize, class, colspan, contenteditable, dir, draggable, headers, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, rowspan, scope, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<th", attr_str, ">", join(x), "</th>")
end

thead = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<thead", attr_str, ">", join(x), "</thead>")
end

time = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
datetime::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "datetime", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, datetime, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<time", attr_str, ">", join(x), "</time>")
end

title = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<title", attr_str, ">", join(x), "</title>")
end

tr = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<tr", attr_str, ">", join(x), "</tr>")
end

track = function(
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
default::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
kind::String = "",
label::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
srclang::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "default", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "kind", "label", "lang", "part", "slot", "spellcheck", "src", "srclang", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, default, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, kind, label, lang, part, slot, spellcheck, src, srclang, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<track", attr_str, ">")
end

tt = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<tt", attr_str, ">", join(x), "</tt>")
end

u = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<u", attr_str, ">", join(x), "</u>")
end

ul = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<ul", attr_str, ">", join(x), "</ul>")
end

var = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<var", attr_str, ">", join(x), "</var>")
end

video = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
autoPictureInPicture::String = "",
autoplay::String = "",
buffered::String = "",
class::String = "",
contenteditable::String = "",
controls::String = "",
controlslist::String = "",
crossorigin::String = "",
currentTime::String = "",
dir::String = "",
disablePictureInPicture::String = "",
disableRemotePlayback::String = "",
draggable::String = "",
duration::String = "",
height::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
intrinsicsize::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
loop::String = "",
muted::String = "",
part::String = "",
playsinline::String = "",
poster::String = "",
preload::String = "",
slot::String = "",
spellcheck::String = "",
src::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
width::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "autoPictureInPicture", "autoplay", "buffered", "class", "contenteditable", "controls", "controlslist", "crossorigin", "currentTime", "dir", "disablePictureInPicture", "disableRemotePlayback", "draggable", "duration", "height", "hidden", "id", "inputmode", "intrinsicsize", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "loop", "muted", "part", "playsinline", "poster", "preload", "slot", "spellcheck", "src", "style", "tabindex", "title", "width"]
	attr_values = [accesskey, autocapitalize, autoPictureInPicture, autoplay, buffered, class, contenteditable, controls, controlslist, crossorigin, currentTime, dir, disablePictureInPicture, disableRemotePlayback, draggable, duration, height, hidden, id, inputmode, intrinsicsize, is, itemid, itemprop, itemref, itemscope, itemtype, lang, loop, muted, part, playsinline, poster, preload, slot, spellcheck, src, style, tabindex, title, width]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<video", attr_str, ">", join(x), "</video>")
end

wbr = function(
x...,
;accesskey::String = "",
autocapitalize::String = "",
class::String = "",
contenteditable::String = "",
dir::String = "",
draggable::String = "",
hidden::String = "",
id::String = "",
inputmode::String = "",
is::String = "",
itemid::String = "",
itemprop::String = "",
itemref::String = "",
itemscope::String = "",
itemtype::String = "",
lang::String = "",
part::String = "",
slot::String = "",
spellcheck::String = "",
style::String = "",
tabindex::String = "",
title::String = "",
custom_attr::String = ""
)
	attr_names = ["accesskey", "autocapitalize", "class", "contenteditable", "dir", "draggable", "hidden", "id", "inputmode", "is", "itemid", "itemprop", "itemref", "itemscope", "itemtype", "lang", "part", "slot", "spellcheck", "style", "tabindex", "title"]
	attr_values = [accesskey, autocapitalize, class, contenteditable, dir, draggable, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, part, slot, spellcheck, style, tabindex, title]
	attr_str = attr_helper(attr_names, attr_values)
	if custom_attr != ""
		attr_str = string(" ", custom_attr, attr_str)
	end	
	return string("<wbr", attr_str, ">", join(x), "</wbr>")
end

end
