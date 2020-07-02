/*
 *  Document   : plugins.js
 *  Author     : Various
 *  Description: Jquery Plugins in one file for consistency
 *
 *  Feel free to remove the plugins you won't use (along with their style - if there is one - in css/plugins.css)
 *  or include them separately if you are going to use them only in few pages of your project.
 *  I've included this file along with css/plugins.css in all pages to make all the plugins
 *  available everywhere with the minimum cost (few http requests).
 *
 *  Most plugins are initialized on specific classes in app.js - uiInit() to be available for use in any page.
 *  You can remove the initializations from app.js if you like and only put them in the pages you will use them :-)
 */

/* Avoid `console` errors in browsers that lack a console */
(function() { var e; var t = function() {}; var n = ["assert", "clear", "count", "debug", "dir", "dirxml", "error", "exception", "group", "groupCollapsed", "groupEnd", "info", "log", "markTimeline", "profile", "profileEnd", "table", "time", "timeEnd", "timeStamp", "trace", "warn"]; var r = n.length; var i = window.console = window.console || {}; while(r--) { e = n[r]; if(!i[e]) { i[e] = t } } })();

/*! jQuery UI - v1.11.4 - 2015-04-01
 * http://jqueryui.com
 * Includes: core.js, widget.js, mouse.js, draggable.js, resizable.js, sortable.js
 * Copyright 2015 jQuery Foundation and other contributors; Licensed MIT */
(function(e) { "function" == typeof define && define.amd ? define(["jquery"], e) : e(jQuery) })(function(e) {
	function t(t, s) { var n, a, o, r = t.nodeName.toLowerCase(); return "area" === r ? (n = t.parentNode, a = n.name, t.href && a && "map" === n.nodeName.toLowerCase() ? (o = e("img[usemap='#" + a + "']")[0], !!o && i(o)) : !1) : (/^(input|select|textarea|button|object)$/.test(r) ? !t.disabled : "a" === r ? t.href || s : s) && i(t) }

	function i(t) { return e.expr.filters.visible(t) && !e(t).parents().addBack().filter(function() { return "hidden" === e.css(this, "visibility") }).length } e.ui = e.ui || {}, e.extend(e.ui, { version: "1.11.4", keyCode: { BACKSPACE: 8, COMMA: 188, DELETE: 46, DOWN: 40, END: 35, ENTER: 13, ESCAPE: 27, HOME: 36, LEFT: 37, PAGE_DOWN: 34, PAGE_UP: 33, PERIOD: 190, RIGHT: 39, SPACE: 32, TAB: 9, UP: 38 } }), e.fn.extend({ scrollParent: function(t) { var i = this.css("position"),
				s = "absolute" === i,
				n = t ? /(auto|scroll|hidden)/ : /(auto|scroll)/,
				a = this.parents().filter(function() { var t = e(this); return s && "static" === t.css("position") ? !1 : n.test(t.css("overflow") + t.css("overflow-y") + t.css("overflow-x")) }).eq(0); return "fixed" !== i && a.length ? a : e(this[0].ownerDocument || document) }, uniqueId: function() { var e = 0; return function() { return this.each(function() { this.id || (this.id = "ui-id-" + ++e) }) } }(), removeUniqueId: function() { return this.each(function() { /^ui-id-\d+$/.test(this.id) && e(this).removeAttr("id") }) } }), e.extend(e.expr[":"], { data: e.expr.createPseudo ? e.expr.createPseudo(function(t) { return function(i) { return !!e.data(i, t) } }) : function(t, i, s) { return !!e.data(t, s[3]) }, focusable: function(i) { return t(i, !isNaN(e.attr(i, "tabindex"))) }, tabbable: function(i) { var s = e.attr(i, "tabindex"),
				n = isNaN(s); return(n || s >= 0) && t(i, !n) } }), e("<a>").outerWidth(1).jquery || e.each(["Width", "Height"], function(t, i) {
		function s(t, i, s, a) { return e.each(n, function() { i -= parseFloat(e.css(t, "padding" + this)) || 0, s && (i -= parseFloat(e.css(t, "border" + this + "Width")) || 0), a && (i -= parseFloat(e.css(t, "margin" + this)) || 0) }), i } var n = "Width" === i ? ["Left", "Right"] : ["Top", "Bottom"],
			a = i.toLowerCase(),
			o = { innerWidth: e.fn.innerWidth, innerHeight: e.fn.innerHeight, outerWidth: e.fn.outerWidth, outerHeight: e.fn.outerHeight };
		e.fn["inner" + i] = function(t) { return void 0 === t ? o["inner" + i].call(this) : this.each(function() { e(this).css(a, s(this, t) + "px") }) }, e.fn["outer" + i] = function(t, n) { return "number" != typeof t ? o["outer" + i].call(this, t) : this.each(function() { e(this).css(a, s(this, t, !0, n) + "px") }) } }), e.fn.addBack || (e.fn.addBack = function(e) { return this.add(null == e ? this.prevObject : this.prevObject.filter(e)) }), e("<a>").data("a-b", "a").removeData("a-b").data("a-b") && (e.fn.removeData = function(t) { return function(i) { return arguments.length ? t.call(this, e.camelCase(i)) : t.call(this) } }(e.fn.removeData)), e.ui.ie = !!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase()), e.fn.extend({ focus: function(t) { return function(i, s) { return "number" == typeof i ? this.each(function() { var t = this;
					setTimeout(function() { e(t).focus(), s && s.call(t) }, i) }) : t.apply(this, arguments) } }(e.fn.focus), disableSelection: function() { var e = "onselectstart" in document.createElement("div") ? "selectstart" : "mousedown"; return function() { return this.bind(e + ".ui-disableSelection", function(e) { e.preventDefault() }) } }(), enableSelection: function() { return this.unbind(".ui-disableSelection") }, zIndex: function(t) { if(void 0 !== t) return this.css("zIndex", t); if(this.length)
				for(var i, s, n = e(this[0]); n.length && n[0] !== document;) { if(i = n.css("position"), ("absolute" === i || "relative" === i || "fixed" === i) && (s = parseInt(n.css("zIndex"), 10), !isNaN(s) && 0 !== s)) return s;
					n = n.parent() }
			return 0 } }), e.ui.plugin = { add: function(t, i, s) { var n, a = e.ui[t].prototype; for(n in s) a.plugins[n] = a.plugins[n] || [], a.plugins[n].push([i, s[n]]) }, call: function(e, t, i, s) { var n, a = e.plugins[t]; if(a && (s || e.element[0].parentNode && 11 !== e.element[0].parentNode.nodeType))
				for(n = 0; a.length > n; n++) e.options[a[n][0]] && a[n][1].apply(e.element, i) } };
	var s = 0,
		n = Array.prototype.slice;
	e.cleanData = function(t) { return function(i) { var s, n, a; for(a = 0; null != (n = i[a]); a++) try { s = e._data(n, "events"), s && s.remove && e(n).triggerHandler("remove") } catch(o) {} t(i) } }(e.cleanData), e.widget = function(t, i, s) { var n, a, o, r, h = {},
			l = t.split(".")[0]; return t = t.split(".")[1], n = l + "-" + t, s || (s = i, i = e.Widget), e.expr[":"][n.toLowerCase()] = function(t) { return !!e.data(t, n) }, e[l] = e[l] || {}, a = e[l][t], o = e[l][t] = function(e, t) { return this._createWidget ? (arguments.length && this._createWidget(e, t), void 0) : new o(e, t) }, e.extend(o, a, { version: s.version, _proto: e.extend({}, s), _childConstructors: [] }), r = new i, r.options = e.widget.extend({}, r.options), e.each(s, function(t, s) { return e.isFunction(s) ? (h[t] = function() { var e = function() { return i.prototype[t].apply(this, arguments) },
					n = function(e) { return i.prototype[t].apply(this, e) }; return function() { var t, i = this._super,
						a = this._superApply; return this._super = e, this._superApply = n, t = s.apply(this, arguments), this._super = i, this._superApply = a, t } }(), void 0) : (h[t] = s, void 0) }), o.prototype = e.widget.extend(r, { widgetEventPrefix: a ? r.widgetEventPrefix || t : t }, h, { constructor: o, namespace: l, widgetName: t, widgetFullName: n }), a ? (e.each(a._childConstructors, function(t, i) { var s = i.prototype;
			e.widget(s.namespace + "." + s.widgetName, o, i._proto) }), delete a._childConstructors) : i._childConstructors.push(o), e.widget.bridge(t, o), o }, e.widget.extend = function(t) { for(var i, s, a = n.call(arguments, 1), o = 0, r = a.length; r > o; o++)
			for(i in a[o]) s = a[o][i], a[o].hasOwnProperty(i) && void 0 !== s && (t[i] = e.isPlainObject(s) ? e.isPlainObject(t[i]) ? e.widget.extend({}, t[i], s) : e.widget.extend({}, s) : s); return t }, e.widget.bridge = function(t, i) { var s = i.prototype.widgetFullName || t;
		e.fn[t] = function(a) { var o = "string" == typeof a,
				r = n.call(arguments, 1),
				h = this; return o ? this.each(function() { var i, n = e.data(this, s); return "instance" === a ? (h = n, !1) : n ? e.isFunction(n[a]) && "_" !== a.charAt(0) ? (i = n[a].apply(n, r), i !== n && void 0 !== i ? (h = i && i.jquery ? h.pushStack(i.get()) : i, !1) : void 0) : e.error("no such method '" + a + "' for " + t + " widget instance") : e.error("cannot call methods on " + t + " prior to initialization; " + "attempted to call method '" + a + "'") }) : (r.length && (a = e.widget.extend.apply(null, [a].concat(r))), this.each(function() { var t = e.data(this, s);
				t ? (t.option(a || {}), t._init && t._init()) : e.data(this, s, new i(a, this)) })), h } }, e.Widget = function() {}, e.Widget._childConstructors = [], e.Widget.prototype = { widgetName: "widget", widgetEventPrefix: "", defaultElement: "<div>", options: { disabled: !1, create: null }, _createWidget: function(t, i) { i = e(i || this.defaultElement || this)[0], this.element = e(i), this.uuid = s++, this.eventNamespace = "." + this.widgetName + this.uuid, this.bindings = e(), this.hoverable = e(), this.focusable = e(), i !== this && (e.data(i, this.widgetFullName, this), this._on(!0, this.element, { remove: function(e) { e.target === i && this.destroy() } }), this.document = e(i.style ? i.ownerDocument : i.document || i), this.window = e(this.document[0].defaultView || this.document[0].parentWindow)), this.options = e.widget.extend({}, this.options, this._getCreateOptions(), t), this._create(), this._trigger("create", null, this._getCreateEventData()), this._init() }, _getCreateOptions: e.noop, _getCreateEventData: e.noop, _create: e.noop, _init: e.noop, destroy: function() { this._destroy(), this.element.unbind(this.eventNamespace).removeData(this.widgetFullName).removeData(e.camelCase(this.widgetFullName)), this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName + "-disabled " + "ui-state-disabled"), this.bindings.unbind(this.eventNamespace), this.hoverable.removeClass("ui-state-hover"), this.focusable.removeClass("ui-state-focus") }, _destroy: e.noop, widget: function() { return this.element }, option: function(t, i) { var s, n, a, o = t; if(0 === arguments.length) return e.widget.extend({}, this.options); if("string" == typeof t)
				if(o = {}, s = t.split("."), t = s.shift(), s.length) { for(n = o[t] = e.widget.extend({}, this.options[t]), a = 0; s.length - 1 > a; a++) n[s[a]] = n[s[a]] || {}, n = n[s[a]]; if(t = s.pop(), 1 === arguments.length) return void 0 === n[t] ? null : n[t];
					n[t] = i } else { if(1 === arguments.length) return void 0 === this.options[t] ? null : this.options[t];
					o[t] = i }
			return this._setOptions(o), this }, _setOptions: function(e) { var t; for(t in e) this._setOption(t, e[t]); return this }, _setOption: function(e, t) { return this.options[e] = t, "disabled" === e && (this.widget().toggleClass(this.widgetFullName + "-disabled", !!t), t && (this.hoverable.removeClass("ui-state-hover"), this.focusable.removeClass("ui-state-focus"))), this }, enable: function() { return this._setOptions({ disabled: !1 }) }, disable: function() { return this._setOptions({ disabled: !0 }) }, _on: function(t, i, s) { var n, a = this; "boolean" != typeof t && (s = i, i = t, t = !1), s ? (i = n = e(i), this.bindings = this.bindings.add(i)) : (s = i, i = this.element, n = this.widget()), e.each(s, function(s, o) {
				function r() { return t || a.options.disabled !== !0 && !e(this).hasClass("ui-state-disabled") ? ("string" == typeof o ? a[o] : o).apply(a, arguments) : void 0 } "string" != typeof o && (r.guid = o.guid = o.guid || r.guid || e.guid++); var h = s.match(/^([\w:-]*)\s*(.*)$/),
					l = h[1] + a.eventNamespace,
					u = h[2];
				u ? n.delegate(u, l, r) : i.bind(l, r) }) }, _off: function(t, i) { i = (i || "").split(" ").join(this.eventNamespace + " ") + this.eventNamespace, t.unbind(i).undelegate(i), this.bindings = e(this.bindings.not(t).get()), this.focusable = e(this.focusable.not(t).get()), this.hoverable = e(this.hoverable.not(t).get()) }, _delay: function(e, t) {
			function i() { return("string" == typeof e ? s[e] : e).apply(s, arguments) } var s = this; return setTimeout(i, t || 0) }, _hoverable: function(t) { this.hoverable = this.hoverable.add(t), this._on(t, { mouseenter: function(t) { e(t.currentTarget).addClass("ui-state-hover") }, mouseleave: function(t) { e(t.currentTarget).removeClass("ui-state-hover") } }) }, _focusable: function(t) { this.focusable = this.focusable.add(t), this._on(t, { focusin: function(t) { e(t.currentTarget).addClass("ui-state-focus") }, focusout: function(t) { e(t.currentTarget).removeClass("ui-state-focus") } }) }, _trigger: function(t, i, s) { var n, a, o = this.options[t]; if(s = s || {}, i = e.Event(i), i.type = (t === this.widgetEventPrefix ? t : this.widgetEventPrefix + t).toLowerCase(), i.target = this.element[0], a = i.originalEvent)
				for(n in a) n in i || (i[n] = a[n]); return this.element.trigger(i, s), !(e.isFunction(o) && o.apply(this.element[0], [i].concat(s)) === !1 || i.isDefaultPrevented()) } }, e.each({ show: "fadeIn", hide: "fadeOut" }, function(t, i) { e.Widget.prototype["_" + t] = function(s, n, a) { "string" == typeof n && (n = { effect: n }); var o, r = n ? n === !0 || "number" == typeof n ? i : n.effect || i : t;
			n = n || {}, "number" == typeof n && (n = { duration: n }), o = !e.isEmptyObject(n), n.complete = a, n.delay && s.delay(n.delay), o && e.effects && e.effects.effect[r] ? s[t](n) : r !== t && s[r] ? s[r](n.duration, n.easing, a) : s.queue(function(i) { e(this)[t](), a && a.call(s[0]), i() }) } }), e.widget;
	var a = !1;
	e(document).mouseup(function() { a = !1 }), e.widget("ui.mouse", { version: "1.11.4", options: { cancel: "input,textarea,button,select,option", distance: 1, delay: 0 }, _mouseInit: function() { var t = this;
			this.element.bind("mousedown." + this.widgetName, function(e) { return t._mouseDown(e) }).bind("click." + this.widgetName, function(i) { return !0 === e.data(i.target, t.widgetName + ".preventClickEvent") ? (e.removeData(i.target, t.widgetName + ".preventClickEvent"), i.stopImmediatePropagation(), !1) : void 0 }), this.started = !1 }, _mouseDestroy: function() { this.element.unbind("." + this.widgetName), this._mouseMoveDelegate && this.document.unbind("mousemove." + this.widgetName, this._mouseMoveDelegate).unbind("mouseup." + this.widgetName, this._mouseUpDelegate) }, _mouseDown: function(t) { if(!a) { this._mouseMoved = !1, this._mouseStarted && this._mouseUp(t), this._mouseDownEvent = t; var i = this,
					s = 1 === t.which,
					n = "string" == typeof this.options.cancel && t.target.nodeName ? e(t.target).closest(this.options.cancel).length : !1; return s && !n && this._mouseCapture(t) ? (this.mouseDelayMet = !this.options.delay, this.mouseDelayMet || (this._mouseDelayTimer = setTimeout(function() { i.mouseDelayMet = !0 }, this.options.delay)), this._mouseDistanceMet(t) && this._mouseDelayMet(t) && (this._mouseStarted = this._mouseStart(t) !== !1, !this._mouseStarted) ? (t.preventDefault(), !0) : (!0 === e.data(t.target, this.widgetName + ".preventClickEvent") && e.removeData(t.target, this.widgetName + ".preventClickEvent"), this._mouseMoveDelegate = function(e) { return i._mouseMove(e) }, this._mouseUpDelegate = function(e) { return i._mouseUp(e) }, this.document.bind("mousemove." + this.widgetName, this._mouseMoveDelegate).bind("mouseup." + this.widgetName, this._mouseUpDelegate), t.preventDefault(), a = !0, !0)) : !0 } }, _mouseMove: function(t) { if(this._mouseMoved) { if(e.ui.ie && (!document.documentMode || 9 > document.documentMode) && !t.button) return this._mouseUp(t); if(!t.which) return this._mouseUp(t) } return(t.which || t.button) && (this._mouseMoved = !0), this._mouseStarted ? (this._mouseDrag(t), t.preventDefault()) : (this._mouseDistanceMet(t) && this._mouseDelayMet(t) && (this._mouseStarted = this._mouseStart(this._mouseDownEvent, t) !== !1, this._mouseStarted ? this._mouseDrag(t) : this._mouseUp(t)), !this._mouseStarted) }, _mouseUp: function(t) { return this.document.unbind("mousemove." + this.widgetName, this._mouseMoveDelegate).unbind("mouseup." + this.widgetName, this._mouseUpDelegate), this._mouseStarted && (this._mouseStarted = !1, t.target === this._mouseDownEvent.target && e.data(t.target, this.widgetName + ".preventClickEvent", !0), this._mouseStop(t)), a = !1, !1 }, _mouseDistanceMet: function(e) { return Math.max(Math.abs(this._mouseDownEvent.pageX - e.pageX), Math.abs(this._mouseDownEvent.pageY - e.pageY)) >= this.options.distance }, _mouseDelayMet: function() { return this.mouseDelayMet }, _mouseStart: function() {}, _mouseDrag: function() {}, _mouseStop: function() {}, _mouseCapture: function() { return !0 } }), e.widget("ui.draggable", e.ui.mouse, { version: "1.11.4", widgetEventPrefix: "drag", options: { addClasses: !0, appendTo: "parent", axis: !1, connectToSortable: !1, containment: !1, cursor: "auto", cursorAt: !1, grid: !1, handle: !1, helper: "original", iframeFix: !1, opacity: !1, refreshPositions: !1, revert: !1, revertDuration: 500, scope: "default", scroll: !0, scrollSensitivity: 20, scrollSpeed: 20, snap: !1, snapMode: "both", snapTolerance: 20, stack: !1, zIndex: !1, drag: null, start: null, stop: null }, _create: function() { "original" === this.options.helper && this._setPositionRelative(), this.options.addClasses && this.element.addClass("ui-draggable"), this.options.disabled && this.element.addClass("ui-draggable-disabled"), this._setHandleClassName(), this._mouseInit() }, _setOption: function(e, t) { this._super(e, t), "handle" === e && (this._removeHandleClassName(), this._setHandleClassName()) }, _destroy: function() { return(this.helper || this.element).is(".ui-draggable-dragging") ? (this.destroyOnClear = !0, void 0) : (this.element.removeClass("ui-draggable ui-draggable-dragging ui-draggable-disabled"), this._removeHandleClassName(), this._mouseDestroy(), void 0) }, _mouseCapture: function(t) { var i = this.options; return this._blurActiveElement(t), this.helper || i.disabled || e(t.target).closest(".ui-resizable-handle").length > 0 ? !1 : (this.handle = this._getHandle(t), this.handle ? (this._blockFrames(i.iframeFix === !0 ? "iframe" : i.iframeFix), !0) : !1) }, _blockFrames: function(t) { this.iframeBlocks = this.document.find(t).map(function() { var t = e(this); return e("<div>").css("position", "absolute").appendTo(t.parent()).outerWidth(t.outerWidth()).outerHeight(t.outerHeight()).offset(t.offset())[0] }) }, _unblockFrames: function() { this.iframeBlocks && (this.iframeBlocks.remove(), delete this.iframeBlocks) }, _blurActiveElement: function(t) { var i = this.document[0]; if(this.handleElement.is(t.target)) try { i.activeElement && "body" !== i.activeElement.nodeName.toLowerCase() && e(i.activeElement).blur() } catch(s) {} }, _mouseStart: function(t) { var i = this.options; return this.helper = this._createHelper(t), this.helper.addClass("ui-draggable-dragging"), this._cacheHelperProportions(), e.ui.ddmanager && (e.ui.ddmanager.current = this), this._cacheMargins(), this.cssPosition = this.helper.css("position"), this.scrollParent = this.helper.scrollParent(!0), this.offsetParent = this.helper.offsetParent(), this.hasFixedAncestor = this.helper.parents().filter(function() { return "fixed" === e(this).css("position") }).length > 0, this.positionAbs = this.element.offset(), this._refreshOffsets(t), this.originalPosition = this.position = this._generatePosition(t, !1), this.originalPageX = t.pageX, this.originalPageY = t.pageY, i.cursorAt && this._adjustOffsetFromHelper(i.cursorAt), this._setContainment(), this._trigger("start", t) === !1 ? (this._clear(), !1) : (this._cacheHelperProportions(), e.ui.ddmanager && !i.dropBehaviour && e.ui.ddmanager.prepareOffsets(this, t), this._normalizeRightBottom(), this._mouseDrag(t, !0), e.ui.ddmanager && e.ui.ddmanager.dragStart(this, t), !0) }, _refreshOffsets: function(e) { this.offset = { top: this.positionAbs.top - this.margins.top, left: this.positionAbs.left - this.margins.left, scroll: !1, parent: this._getParentOffset(), relative: this._getRelativeOffset() }, this.offset.click = { left: e.pageX - this.offset.left, top: e.pageY - this.offset.top } }, _mouseDrag: function(t, i) { if(this.hasFixedAncestor && (this.offset.parent = this._getParentOffset()), this.position = this._generatePosition(t, !0), this.positionAbs = this._convertPositionTo("absolute"), !i) { var s = this._uiHash(); if(this._trigger("drag", t, s) === !1) return this._mouseUp({}), !1;
				this.position = s.position } return this.helper[0].style.left = this.position.left + "px", this.helper[0].style.top = this.position.top + "px", e.ui.ddmanager && e.ui.ddmanager.drag(this, t), !1 }, _mouseStop: function(t) { var i = this,
				s = !1; return e.ui.ddmanager && !this.options.dropBehaviour && (s = e.ui.ddmanager.drop(this, t)), this.dropped && (s = this.dropped, this.dropped = !1), "invalid" === this.options.revert && !s || "valid" === this.options.revert && s || this.options.revert === !0 || e.isFunction(this.options.revert) && this.options.revert.call(this.element, s) ? e(this.helper).animate(this.originalPosition, parseInt(this.options.revertDuration, 10), function() { i._trigger("stop", t) !== !1 && i._clear() }) : this._trigger("stop", t) !== !1 && this._clear(), !1 }, _mouseUp: function(t) { return this._unblockFrames(), e.ui.ddmanager && e.ui.ddmanager.dragStop(this, t), this.handleElement.is(t.target) && this.element.focus(), e.ui.mouse.prototype._mouseUp.call(this, t) }, cancel: function() { return this.helper.is(".ui-draggable-dragging") ? this._mouseUp({}) : this._clear(), this }, _getHandle: function(t) { return this.options.handle ? !!e(t.target).closest(this.element.find(this.options.handle)).length : !0 }, _setHandleClassName: function() { this.handleElement = this.options.handle ? this.element.find(this.options.handle) : this.element, this.handleElement.addClass("ui-draggable-handle") }, _removeHandleClassName: function() { this.handleElement.removeClass("ui-draggable-handle") }, _createHelper: function(t) { var i = this.options,
				s = e.isFunction(i.helper),
				n = s ? e(i.helper.apply(this.element[0], [t])) : "clone" === i.helper ? this.element.clone().removeAttr("id") : this.element; return n.parents("body").length || n.appendTo("parent" === i.appendTo ? this.element[0].parentNode : i.appendTo), s && n[0] === this.element[0] && this._setPositionRelative(), n[0] === this.element[0] || /(fixed|absolute)/.test(n.css("position")) || n.css("position", "absolute"), n }, _setPositionRelative: function() { /^(?:r|a|f)/.test(this.element.css("position")) || (this.element[0].style.position = "relative") }, _adjustOffsetFromHelper: function(t) { "string" == typeof t && (t = t.split(" ")), e.isArray(t) && (t = { left: +t[0], top: +t[1] || 0 }), "left" in t && (this.offset.click.left = t.left + this.margins.left), "right" in t && (this.offset.click.left = this.helperProportions.width - t.right + this.margins.left), "top" in t && (this.offset.click.top = t.top + this.margins.top), "bottom" in t && (this.offset.click.top = this.helperProportions.height - t.bottom + this.margins.top) }, _isRootNode: function(e) { return /(html|body)/i.test(e.tagName) || e === this.document[0] }, _getParentOffset: function() { var t = this.offsetParent.offset(),
				i = this.document[0]; return "absolute" === this.cssPosition && this.scrollParent[0] !== i && e.contains(this.scrollParent[0], this.offsetParent[0]) && (t.left += this.scrollParent.scrollLeft(), t.top += this.scrollParent.scrollTop()), this._isRootNode(this.offsetParent[0]) && (t = { top: 0, left: 0 }), { top: t.top + (parseInt(this.offsetParent.css("borderTopWidth"), 10) || 0), left: t.left + (parseInt(this.offsetParent.css("borderLeftWidth"), 10) || 0) } }, _getRelativeOffset: function() { if("relative" !== this.cssPosition) return { top: 0, left: 0 }; var e = this.element.position(),
				t = this._isRootNode(this.scrollParent[0]); return { top: e.top - (parseInt(this.helper.css("top"), 10) || 0) + (t ? 0 : this.scrollParent.scrollTop()), left: e.left - (parseInt(this.helper.css("left"), 10) || 0) + (t ? 0 : this.scrollParent.scrollLeft()) } }, _cacheMargins: function() { this.margins = { left: parseInt(this.element.css("marginLeft"), 10) || 0, top: parseInt(this.element.css("marginTop"), 10) || 0, right: parseInt(this.element.css("marginRight"), 10) || 0, bottom: parseInt(this.element.css("marginBottom"), 10) || 0 } }, _cacheHelperProportions: function() { this.helperProportions = { width: this.helper.outerWidth(), height: this.helper.outerHeight() } }, _setContainment: function() { var t, i, s, n = this.options,
				a = this.document[0]; return this.relativeContainer = null, n.containment ? "window" === n.containment ? (this.containment = [e(window).scrollLeft() - this.offset.relative.left - this.offset.parent.left, e(window).scrollTop() - this.offset.relative.top - this.offset.parent.top, e(window).scrollLeft() + e(window).width() - this.helperProportions.width - this.margins.left, e(window).scrollTop() + (e(window).height() || a.body.parentNode.scrollHeight) - this.helperProportions.height - this.margins.top], void 0) : "document" === n.containment ? (this.containment = [0, 0, e(a).width() - this.helperProportions.width - this.margins.left, (e(a).height() || a.body.parentNode.scrollHeight) - this.helperProportions.height - this.margins.top], void 0) : n.containment.constructor === Array ? (this.containment = n.containment, void 0) : ("parent" === n.containment && (n.containment = this.helper[0].parentNode), i = e(n.containment), s = i[0], s && (t = /(scroll|auto)/.test(i.css("overflow")), this.containment = [(parseInt(i.css("borderLeftWidth"), 10) || 0) + (parseInt(i.css("paddingLeft"), 10) || 0), (parseInt(i.css("borderTopWidth"), 10) || 0) + (parseInt(i.css("paddingTop"), 10) || 0), (t ? Math.max(s.scrollWidth, s.offsetWidth) : s.offsetWidth) - (parseInt(i.css("borderRightWidth"), 10) || 0) - (parseInt(i.css("paddingRight"), 10) || 0) - this.helperProportions.width - this.margins.left - this.margins.right, (t ? Math.max(s.scrollHeight, s.offsetHeight) : s.offsetHeight) - (parseInt(i.css("borderBottomWidth"), 10) || 0) - (parseInt(i.css("paddingBottom"), 10) || 0) - this.helperProportions.height - this.margins.top - this.margins.bottom], this.relativeContainer = i), void 0) : (this.containment = null, void 0) }, _convertPositionTo: function(e, t) { t || (t = this.position); var i = "absolute" === e ? 1 : -1,
				s = this._isRootNode(this.scrollParent[0]); return { top: t.top + this.offset.relative.top * i + this.offset.parent.top * i - ("fixed" === this.cssPosition ? -this.offset.scroll.top : s ? 0 : this.offset.scroll.top) * i, left: t.left + this.offset.relative.left * i + this.offset.parent.left * i - ("fixed" === this.cssPosition ? -this.offset.scroll.left : s ? 0 : this.offset.scroll.left) * i } }, _generatePosition: function(e, t) { var i, s, n, a, o = this.options,
				r = this._isRootNode(this.scrollParent[0]),
				h = e.pageX,
				l = e.pageY; return r && this.offset.scroll || (this.offset.scroll = { top: this.scrollParent.scrollTop(), left: this.scrollParent.scrollLeft() }), t && (this.containment && (this.relativeContainer ? (s = this.relativeContainer.offset(), i = [this.containment[0] + s.left, this.containment[1] + s.top, this.containment[2] + s.left, this.containment[3] + s.top]) : i = this.containment, e.pageX - this.offset.click.left < i[0] && (h = i[0] + this.offset.click.left), e.pageY - this.offset.click.top < i[1] && (l = i[1] + this.offset.click.top), e.pageX - this.offset.click.left > i[2] && (h = i[2] + this.offset.click.left), e.pageY - this.offset.click.top > i[3] && (l = i[3] + this.offset.click.top)), o.grid && (n = o.grid[1] ? this.originalPageY + Math.round((l - this.originalPageY) / o.grid[1]) * o.grid[1] : this.originalPageY, l = i ? n - this.offset.click.top >= i[1] || n - this.offset.click.top > i[3] ? n : n - this.offset.click.top >= i[1] ? n - o.grid[1] : n + o.grid[1] : n, a = o.grid[0] ? this.originalPageX + Math.round((h - this.originalPageX) / o.grid[0]) * o.grid[0] : this.originalPageX, h = i ? a - this.offset.click.left >= i[0] || a - this.offset.click.left > i[2] ? a : a - this.offset.click.left >= i[0] ? a - o.grid[0] : a + o.grid[0] : a), "y" === o.axis && (h = this.originalPageX), "x" === o.axis && (l = this.originalPageY)), { top: l - this.offset.click.top - this.offset.relative.top - this.offset.parent.top + ("fixed" === this.cssPosition ? -this.offset.scroll.top : r ? 0 : this.offset.scroll.top), left: h - this.offset.click.left - this.offset.relative.left - this.offset.parent.left + ("fixed" === this.cssPosition ? -this.offset.scroll.left : r ? 0 : this.offset.scroll.left) } }, _clear: function() { this.helper.removeClass("ui-draggable-dragging"), this.helper[0] === this.element[0] || this.cancelHelperRemoval || this.helper.remove(), this.helper = null, this.cancelHelperRemoval = !1, this.destroyOnClear && this.destroy() }, _normalizeRightBottom: function() { "y" !== this.options.axis && "auto" !== this.helper.css("right") && (this.helper.width(this.helper.width()), this.helper.css("right", "auto")), "x" !== this.options.axis && "auto" !== this.helper.css("bottom") && (this.helper.height(this.helper.height()), this.helper.css("bottom", "auto")) }, _trigger: function(t, i, s) { return s = s || this._uiHash(), e.ui.plugin.call(this, t, [i, s, this], !0), /^(drag|start|stop)/.test(t) && (this.positionAbs = this._convertPositionTo("absolute"), s.offset = this.positionAbs), e.Widget.prototype._trigger.call(this, t, i, s) }, plugins: {}, _uiHash: function() { return { helper: this.helper, position: this.position, originalPosition: this.originalPosition, offset: this.positionAbs } } }), e.ui.plugin.add("draggable", "connectToSortable", { start: function(t, i, s) { var n = e.extend({}, i, { item: s.element });
			s.sortables = [], e(s.options.connectToSortable).each(function() { var i = e(this).sortable("instance");
				i && !i.options.disabled && (s.sortables.push(i), i.refreshPositions(), i._trigger("activate", t, n)) }) }, stop: function(t, i, s) { var n = e.extend({}, i, { item: s.element });
			s.cancelHelperRemoval = !1, e.each(s.sortables, function() { var e = this;
				e.isOver ? (e.isOver = 0, s.cancelHelperRemoval = !0, e.cancelHelperRemoval = !1, e._storedCSS = { position: e.placeholder.css("position"), top: e.placeholder.css("top"), left: e.placeholder.css("left") }, e._mouseStop(t), e.options.helper = e.options._helper) : (e.cancelHelperRemoval = !0, e._trigger("deactivate", t, n)) }) }, drag: function(t, i, s) { e.each(s.sortables, function() { var n = !1,
					a = this;
				a.positionAbs = s.positionAbs, a.helperProportions = s.helperProportions, a.offset.click = s.offset.click, a._intersectsWith(a.containerCache) && (n = !0, e.each(s.sortables, function() { return this.positionAbs = s.positionAbs, this.helperProportions = s.helperProportions, this.offset.click = s.offset.click, this !== a && this._intersectsWith(this.containerCache) && e.contains(a.element[0], this.element[0]) && (n = !1), n })), n ? (a.isOver || (a.isOver = 1, s._parent = i.helper.parent(), a.currentItem = i.helper.appendTo(a.element).data("ui-sortable-item", !0), a.options._helper = a.options.helper, a.options.helper = function() { return i.helper[0] }, t.target = a.currentItem[0], a._mouseCapture(t, !0), a._mouseStart(t, !0, !0), a.offset.click.top = s.offset.click.top, a.offset.click.left = s.offset.click.left, a.offset.parent.left -= s.offset.parent.left - a.offset.parent.left, a.offset.parent.top -= s.offset.parent.top - a.offset.parent.top, s._trigger("toSortable", t), s.dropped = a.element, e.each(s.sortables, function() { this.refreshPositions() }), s.currentItem = s.element, a.fromOutside = s), a.currentItem && (a._mouseDrag(t), i.position = a.position)) : a.isOver && (a.isOver = 0, a.cancelHelperRemoval = !0, a.options._revert = a.options.revert, a.options.revert = !1, a._trigger("out", t, a._uiHash(a)), a._mouseStop(t, !0), a.options.revert = a.options._revert, a.options.helper = a.options._helper, a.placeholder && a.placeholder.remove(), i.helper.appendTo(s._parent), s._refreshOffsets(t), i.position = s._generatePosition(t, !0), s._trigger("fromSortable", t), s.dropped = !1, e.each(s.sortables, function() { this.refreshPositions() })) }) } }), e.ui.plugin.add("draggable", "cursor", { start: function(t, i, s) { var n = e("body"),
				a = s.options;
			n.css("cursor") && (a._cursor = n.css("cursor")), n.css("cursor", a.cursor) }, stop: function(t, i, s) { var n = s.options;
			n._cursor && e("body").css("cursor", n._cursor) } }), e.ui.plugin.add("draggable", "opacity", { start: function(t, i, s) { var n = e(i.helper),
				a = s.options;
			n.css("opacity") && (a._opacity = n.css("opacity")), n.css("opacity", a.opacity) }, stop: function(t, i, s) { var n = s.options;
			n._opacity && e(i.helper).css("opacity", n._opacity) } }), e.ui.plugin.add("draggable", "scroll", { start: function(e, t, i) { i.scrollParentNotHidden || (i.scrollParentNotHidden = i.helper.scrollParent(!1)), i.scrollParentNotHidden[0] !== i.document[0] && "HTML" !== i.scrollParentNotHidden[0].tagName && (i.overflowOffset = i.scrollParentNotHidden.offset()) }, drag: function(t, i, s) { var n = s.options,
				a = !1,
				o = s.scrollParentNotHidden[0],
				r = s.document[0];
			o !== r && "HTML" !== o.tagName ? (n.axis && "x" === n.axis || (s.overflowOffset.top + o.offsetHeight - t.pageY < n.scrollSensitivity ? o.scrollTop = a = o.scrollTop + n.scrollSpeed : t.pageY - s.overflowOffset.top < n.scrollSensitivity && (o.scrollTop = a = o.scrollTop - n.scrollSpeed)), n.axis && "y" === n.axis || (s.overflowOffset.left + o.offsetWidth - t.pageX < n.scrollSensitivity ? o.scrollLeft = a = o.scrollLeft + n.scrollSpeed : t.pageX - s.overflowOffset.left < n.scrollSensitivity && (o.scrollLeft = a = o.scrollLeft - n.scrollSpeed))) : (n.axis && "x" === n.axis || (t.pageY - e(r).scrollTop() < n.scrollSensitivity ? a = e(r).scrollTop(e(r).scrollTop() - n.scrollSpeed) : e(window).height() - (t.pageY - e(r).scrollTop()) < n.scrollSensitivity && (a = e(r).scrollTop(e(r).scrollTop() + n.scrollSpeed))), n.axis && "y" === n.axis || (t.pageX - e(r).scrollLeft() < n.scrollSensitivity ? a = e(r).scrollLeft(e(r).scrollLeft() - n.scrollSpeed) : e(window).width() - (t.pageX - e(r).scrollLeft()) < n.scrollSensitivity && (a = e(r).scrollLeft(e(r).scrollLeft() + n.scrollSpeed)))), a !== !1 && e.ui.ddmanager && !n.dropBehaviour && e.ui.ddmanager.prepareOffsets(s, t) } }), e.ui.plugin.add("draggable", "snap", { start: function(t, i, s) { var n = s.options;
			s.snapElements = [], e(n.snap.constructor !== String ? n.snap.items || ":data(ui-draggable)" : n.snap).each(function() { var t = e(this),
					i = t.offset();
				this !== s.element[0] && s.snapElements.push({ item: this, width: t.outerWidth(), height: t.outerHeight(), top: i.top, left: i.left }) }) }, drag: function(t, i, s) { var n, a, o, r, h, l, u, d, c, p, f = s.options,
				m = f.snapTolerance,
				g = i.offset.left,
				v = g + s.helperProportions.width,
				y = i.offset.top,
				b = y + s.helperProportions.height; for(c = s.snapElements.length - 1; c >= 0; c--) h = s.snapElements[c].left - s.margins.left, l = h + s.snapElements[c].width, u = s.snapElements[c].top - s.margins.top, d = u + s.snapElements[c].height, h - m > v || g > l + m || u - m > b || y > d + m || !e.contains(s.snapElements[c].item.ownerDocument, s.snapElements[c].item) ? (s.snapElements[c].snapping && s.options.snap.release && s.options.snap.release.call(s.element, t, e.extend(s._uiHash(), { snapItem: s.snapElements[c].item })), s.snapElements[c].snapping = !1) : ("inner" !== f.snapMode && (n = m >= Math.abs(u - b), a = m >= Math.abs(d - y), o = m >= Math.abs(h - v), r = m >= Math.abs(l - g), n && (i.position.top = s._convertPositionTo("relative", { top: u - s.helperProportions.height, left: 0 }).top), a && (i.position.top = s._convertPositionTo("relative", { top: d, left: 0 }).top), o && (i.position.left = s._convertPositionTo("relative", { top: 0, left: h - s.helperProportions.width }).left), r && (i.position.left = s._convertPositionTo("relative", { top: 0, left: l }).left)), p = n || a || o || r, "outer" !== f.snapMode && (n = m >= Math.abs(u - y), a = m >= Math.abs(d - b), o = m >= Math.abs(h - g), r = m >= Math.abs(l - v), n && (i.position.top = s._convertPositionTo("relative", { top: u, left: 0 }).top), a && (i.position.top = s._convertPositionTo("relative", { top: d - s.helperProportions.height, left: 0 }).top), o && (i.position.left = s._convertPositionTo("relative", { top: 0, left: h }).left), r && (i.position.left = s._convertPositionTo("relative", { top: 0, left: l - s.helperProportions.width }).left)), !s.snapElements[c].snapping && (n || a || o || r || p) && s.options.snap.snap && s.options.snap.snap.call(s.element, t, e.extend(s._uiHash(), { snapItem: s.snapElements[c].item })), s.snapElements[c].snapping = n || a || o || r || p) } }), e.ui.plugin.add("draggable", "stack", { start: function(t, i, s) { var n, a = s.options,
				o = e.makeArray(e(a.stack)).sort(function(t, i) { return(parseInt(e(t).css("zIndex"), 10) || 0) - (parseInt(e(i).css("zIndex"), 10) || 0) });
			o.length && (n = parseInt(e(o[0]).css("zIndex"), 10) || 0, e(o).each(function(t) { e(this).css("zIndex", n + t) }), this.css("zIndex", n + o.length)) } }), e.ui.plugin.add("draggable", "zIndex", { start: function(t, i, s) { var n = e(i.helper),
				a = s.options;
			n.css("zIndex") && (a._zIndex = n.css("zIndex")), n.css("zIndex", a.zIndex) }, stop: function(t, i, s) { var n = s.options;
			n._zIndex && e(i.helper).css("zIndex", n._zIndex) } }), e.ui.draggable, e.widget("ui.resizable", e.ui.mouse, {
		version: "1.11.4",
		widgetEventPrefix: "resize",
		options: { alsoResize: !1, animate: !1, animateDuration: "slow", animateEasing: "swing", aspectRatio: !1, autoHide: !1, containment: !1, ghost: !1, grid: !1, handles: "e,s,se", helper: !1, maxHeight: null, maxWidth: null, minHeight: 10, minWidth: 10, zIndex: 90, resize: null, start: null, stop: null },
		_num: function(e) {
			return parseInt(e, 10) || 0
		},
		_isNumber: function(e) { return !isNaN(parseInt(e, 10)) },
		_hasScroll: function(t, i) { if("hidden" === e(t).css("overflow")) return !1; var s = i && "left" === i ? "scrollLeft" : "scrollTop",
				n = !1; return t[s] > 0 ? !0 : (t[s] = 1, n = t[s] > 0, t[s] = 0, n) },
		_create: function() { var t, i, s, n, a, o = this,
				r = this.options; if(this.element.addClass("ui-resizable"), e.extend(this, { _aspectRatio: !!r.aspectRatio, aspectRatio: r.aspectRatio, originalElement: this.element, _proportionallyResizeElements: [], _helper: r.helper || r.ghost || r.animate ? r.helper || "ui-resizable-helper" : null }), this.element[0].nodeName.match(/^(canvas|textarea|input|select|button|img)$/i) && (this.element.wrap(e("<div class='ui-wrapper' style='overflow: hidden;'></div>").css({ position: this.element.css("position"), width: this.element.outerWidth(), height: this.element.outerHeight(), top: this.element.css("top"), left: this.element.css("left") })), this.element = this.element.parent().data("ui-resizable", this.element.resizable("instance")), this.elementIsWrapper = !0, this.element.css({ marginLeft: this.originalElement.css("marginLeft"), marginTop: this.originalElement.css("marginTop"), marginRight: this.originalElement.css("marginRight"), marginBottom: this.originalElement.css("marginBottom") }), this.originalElement.css({ marginLeft: 0, marginTop: 0, marginRight: 0, marginBottom: 0 }), this.originalResizeStyle = this.originalElement.css("resize"), this.originalElement.css("resize", "none"), this._proportionallyResizeElements.push(this.originalElement.css({ position: "static", zoom: 1, display: "block" })), this.originalElement.css({ margin: this.originalElement.css("margin") }), this._proportionallyResize()), this.handles = r.handles || (e(".ui-resizable-handle", this.element).length ? { n: ".ui-resizable-n", e: ".ui-resizable-e", s: ".ui-resizable-s", w: ".ui-resizable-w", se: ".ui-resizable-se", sw: ".ui-resizable-sw", ne: ".ui-resizable-ne", nw: ".ui-resizable-nw" } : "e,s,se"), this._handles = e(), this.handles.constructor === String)
				for("all" === this.handles && (this.handles = "n,e,s,w,se,sw,ne,nw"), t = this.handles.split(","), this.handles = {}, i = 0; t.length > i; i++) s = e.trim(t[i]), a = "ui-resizable-" + s, n = e("<div class='ui-resizable-handle " + a + "'></div>"), n.css({ zIndex: r.zIndex }), "se" === s && n.addClass("ui-icon ui-icon-gripsmall-diagonal-se"), this.handles[s] = ".ui-resizable-" + s, this.element.append(n);
			this._renderAxis = function(t) { var i, s, n, a;
				t = t || this.element; for(i in this.handles) this.handles[i].constructor === String ? this.handles[i] = this.element.children(this.handles[i]).first().show() : (this.handles[i].jquery || this.handles[i].nodeType) && (this.handles[i] = e(this.handles[i]), this._on(this.handles[i], { mousedown: o._mouseDown })), this.elementIsWrapper && this.originalElement[0].nodeName.match(/^(textarea|input|select|button)$/i) && (s = e(this.handles[i], this.element), a = /sw|ne|nw|se|n|s/.test(i) ? s.outerHeight() : s.outerWidth(), n = ["padding", /ne|nw|n/.test(i) ? "Top" : /se|sw|s/.test(i) ? "Bottom" : /^e$/.test(i) ? "Right" : "Left"].join(""), t.css(n, a), this._proportionallyResize()), this._handles = this._handles.add(this.handles[i]) }, this._renderAxis(this.element), this._handles = this._handles.add(this.element.find(".ui-resizable-handle")), this._handles.disableSelection(), this._handles.mouseover(function() { o.resizing || (this.className && (n = this.className.match(/ui-resizable-(se|sw|ne|nw|n|e|s|w)/i)), o.axis = n && n[1] ? n[1] : "se") }), r.autoHide && (this._handles.hide(), e(this.element).addClass("ui-resizable-autohide").mouseenter(function() { r.disabled || (e(this).removeClass("ui-resizable-autohide"), o._handles.show()) }).mouseleave(function() { r.disabled || o.resizing || (e(this).addClass("ui-resizable-autohide"), o._handles.hide()) })), this._mouseInit() },
		_destroy: function() { this._mouseDestroy(); var t, i = function(t) { e(t).removeClass("ui-resizable ui-resizable-disabled ui-resizable-resizing").removeData("resizable").removeData("ui-resizable").unbind(".resizable").find(".ui-resizable-handle").remove() }; return this.elementIsWrapper && (i(this.element), t = this.element, this.originalElement.css({ position: t.css("position"), width: t.outerWidth(), height: t.outerHeight(), top: t.css("top"), left: t.css("left") }).insertAfter(t), t.remove()), this.originalElement.css("resize", this.originalResizeStyle), i(this.originalElement), this },
		_mouseCapture: function(t) { var i, s, n = !1; for(i in this.handles) s = e(this.handles[i])[0], (s === t.target || e.contains(s, t.target)) && (n = !0); return !this.options.disabled && n },
		_mouseStart: function(t) { var i, s, n, a = this.options,
				o = this.element; return this.resizing = !0, this._renderProxy(), i = this._num(this.helper.css("left")), s = this._num(this.helper.css("top")), a.containment && (i += e(a.containment).scrollLeft() || 0, s += e(a.containment).scrollTop() || 0), this.offset = this.helper.offset(), this.position = { left: i, top: s }, this.size = this._helper ? { width: this.helper.width(), height: this.helper.height() } : { width: o.width(), height: o.height() }, this.originalSize = this._helper ? { width: o.outerWidth(), height: o.outerHeight() } : { width: o.width(), height: o.height() }, this.sizeDiff = { width: o.outerWidth() - o.width(), height: o.outerHeight() - o.height() }, this.originalPosition = { left: i, top: s }, this.originalMousePosition = { left: t.pageX, top: t.pageY }, this.aspectRatio = "number" == typeof a.aspectRatio ? a.aspectRatio : this.originalSize.width / this.originalSize.height || 1, n = e(".ui-resizable-" + this.axis).css("cursor"), e("body").css("cursor", "auto" === n ? this.axis + "-resize" : n), o.addClass("ui-resizable-resizing"), this._propagate("start", t), !0 },
		_mouseDrag: function(t) { var i, s, n = this.originalMousePosition,
				a = this.axis,
				o = t.pageX - n.left || 0,
				r = t.pageY - n.top || 0,
				h = this._change[a]; return this._updatePrevProperties(), h ? (i = h.apply(this, [t, o, r]), this._updateVirtualBoundaries(t.shiftKey), (this._aspectRatio || t.shiftKey) && (i = this._updateRatio(i, t)), i = this._respectSize(i, t), this._updateCache(i), this._propagate("resize", t), s = this._applyChanges(), !this._helper && this._proportionallyResizeElements.length && this._proportionallyResize(), e.isEmptyObject(s) || (this._updatePrevProperties(), this._trigger("resize", t, this.ui()), this._applyChanges()), !1) : !1 },
		_mouseStop: function(t) { this.resizing = !1; var i, s, n, a, o, r, h, l = this.options,
				u = this; return this._helper && (i = this._proportionallyResizeElements, s = i.length && /textarea/i.test(i[0].nodeName), n = s && this._hasScroll(i[0], "left") ? 0 : u.sizeDiff.height, a = s ? 0 : u.sizeDiff.width, o = { width: u.helper.width() - a, height: u.helper.height() - n }, r = parseInt(u.element.css("left"), 10) + (u.position.left - u.originalPosition.left) || null, h = parseInt(u.element.css("top"), 10) + (u.position.top - u.originalPosition.top) || null, l.animate || this.element.css(e.extend(o, { top: h, left: r })), u.helper.height(u.size.height), u.helper.width(u.size.width), this._helper && !l.animate && this._proportionallyResize()), e("body").css("cursor", "auto"), this.element.removeClass("ui-resizable-resizing"), this._propagate("stop", t), this._helper && this.helper.remove(), !1 },
		_updatePrevProperties: function() { this.prevPosition = { top: this.position.top, left: this.position.left }, this.prevSize = { width: this.size.width, height: this.size.height } },
		_applyChanges: function() { var e = {}; return this.position.top !== this.prevPosition.top && (e.top = this.position.top + "px"), this.position.left !== this.prevPosition.left && (e.left = this.position.left + "px"), this.size.width !== this.prevSize.width && (e.width = this.size.width + "px"), this.size.height !== this.prevSize.height && (e.height = this.size.height + "px"), this.helper.css(e), e },
		_updateVirtualBoundaries: function(e) { var t, i, s, n, a, o = this.options;
			a = { minWidth: this._isNumber(o.minWidth) ? o.minWidth : 0, maxWidth: this._isNumber(o.maxWidth) ? o.maxWidth : 1 / 0, minHeight: this._isNumber(o.minHeight) ? o.minHeight : 0, maxHeight: this._isNumber(o.maxHeight) ? o.maxHeight : 1 / 0 }, (this._aspectRatio || e) && (t = a.minHeight * this.aspectRatio, s = a.minWidth / this.aspectRatio, i = a.maxHeight * this.aspectRatio, n = a.maxWidth / this.aspectRatio, t > a.minWidth && (a.minWidth = t), s > a.minHeight && (a.minHeight = s), a.maxWidth > i && (a.maxWidth = i), a.maxHeight > n && (a.maxHeight = n)), this._vBoundaries = a },
		_updateCache: function(e) { this.offset = this.helper.offset(), this._isNumber(e.left) && (this.position.left = e.left), this._isNumber(e.top) && (this.position.top = e.top), this._isNumber(e.height) && (this.size.height = e.height), this._isNumber(e.width) && (this.size.width = e.width) },
		_updateRatio: function(e) { var t = this.position,
				i = this.size,
				s = this.axis; return this._isNumber(e.height) ? e.width = e.height * this.aspectRatio : this._isNumber(e.width) && (e.height = e.width / this.aspectRatio), "sw" === s && (e.left = t.left + (i.width - e.width), e.top = null), "nw" === s && (e.top = t.top + (i.height - e.height), e.left = t.left + (i.width - e.width)), e },
		_respectSize: function(e) { var t = this._vBoundaries,
				i = this.axis,
				s = this._isNumber(e.width) && t.maxWidth && t.maxWidth < e.width,
				n = this._isNumber(e.height) && t.maxHeight && t.maxHeight < e.height,
				a = this._isNumber(e.width) && t.minWidth && t.minWidth > e.width,
				o = this._isNumber(e.height) && t.minHeight && t.minHeight > e.height,
				r = this.originalPosition.left + this.originalSize.width,
				h = this.position.top + this.size.height,
				l = /sw|nw|w/.test(i),
				u = /nw|ne|n/.test(i); return a && (e.width = t.minWidth), o && (e.height = t.minHeight), s && (e.width = t.maxWidth), n && (e.height = t.maxHeight), a && l && (e.left = r - t.minWidth), s && l && (e.left = r - t.maxWidth), o && u && (e.top = h - t.minHeight), n && u && (e.top = h - t.maxHeight), e.width || e.height || e.left || !e.top ? e.width || e.height || e.top || !e.left || (e.left = null) : e.top = null, e },
		_getPaddingPlusBorderDimensions: function(e) { for(var t = 0, i = [], s = [e.css("borderTopWidth"), e.css("borderRightWidth"), e.css("borderBottomWidth"), e.css("borderLeftWidth")], n = [e.css("paddingTop"), e.css("paddingRight"), e.css("paddingBottom"), e.css("paddingLeft")]; 4 > t; t++) i[t] = parseInt(s[t], 10) || 0, i[t] += parseInt(n[t], 10) || 0; return { height: i[0] + i[2], width: i[1] + i[3] } },
		_proportionallyResize: function() { if(this._proportionallyResizeElements.length)
				for(var e, t = 0, i = this.helper || this.element; this._proportionallyResizeElements.length > t; t++) e = this._proportionallyResizeElements[t], this.outerDimensions || (this.outerDimensions = this._getPaddingPlusBorderDimensions(e)), e.css({ height: i.height() - this.outerDimensions.height || 0, width: i.width() - this.outerDimensions.width || 0 }) },
		_renderProxy: function() { var t = this.element,
				i = this.options;
			this.elementOffset = t.offset(), this._helper ? (this.helper = this.helper || e("<div style='overflow:hidden;'></div>"), this.helper.addClass(this._helper).css({ width: this.element.outerWidth() - 1, height: this.element.outerHeight() - 1, position: "absolute", left: this.elementOffset.left + "px", top: this.elementOffset.top + "px", zIndex: ++i.zIndex }), this.helper.appendTo("body").disableSelection()) : this.helper = this.element },
		_change: { e: function(e, t) { return { width: this.originalSize.width + t } }, w: function(e, t) { var i = this.originalSize,
					s = this.originalPosition; return { left: s.left + t, width: i.width - t } }, n: function(e, t, i) { var s = this.originalSize,
					n = this.originalPosition; return { top: n.top + i, height: s.height - i } }, s: function(e, t, i) { return { height: this.originalSize.height + i } }, se: function(t, i, s) { return e.extend(this._change.s.apply(this, arguments), this._change.e.apply(this, [t, i, s])) }, sw: function(t, i, s) { return e.extend(this._change.s.apply(this, arguments), this._change.w.apply(this, [t, i, s])) }, ne: function(t, i, s) { return e.extend(this._change.n.apply(this, arguments), this._change.e.apply(this, [t, i, s])) }, nw: function(t, i, s) { return e.extend(this._change.n.apply(this, arguments), this._change.w.apply(this, [t, i, s])) } },
		_propagate: function(t, i) { e.ui.plugin.call(this, t, [i, this.ui()]), "resize" !== t && this._trigger(t, i, this.ui()) },
		plugins: {},
		ui: function() { return { originalElement: this.originalElement, element: this.element, helper: this.helper, position: this.position, size: this.size, originalSize: this.originalSize, originalPosition: this.originalPosition } }
	}), e.ui.plugin.add("resizable", "animate", { stop: function(t) { var i = e(this).resizable("instance"),
				s = i.options,
				n = i._proportionallyResizeElements,
				a = n.length && /textarea/i.test(n[0].nodeName),
				o = a && i._hasScroll(n[0], "left") ? 0 : i.sizeDiff.height,
				r = a ? 0 : i.sizeDiff.width,
				h = { width: i.size.width - r, height: i.size.height - o },
				l = parseInt(i.element.css("left"), 10) + (i.position.left - i.originalPosition.left) || null,
				u = parseInt(i.element.css("top"), 10) + (i.position.top - i.originalPosition.top) || null;
			i.element.animate(e.extend(h, u && l ? { top: u, left: l } : {}), { duration: s.animateDuration, easing: s.animateEasing, step: function() { var s = { width: parseInt(i.element.css("width"), 10), height: parseInt(i.element.css("height"), 10), top: parseInt(i.element.css("top"), 10), left: parseInt(i.element.css("left"), 10) };
					n && n.length && e(n[0]).css({ width: s.width, height: s.height }), i._updateCache(s), i._propagate("resize", t) } }) } }), e.ui.plugin.add("resizable", "containment", { start: function() { var t, i, s, n, a, o, r, h = e(this).resizable("instance"),
				l = h.options,
				u = h.element,
				d = l.containment,
				c = d instanceof e ? d.get(0) : /parent/.test(d) ? u.parent().get(0) : d;
			c && (h.containerElement = e(c), /document/.test(d) || d === document ? (h.containerOffset = { left: 0, top: 0 }, h.containerPosition = { left: 0, top: 0 }, h.parentData = { element: e(document), left: 0, top: 0, width: e(document).width(), height: e(document).height() || document.body.parentNode.scrollHeight }) : (t = e(c), i = [], e(["Top", "Right", "Left", "Bottom"]).each(function(e, s) { i[e] = h._num(t.css("padding" + s)) }), h.containerOffset = t.offset(), h.containerPosition = t.position(), h.containerSize = { height: t.innerHeight() - i[3], width: t.innerWidth() - i[1] }, s = h.containerOffset, n = h.containerSize.height, a = h.containerSize.width, o = h._hasScroll(c, "left") ? c.scrollWidth : a, r = h._hasScroll(c) ? c.scrollHeight : n, h.parentData = { element: c, left: s.left, top: s.top, width: o, height: r })) }, resize: function(t) { var i, s, n, a, o = e(this).resizable("instance"),
				r = o.options,
				h = o.containerOffset,
				l = o.position,
				u = o._aspectRatio || t.shiftKey,
				d = { top: 0, left: 0 },
				c = o.containerElement,
				p = !0;
			c[0] !== document && /static/.test(c.css("position")) && (d = h), l.left < (o._helper ? h.left : 0) && (o.size.width = o.size.width + (o._helper ? o.position.left - h.left : o.position.left - d.left), u && (o.size.height = o.size.width / o.aspectRatio, p = !1), o.position.left = r.helper ? h.left : 0), l.top < (o._helper ? h.top : 0) && (o.size.height = o.size.height + (o._helper ? o.position.top - h.top : o.position.top), u && (o.size.width = o.size.height * o.aspectRatio, p = !1), o.position.top = o._helper ? h.top : 0), n = o.containerElement.get(0) === o.element.parent().get(0), a = /relative|absolute/.test(o.containerElement.css("position")), n && a ? (o.offset.left = o.parentData.left + o.position.left, o.offset.top = o.parentData.top + o.position.top) : (o.offset.left = o.element.offset().left, o.offset.top = o.element.offset().top), i = Math.abs(o.sizeDiff.width + (o._helper ? o.offset.left - d.left : o.offset.left - h.left)), s = Math.abs(o.sizeDiff.height + (o._helper ? o.offset.top - d.top : o.offset.top - h.top)), i + o.size.width >= o.parentData.width && (o.size.width = o.parentData.width - i, u && (o.size.height = o.size.width / o.aspectRatio, p = !1)), s + o.size.height >= o.parentData.height && (o.size.height = o.parentData.height - s, u && (o.size.width = o.size.height * o.aspectRatio, p = !1)), p || (o.position.left = o.prevPosition.left, o.position.top = o.prevPosition.top, o.size.width = o.prevSize.width, o.size.height = o.prevSize.height) }, stop: function() { var t = e(this).resizable("instance"),
				i = t.options,
				s = t.containerOffset,
				n = t.containerPosition,
				a = t.containerElement,
				o = e(t.helper),
				r = o.offset(),
				h = o.outerWidth() - t.sizeDiff.width,
				l = o.outerHeight() - t.sizeDiff.height;
			t._helper && !i.animate && /relative/.test(a.css("position")) && e(this).css({ left: r.left - n.left - s.left, width: h, height: l }), t._helper && !i.animate && /static/.test(a.css("position")) && e(this).css({ left: r.left - n.left - s.left, width: h, height: l }) } }), e.ui.plugin.add("resizable", "alsoResize", { start: function() { var t = e(this).resizable("instance"),
				i = t.options;
			e(i.alsoResize).each(function() { var t = e(this);
				t.data("ui-resizable-alsoresize", { width: parseInt(t.width(), 10), height: parseInt(t.height(), 10), left: parseInt(t.css("left"), 10), top: parseInt(t.css("top"), 10) }) }) }, resize: function(t, i) { var s = e(this).resizable("instance"),
				n = s.options,
				a = s.originalSize,
				o = s.originalPosition,
				r = { height: s.size.height - a.height || 0, width: s.size.width - a.width || 0, top: s.position.top - o.top || 0, left: s.position.left - o.left || 0 };
			e(n.alsoResize).each(function() { var t = e(this),
					s = e(this).data("ui-resizable-alsoresize"),
					n = {},
					a = t.parents(i.originalElement[0]).length ? ["width", "height"] : ["width", "height", "top", "left"];
				e.each(a, function(e, t) { var i = (s[t] || 0) + (r[t] || 0);
					i && i >= 0 && (n[t] = i || null) }), t.css(n) }) }, stop: function() { e(this).removeData("resizable-alsoresize") } }), e.ui.plugin.add("resizable", "ghost", { start: function() { var t = e(this).resizable("instance"),
				i = t.options,
				s = t.size;
			t.ghost = t.originalElement.clone(), t.ghost.css({ opacity: .25, display: "block", position: "relative", height: s.height, width: s.width, margin: 0, left: 0, top: 0 }).addClass("ui-resizable-ghost").addClass("string" == typeof i.ghost ? i.ghost : ""), t.ghost.appendTo(t.helper) }, resize: function() { var t = e(this).resizable("instance");
			t.ghost && t.ghost.css({ position: "relative", height: t.size.height, width: t.size.width }) }, stop: function() { var t = e(this).resizable("instance");
			t.ghost && t.helper && t.helper.get(0).removeChild(t.ghost.get(0)) } }), e.ui.plugin.add("resizable", "grid", { resize: function() { var t, i = e(this).resizable("instance"),
				s = i.options,
				n = i.size,
				a = i.originalSize,
				o = i.originalPosition,
				r = i.axis,
				h = "number" == typeof s.grid ? [s.grid, s.grid] : s.grid,
				l = h[0] || 1,
				u = h[1] || 1,
				d = Math.round((n.width - a.width) / l) * l,
				c = Math.round((n.height - a.height) / u) * u,
				p = a.width + d,
				f = a.height + c,
				m = s.maxWidth && p > s.maxWidth,
				g = s.maxHeight && f > s.maxHeight,
				v = s.minWidth && s.minWidth > p,
				y = s.minHeight && s.minHeight > f;
			s.grid = h, v && (p += l), y && (f += u), m && (p -= l), g && (f -= u), /^(se|s|e)$/.test(r) ? (i.size.width = p, i.size.height = f) : /^(ne)$/.test(r) ? (i.size.width = p, i.size.height = f, i.position.top = o.top - c) : /^(sw)$/.test(r) ? (i.size.width = p, i.size.height = f, i.position.left = o.left - d) : ((0 >= f - u || 0 >= p - l) && (t = i._getPaddingPlusBorderDimensions(this)), f - u > 0 ? (i.size.height = f, i.position.top = o.top - c) : (f = u - t.height, i.size.height = f, i.position.top = o.top + a.height - f), p - l > 0 ? (i.size.width = p, i.position.left = o.left - d) : (p = l - t.width, i.size.width = p, i.position.left = o.left + a.width - p)) } }), e.ui.resizable, e.widget("ui.sortable", e.ui.mouse, {
		version: "1.11.4",
		widgetEventPrefix: "sort",
		ready: !1,
		options: { appendTo: "parent", axis: !1, connectWith: !1, containment: !1, cursor: "auto", cursorAt: !1, dropOnEmpty: !0, forcePlaceholderSize: !1, forceHelperSize: !1, grid: !1, handle: !1, helper: "original", items: "> *", opacity: !1, placeholder: !1, revert: !1, scroll: !0, scrollSensitivity: 20, scrollSpeed: 20, scope: "default", tolerance: "intersect", zIndex: 1e3, activate: null, beforeStop: null, change: null, deactivate: null, out: null, over: null, receive: null, remove: null, sort: null, start: null, stop: null, update: null },
		_isOverAxis: function(e, t, i) { return e >= t && t + i > e },
		_isFloating: function(e) { return /left|right/.test(e.css("float")) || /inline|table-cell/.test(e.css("display")) },
		_create: function() { this.containerCache = {}, this.element.addClass("ui-sortable"), this.refresh(), this.offset = this.element.offset(), this._mouseInit(), this._setHandleClassName(), this.ready = !0 },
		_setOption: function(e, t) { this._super(e, t), "handle" === e && this._setHandleClassName() },
		_setHandleClassName: function() { this.element.find(".ui-sortable-handle").removeClass("ui-sortable-handle"), e.each(this.items, function() {
				(this.instance.options.handle ? this.item.find(this.instance.options.handle) : this.item).addClass("ui-sortable-handle") }) },
		_destroy: function() { this.element.removeClass("ui-sortable ui-sortable-disabled").find(".ui-sortable-handle").removeClass("ui-sortable-handle"), this._mouseDestroy(); for(var e = this.items.length - 1; e >= 0; e--) this.items[e].item.removeData(this.widgetName + "-item"); return this },
		_mouseCapture: function(t, i) { var s = null,
				n = !1,
				a = this; return this.reverting ? !1 : this.options.disabled || "static" === this.options.type ? !1 : (this._refreshItems(t), e(t.target).parents().each(function() { return e.data(this, a.widgetName + "-item") === a ? (s = e(this), !1) : void 0 }), e.data(t.target, a.widgetName + "-item") === a && (s = e(t.target)), s ? !this.options.handle || i || (e(this.options.handle, s).find("*").addBack().each(function() { this === t.target && (n = !0) }), n) ? (this.currentItem = s, this._removeCurrentsFromItems(), !0) : !1 : !1) },
		_mouseStart: function(t, i, s) { var n, a, o = this.options; if(this.currentContainer = this, this.refreshPositions(), this.helper = this._createHelper(t), this._cacheHelperProportions(), this._cacheMargins(), this.scrollParent = this.helper.scrollParent(), this.offset = this.currentItem.offset(), this.offset = { top: this.offset.top - this.margins.top, left: this.offset.left - this.margins.left }, e.extend(this.offset, { click: { left: t.pageX - this.offset.left, top: t.pageY - this.offset.top }, parent: this._getParentOffset(), relative: this._getRelativeOffset() }), this.helper.css("position", "absolute"), this.cssPosition = this.helper.css("position"), this.originalPosition = this._generatePosition(t), this.originalPageX = t.pageX, this.originalPageY = t.pageY, o.cursorAt && this._adjustOffsetFromHelper(o.cursorAt), this.domPosition = { prev: this.currentItem.prev()[0], parent: this.currentItem.parent()[0] }, this.helper[0] !== this.currentItem[0] && this.currentItem.hide(), this._createPlaceholder(), o.containment && this._setContainment(), o.cursor && "auto" !== o.cursor && (a = this.document.find("body"), this.storedCursor = a.css("cursor"), a.css("cursor", o.cursor), this.storedStylesheet = e("<style>*{ cursor: " + o.cursor + " !important; }</style>").appendTo(a)), o.opacity && (this.helper.css("opacity") && (this._storedOpacity = this.helper.css("opacity")), this.helper.css("opacity", o.opacity)), o.zIndex && (this.helper.css("zIndex") && (this._storedZIndex = this.helper.css("zIndex")), this.helper.css("zIndex", o.zIndex)), this.scrollParent[0] !== this.document[0] && "HTML" !== this.scrollParent[0].tagName && (this.overflowOffset = this.scrollParent.offset()), this._trigger("start", t, this._uiHash()), this._preserveHelperProportions || this._cacheHelperProportions(), !s)
				for(n = this.containers.length - 1; n >= 0; n--) this.containers[n]._trigger("activate", t, this._uiHash(this)); return e.ui.ddmanager && (e.ui.ddmanager.current = this), e.ui.ddmanager && !o.dropBehaviour && e.ui.ddmanager.prepareOffsets(this, t), this.dragging = !0, this.helper.addClass("ui-sortable-helper"), this._mouseDrag(t), !0 },
		_mouseDrag: function(t) { var i, s, n, a, o = this.options,
				r = !1; for(this.position = this._generatePosition(t), this.positionAbs = this._convertPositionTo("absolute"), this.lastPositionAbs || (this.lastPositionAbs = this.positionAbs), this.options.scroll && (this.scrollParent[0] !== this.document[0] && "HTML" !== this.scrollParent[0].tagName ? (this.overflowOffset.top + this.scrollParent[0].offsetHeight - t.pageY < o.scrollSensitivity ? this.scrollParent[0].scrollTop = r = this.scrollParent[0].scrollTop + o.scrollSpeed : t.pageY - this.overflowOffset.top < o.scrollSensitivity && (this.scrollParent[0].scrollTop = r = this.scrollParent[0].scrollTop - o.scrollSpeed), this.overflowOffset.left + this.scrollParent[0].offsetWidth - t.pageX < o.scrollSensitivity ? this.scrollParent[0].scrollLeft = r = this.scrollParent[0].scrollLeft + o.scrollSpeed : t.pageX - this.overflowOffset.left < o.scrollSensitivity && (this.scrollParent[0].scrollLeft = r = this.scrollParent[0].scrollLeft - o.scrollSpeed)) : (t.pageY - this.document.scrollTop() < o.scrollSensitivity ? r = this.document.scrollTop(this.document.scrollTop() - o.scrollSpeed) : this.window.height() - (t.pageY - this.document.scrollTop()) < o.scrollSensitivity && (r = this.document.scrollTop(this.document.scrollTop() + o.scrollSpeed)), t.pageX - this.document.scrollLeft() < o.scrollSensitivity ? r = this.document.scrollLeft(this.document.scrollLeft() - o.scrollSpeed) : this.window.width() - (t.pageX - this.document.scrollLeft()) < o.scrollSensitivity && (r = this.document.scrollLeft(this.document.scrollLeft() + o.scrollSpeed))), r !== !1 && e.ui.ddmanager && !o.dropBehaviour && e.ui.ddmanager.prepareOffsets(this, t)), this.positionAbs = this._convertPositionTo("absolute"), this.options.axis && "y" === this.options.axis || (this.helper[0].style.left = this.position.left + "px"), this.options.axis && "x" === this.options.axis || (this.helper[0].style.top = this.position.top + "px"), i = this.items.length - 1; i >= 0; i--)
				if(s = this.items[i], n = s.item[0], a = this._intersectsWithPointer(s), a && s.instance === this.currentContainer && n !== this.currentItem[0] && this.placeholder[1 === a ? "next" : "prev"]()[0] !== n && !e.contains(this.placeholder[0], n) && ("semi-dynamic" === this.options.type ? !e.contains(this.element[0], n) : !0)) { if(this.direction = 1 === a ? "down" : "up", "pointer" !== this.options.tolerance && !this._intersectsWithSides(s)) break;
					this._rearrange(t, s), this._trigger("change", t, this._uiHash()); break }
			return this._contactContainers(t), e.ui.ddmanager && e.ui.ddmanager.drag(this, t), this._trigger("sort", t, this._uiHash()), this.lastPositionAbs = this.positionAbs, !1 },
		_mouseStop: function(t, i) { if(t) { if(e.ui.ddmanager && !this.options.dropBehaviour && e.ui.ddmanager.drop(this, t), this.options.revert) { var s = this,
						n = this.placeholder.offset(),
						a = this.options.axis,
						o = {};
					a && "x" !== a || (o.left = n.left - this.offset.parent.left - this.margins.left + (this.offsetParent[0] === this.document[0].body ? 0 : this.offsetParent[0].scrollLeft)), a && "y" !== a || (o.top = n.top - this.offset.parent.top - this.margins.top + (this.offsetParent[0] === this.document[0].body ? 0 : this.offsetParent[0].scrollTop)), this.reverting = !0, e(this.helper).animate(o, parseInt(this.options.revert, 10) || 500, function() { s._clear(t) }) } else this._clear(t, i); return !1 } },
		cancel: function() { if(this.dragging) { this._mouseUp({ target: null }), "original" === this.options.helper ? this.currentItem.css(this._storedCSS).removeClass("ui-sortable-helper") : this.currentItem.show(); for(var t = this.containers.length - 1; t >= 0; t--) this.containers[t]._trigger("deactivate", null, this._uiHash(this)), this.containers[t].containerCache.over && (this.containers[t]._trigger("out", null, this._uiHash(this)), this.containers[t].containerCache.over = 0) } return this.placeholder && (this.placeholder[0].parentNode && this.placeholder[0].parentNode.removeChild(this.placeholder[0]), "original" !== this.options.helper && this.helper && this.helper[0].parentNode && this.helper.remove(), e.extend(this, { helper: null, dragging: !1, reverting: !1, _noFinalSort: null }), this.domPosition.prev ? e(this.domPosition.prev).after(this.currentItem) : e(this.domPosition.parent).prepend(this.currentItem)), this },
		serialize: function(t) { var i = this._getItemsAsjQuery(t && t.connected),
				s = []; return t = t || {}, e(i).each(function() { var i = (e(t.item || this).attr(t.attribute || "id") || "").match(t.expression || /(.+)[\-=_](.+)/);
				i && s.push((t.key || i[1] + "[]") + "=" + (t.key && t.expression ? i[1] : i[2])) }), !s.length && t.key && s.push(t.key + "="), s.join("&") },
		toArray: function(t) { var i = this._getItemsAsjQuery(t && t.connected),
				s = []; return t = t || {}, i.each(function() { s.push(e(t.item || this).attr(t.attribute || "id") || "") }), s },
		_intersectsWith: function(e) { var t = this.positionAbs.left,
				i = t + this.helperProportions.width,
				s = this.positionAbs.top,
				n = s + this.helperProportions.height,
				a = e.left,
				o = a + e.width,
				r = e.top,
				h = r + e.height,
				l = this.offset.click.top,
				u = this.offset.click.left,
				d = "x" === this.options.axis || s + l > r && h > s + l,
				c = "y" === this.options.axis || t + u > a && o > t + u,
				p = d && c; return "pointer" === this.options.tolerance || this.options.forcePointerForContainers || "pointer" !== this.options.tolerance && this.helperProportions[this.floating ? "width" : "height"] > e[this.floating ? "width" : "height"] ? p : t + this.helperProportions.width / 2 > a && o > i - this.helperProportions.width / 2 && s + this.helperProportions.height / 2 > r && h > n - this.helperProportions.height / 2 },
		_intersectsWithPointer: function(e) { var t = "x" === this.options.axis || this._isOverAxis(this.positionAbs.top + this.offset.click.top, e.top, e.height),
				i = "y" === this.options.axis || this._isOverAxis(this.positionAbs.left + this.offset.click.left, e.left, e.width),
				s = t && i,
				n = this._getDragVerticalDirection(),
				a = this._getDragHorizontalDirection(); return s ? this.floating ? a && "right" === a || "down" === n ? 2 : 1 : n && ("down" === n ? 2 : 1) : !1 },
		_intersectsWithSides: function(e) { var t = this._isOverAxis(this.positionAbs.top + this.offset.click.top, e.top + e.height / 2, e.height),
				i = this._isOverAxis(this.positionAbs.left + this.offset.click.left, e.left + e.width / 2, e.width),
				s = this._getDragVerticalDirection(),
				n = this._getDragHorizontalDirection(); return this.floating && n ? "right" === n && i || "left" === n && !i : s && ("down" === s && t || "up" === s && !t) },
		_getDragVerticalDirection: function() { var e = this.positionAbs.top - this.lastPositionAbs.top; return 0 !== e && (e > 0 ? "down" : "up") },
		_getDragHorizontalDirection: function() { var e = this.positionAbs.left - this.lastPositionAbs.left; return 0 !== e && (e > 0 ? "right" : "left") },
		refresh: function(e) { return this._refreshItems(e), this._setHandleClassName(), this.refreshPositions(), this },
		_connectWith: function() { var e = this.options; return e.connectWith.constructor === String ? [e.connectWith] : e.connectWith },
		_getItemsAsjQuery: function(t) {
			function i() { r.push(this) } var s, n, a, o, r = [],
				h = [],
				l = this._connectWith(); if(l && t)
				for(s = l.length - 1; s >= 0; s--)
					for(a = e(l[s], this.document[0]), n = a.length - 1; n >= 0; n--) o = e.data(a[n], this.widgetFullName), o && o !== this && !o.options.disabled && h.push([e.isFunction(o.options.items) ? o.options.items.call(o.element) : e(o.options.items, o.element).not(".ui-sortable-helper").not(".ui-sortable-placeholder"), o]); for(h.push([e.isFunction(this.options.items) ? this.options.items.call(this.element, null, { options: this.options, item: this.currentItem }) : e(this.options.items, this.element).not(".ui-sortable-helper").not(".ui-sortable-placeholder"), this]), s = h.length - 1; s >= 0; s--) h[s][0].each(i); return e(r) },
		_removeCurrentsFromItems: function() { var t = this.currentItem.find(":data(" + this.widgetName + "-item)");
			this.items = e.grep(this.items, function(e) { for(var i = 0; t.length > i; i++)
					if(t[i] === e.item[0]) return !1; return !0 }) },
		_refreshItems: function(t) { this.items = [], this.containers = [this]; var i, s, n, a, o, r, h, l, u = this.items,
				d = [
					[e.isFunction(this.options.items) ? this.options.items.call(this.element[0], t, { item: this.currentItem }) : e(this.options.items, this.element), this]
				],
				c = this._connectWith(); if(c && this.ready)
				for(i = c.length - 1; i >= 0; i--)
					for(n = e(c[i], this.document[0]), s = n.length - 1; s >= 0; s--) a = e.data(n[s], this.widgetFullName), a && a !== this && !a.options.disabled && (d.push([e.isFunction(a.options.items) ? a.options.items.call(a.element[0], t, { item: this.currentItem }) : e(a.options.items, a.element), a]), this.containers.push(a)); for(i = d.length - 1; i >= 0; i--)
				for(o = d[i][1], r = d[i][0], s = 0, l = r.length; l > s; s++) h = e(r[s]), h.data(this.widgetName + "-item", o), u.push({ item: h, instance: o, width: 0, height: 0, left: 0, top: 0 }) },
		refreshPositions: function(t) { this.floating = this.items.length ? "x" === this.options.axis || this._isFloating(this.items[0].item) : !1, this.offsetParent && this.helper && (this.offset.parent = this._getParentOffset()); var i, s, n, a; for(i = this.items.length - 1; i >= 0; i--) s = this.items[i], s.instance !== this.currentContainer && this.currentContainer && s.item[0] !== this.currentItem[0] || (n = this.options.toleranceElement ? e(this.options.toleranceElement, s.item) : s.item, t || (s.width = n.outerWidth(), s.height = n.outerHeight()), a = n.offset(), s.left = a.left, s.top = a.top); if(this.options.custom && this.options.custom.refreshContainers) this.options.custom.refreshContainers.call(this);
			else
				for(i = this.containers.length - 1; i >= 0; i--) a = this.containers[i].element.offset(), this.containers[i].containerCache.left = a.left, this.containers[i].containerCache.top = a.top, this.containers[i].containerCache.width = this.containers[i].element.outerWidth(), this.containers[i].containerCache.height = this.containers[i].element.outerHeight(); return this },
		_createPlaceholder: function(t) { t = t || this; var i, s = t.options;
			s.placeholder && s.placeholder.constructor !== String || (i = s.placeholder, s.placeholder = { element: function() { var s = t.currentItem[0].nodeName.toLowerCase(),
						n = e("<" + s + ">", t.document[0]).addClass(i || t.currentItem[0].className + " ui-sortable-placeholder").removeClass("ui-sortable-helper"); return "tbody" === s ? t._createTrPlaceholder(t.currentItem.find("tr").eq(0), e("<tr>", t.document[0]).appendTo(n)) : "tr" === s ? t._createTrPlaceholder(t.currentItem, n) : "img" === s && n.attr("src", t.currentItem.attr("src")), i || n.css("visibility", "hidden"), n }, update: function(e, n) {
					(!i || s.forcePlaceholderSize) && (n.height() || n.height(t.currentItem.innerHeight() - parseInt(t.currentItem.css("paddingTop") || 0, 10) - parseInt(t.currentItem.css("paddingBottom") || 0, 10)), n.width() || n.width(t.currentItem.innerWidth() - parseInt(t.currentItem.css("paddingLeft") || 0, 10) - parseInt(t.currentItem.css("paddingRight") || 0, 10))) } }), t.placeholder = e(s.placeholder.element.call(t.element, t.currentItem)), t.currentItem.after(t.placeholder), s.placeholder.update(t, t.placeholder) },
		_createTrPlaceholder: function(t, i) { var s = this;
			t.children().each(function() { e("<td>&#160;</td>", s.document[0]).attr("colspan", e(this).attr("colspan") || 1).appendTo(i) }) },
		_contactContainers: function(t) {
			var i, s, n, a, o, r, h, l, u, d, c = null,
				p = null;
			for(i = this.containers.length - 1; i >= 0; i--)
				if(!e.contains(this.currentItem[0], this.containers[i].element[0]))
					if(this._intersectsWith(this.containers[i].containerCache)) {
						if(c && e.contains(this.containers[i].element[0], c.element[0])) continue;
						c = this.containers[i], p = i
					} else this.containers[i].containerCache.over && (this.containers[i]._trigger("out", t, this._uiHash(this)), this.containers[i].containerCache.over = 0);
			if(c)
				if(1 === this.containers.length) this.containers[p].containerCache.over || (this.containers[p]._trigger("over", t, this._uiHash(this)), this.containers[p].containerCache.over = 1);
				else { for(n = 1e4, a = null, u = c.floating || this._isFloating(this.currentItem), o = u ? "left" : "top", r = u ? "width" : "height", d = u ? "clientX" : "clientY", s = this.items.length - 1; s >= 0; s--) e.contains(this.containers[p].element[0], this.items[s].item[0]) && this.items[s].item[0] !== this.currentItem[0] && (h = this.items[s].item.offset()[o], l = !1, t[d] - h > this.items[s][r] / 2 && (l = !0), n > Math.abs(t[d] - h) && (n = Math.abs(t[d] - h), a = this.items[s], this.direction = l ? "up" : "down")); if(!a && !this.options.dropOnEmpty) return; if(this.currentContainer === this.containers[p]) return this.currentContainer.containerCache.over || (this.containers[p]._trigger("over", t, this._uiHash()), this.currentContainer.containerCache.over = 1), void 0;
					a ? this._rearrange(t, a, null, !0) : this._rearrange(t, null, this.containers[p].element, !0), this._trigger("change", t, this._uiHash()), this.containers[p]._trigger("change", t, this._uiHash(this)), this.currentContainer = this.containers[p], this.options.placeholder.update(this.currentContainer, this.placeholder), this.containers[p]._trigger("over", t, this._uiHash(this)), this.containers[p].containerCache.over = 1 }
		},
		_createHelper: function(t) { var i = this.options,
				s = e.isFunction(i.helper) ? e(i.helper.apply(this.element[0], [t, this.currentItem])) : "clone" === i.helper ? this.currentItem.clone() : this.currentItem; return s.parents("body").length || e("parent" !== i.appendTo ? i.appendTo : this.currentItem[0].parentNode)[0].appendChild(s[0]), s[0] === this.currentItem[0] && (this._storedCSS = { width: this.currentItem[0].style.width, height: this.currentItem[0].style.height, position: this.currentItem.css("position"), top: this.currentItem.css("top"), left: this.currentItem.css("left") }), (!s[0].style.width || i.forceHelperSize) && s.width(this.currentItem.width()), (!s[0].style.height || i.forceHelperSize) && s.height(this.currentItem.height()), s },
		_adjustOffsetFromHelper: function(t) { "string" == typeof t && (t = t.split(" ")), e.isArray(t) && (t = { left: +t[0], top: +t[1] || 0 }), "left" in t && (this.offset.click.left = t.left + this.margins.left), "right" in t && (this.offset.click.left = this.helperProportions.width - t.right + this.margins.left), "top" in t && (this.offset.click.top = t.top + this.margins.top), "bottom" in t && (this.offset.click.top = this.helperProportions.height - t.bottom + this.margins.top) },
		_getParentOffset: function() { this.offsetParent = this.helper.offsetParent(); var t = this.offsetParent.offset(); return "absolute" === this.cssPosition && this.scrollParent[0] !== this.document[0] && e.contains(this.scrollParent[0], this.offsetParent[0]) && (t.left += this.scrollParent.scrollLeft(), t.top += this.scrollParent.scrollTop()), (this.offsetParent[0] === this.document[0].body || this.offsetParent[0].tagName && "html" === this.offsetParent[0].tagName.toLowerCase() && e.ui.ie) && (t = { top: 0, left: 0 }), { top: t.top + (parseInt(this.offsetParent.css("borderTopWidth"), 10) || 0), left: t.left + (parseInt(this.offsetParent.css("borderLeftWidth"), 10) || 0) } },
		_getRelativeOffset: function() { if("relative" === this.cssPosition) { var e = this.currentItem.position(); return { top: e.top - (parseInt(this.helper.css("top"), 10) || 0) + this.scrollParent.scrollTop(), left: e.left - (parseInt(this.helper.css("left"), 10) || 0) + this.scrollParent.scrollLeft() } } return { top: 0, left: 0 } },
		_cacheMargins: function() { this.margins = { left: parseInt(this.currentItem.css("marginLeft"), 10) || 0, top: parseInt(this.currentItem.css("marginTop"), 10) || 0 } },
		_cacheHelperProportions: function() { this.helperProportions = { width: this.helper.outerWidth(), height: this.helper.outerHeight() } },
		_setContainment: function() { var t, i, s, n = this.options; "parent" === n.containment && (n.containment = this.helper[0].parentNode), ("document" === n.containment || "window" === n.containment) && (this.containment = [0 - this.offset.relative.left - this.offset.parent.left, 0 - this.offset.relative.top - this.offset.parent.top, "document" === n.containment ? this.document.width() : this.window.width() - this.helperProportions.width - this.margins.left, ("document" === n.containment ? this.document.width() : this.window.height() || this.document[0].body.parentNode.scrollHeight) - this.helperProportions.height - this.margins.top]), /^(document|window|parent)$/.test(n.containment) || (t = e(n.containment)[0], i = e(n.containment).offset(), s = "hidden" !== e(t).css("overflow"), this.containment = [i.left + (parseInt(e(t).css("borderLeftWidth"), 10) || 0) + (parseInt(e(t).css("paddingLeft"), 10) || 0) - this.margins.left, i.top + (parseInt(e(t).css("borderTopWidth"), 10) || 0) + (parseInt(e(t).css("paddingTop"), 10) || 0) - this.margins.top, i.left + (s ? Math.max(t.scrollWidth, t.offsetWidth) : t.offsetWidth) - (parseInt(e(t).css("borderLeftWidth"), 10) || 0) - (parseInt(e(t).css("paddingRight"), 10) || 0) - this.helperProportions.width - this.margins.left, i.top + (s ? Math.max(t.scrollHeight, t.offsetHeight) : t.offsetHeight) - (parseInt(e(t).css("borderTopWidth"), 10) || 0) - (parseInt(e(t).css("paddingBottom"), 10) || 0) - this.helperProportions.height - this.margins.top]) },
		_convertPositionTo: function(t, i) { i || (i = this.position); var s = "absolute" === t ? 1 : -1,
				n = "absolute" !== this.cssPosition || this.scrollParent[0] !== this.document[0] && e.contains(this.scrollParent[0], this.offsetParent[0]) ? this.scrollParent : this.offsetParent,
				a = /(html|body)/i.test(n[0].tagName); return { top: i.top + this.offset.relative.top * s + this.offset.parent.top * s - ("fixed" === this.cssPosition ? -this.scrollParent.scrollTop() : a ? 0 : n.scrollTop()) * s, left: i.left + this.offset.relative.left * s + this.offset.parent.left * s - ("fixed" === this.cssPosition ? -this.scrollParent.scrollLeft() : a ? 0 : n.scrollLeft()) * s } },
		_generatePosition: function(t) { var i, s, n = this.options,
				a = t.pageX,
				o = t.pageY,
				r = "absolute" !== this.cssPosition || this.scrollParent[0] !== this.document[0] && e.contains(this.scrollParent[0], this.offsetParent[0]) ? this.scrollParent : this.offsetParent,
				h = /(html|body)/i.test(r[0].tagName); return "relative" !== this.cssPosition || this.scrollParent[0] !== this.document[0] && this.scrollParent[0] !== this.offsetParent[0] || (this.offset.relative = this._getRelativeOffset()), this.originalPosition && (this.containment && (t.pageX - this.offset.click.left < this.containment[0] && (a = this.containment[0] + this.offset.click.left), t.pageY - this.offset.click.top < this.containment[1] && (o = this.containment[1] + this.offset.click.top), t.pageX - this.offset.click.left > this.containment[2] && (a = this.containment[2] + this.offset.click.left), t.pageY - this.offset.click.top > this.containment[3] && (o = this.containment[3] + this.offset.click.top)), n.grid && (i = this.originalPageY + Math.round((o - this.originalPageY) / n.grid[1]) * n.grid[1], o = this.containment ? i - this.offset.click.top >= this.containment[1] && i - this.offset.click.top <= this.containment[3] ? i : i - this.offset.click.top >= this.containment[1] ? i - n.grid[1] : i + n.grid[1] : i, s = this.originalPageX + Math.round((a - this.originalPageX) / n.grid[0]) * n.grid[0], a = this.containment ? s - this.offset.click.left >= this.containment[0] && s - this.offset.click.left <= this.containment[2] ? s : s - this.offset.click.left >= this.containment[0] ? s - n.grid[0] : s + n.grid[0] : s)), { top: o - this.offset.click.top - this.offset.relative.top - this.offset.parent.top + ("fixed" === this.cssPosition ? -this.scrollParent.scrollTop() : h ? 0 : r.scrollTop()), left: a - this.offset.click.left - this.offset.relative.left - this.offset.parent.left + ("fixed" === this.cssPosition ? -this.scrollParent.scrollLeft() : h ? 0 : r.scrollLeft()) } },
		_rearrange: function(e, t, i, s) { i ? i[0].appendChild(this.placeholder[0]) : t.item[0].parentNode.insertBefore(this.placeholder[0], "down" === this.direction ? t.item[0] : t.item[0].nextSibling), this.counter = this.counter ? ++this.counter : 1; var n = this.counter;
			this._delay(function() { n === this.counter && this.refreshPositions(!s) }) },
		_clear: function(e, t) {
			function i(e, t, i) { return function(s) { i._trigger(e, s, t._uiHash(t)) } } this.reverting = !1; var s, n = []; if(!this._noFinalSort && this.currentItem.parent().length && this.placeholder.before(this.currentItem), this._noFinalSort = null, this.helper[0] === this.currentItem[0]) { for(s in this._storedCSS)("auto" === this._storedCSS[s] || "static" === this._storedCSS[s]) && (this._storedCSS[s] = "");
				this.currentItem.css(this._storedCSS).removeClass("ui-sortable-helper") } else this.currentItem.show(); for(this.fromOutside && !t && n.push(function(e) { this._trigger("receive", e, this._uiHash(this.fromOutside)) }), !this.fromOutside && this.domPosition.prev === this.currentItem.prev().not(".ui-sortable-helper")[0] && this.domPosition.parent === this.currentItem.parent()[0] || t || n.push(function(e) { this._trigger("update", e, this._uiHash()) }), this !== this.currentContainer && (t || (n.push(function(e) { this._trigger("remove", e, this._uiHash()) }), n.push(function(e) { return function(t) { e._trigger("receive", t, this._uiHash(this)) } }.call(this, this.currentContainer)), n.push(function(e) { return function(t) { e._trigger("update", t, this._uiHash(this)) } }.call(this, this.currentContainer)))), s = this.containers.length - 1; s >= 0; s--) t || n.push(i("deactivate", this, this.containers[s])), this.containers[s].containerCache.over && (n.push(i("out", this, this.containers[s])), this.containers[s].containerCache.over = 0); if(this.storedCursor && (this.document.find("body").css("cursor", this.storedCursor), this.storedStylesheet.remove()), this._storedOpacity && this.helper.css("opacity", this._storedOpacity), this._storedZIndex && this.helper.css("zIndex", "auto" === this._storedZIndex ? "" : this._storedZIndex), this.dragging = !1, t || this._trigger("beforeStop", e, this._uiHash()), this.placeholder[0].parentNode.removeChild(this.placeholder[0]), this.cancelHelperRemoval || (this.helper[0] !== this.currentItem[0] && this.helper.remove(), this.helper = null), !t) { for(s = 0; n.length > s; s++) n[s].call(this, e);
				this._trigger("stop", e, this._uiHash()) } return this.fromOutside = !1, !this.cancelHelperRemoval },
		_trigger: function() { e.Widget.prototype._trigger.apply(this, arguments) === !1 && this.cancel() },
		_uiHash: function(t) { var i = t || this; return { helper: i.helper, placeholder: i.placeholder || e([]), position: i.position, originalPosition: i.originalPosition, offset: i.positionAbs, item: i.currentItem, sender: t ? t.element : null } }
	})
});

/*!
 DataTables 1.10.12
 ©2008-2015 SpryMedia Ltd - datatables.net/license
*/
(function(h) { "function" === typeof define && define.amd ? define(["jquery"], function(D) { return h(D, window, document) }) : "object" === typeof exports ? module.exports = function(D, I) { D || (D = window);
		I || (I = "undefined" !== typeof window ? require("jquery") : require("jquery")(D)); return h(I, D, D.document) } : h(jQuery, window, document) })(function(h, D, I, k) {
	function X(a) {
		var b, c, d = {};
		h.each(a, function(e) {
			if((b = e.match(/^([^A-Z]+?)([A-Z])/)) && -1 !== "a aa ai ao as b fn i m o s ".indexOf(b[1] + " ")) c = e.replace(b[0], b[2].toLowerCase()),
				d[c] = e, "o" === b[1] && X(a[e])
		});
		a._hungarianMap = d
	}

	function K(a, b, c) { a._hungarianMap || X(a); var d;
		h.each(b, function(e) { d = a._hungarianMap[e]; if(d !== k && (c || b[d] === k)) "o" === d.charAt(0) ? (b[d] || (b[d] = {}), h.extend(!0, b[d], b[e]), K(a[d], b[d], c)) : b[d] = b[e] }) }

	function Da(a) {
		var b = m.defaults.oLanguage,
			c = a.sZeroRecords;
		!a.sEmptyTable && (c && "No data available in table" === b.sEmptyTable) && E(a, a, "sZeroRecords", "sEmptyTable");
		!a.sLoadingRecords && (c && "Loading..." === b.sLoadingRecords) && E(a, a, "sZeroRecords", "sLoadingRecords");
		a.sInfoThousands && (a.sThousands = a.sInfoThousands);
		(a = a.sDecimal) && db(a)
	}

	function eb(a) {
		A(a, "ordering", "bSort");
		A(a, "orderMulti", "bSortMulti");
		A(a, "orderClasses", "bSortClasses");
		A(a, "orderCellsTop", "bSortCellsTop");
		A(a, "order", "aaSorting");
		A(a, "orderFixed", "aaSortingFixed");
		A(a, "paging", "bPaginate");
		A(a, "pagingType", "sPaginationType");
		A(a, "pageLength", "iDisplayLength");
		A(a, "searching", "bFilter");
		"boolean" === typeof a.sScrollX && (a.sScrollX = a.sScrollX ? "100%" : "");
		"boolean" === typeof a.scrollX && (a.scrollX =
			a.scrollX ? "100%" : "");
		if(a = a.aoSearchCols)
			for(var b = 0, c = a.length; b < c; b++) a[b] && K(m.models.oSearch, a[b])
	}

	function fb(a) { A(a, "orderable", "bSortable");
		A(a, "orderData", "aDataSort");
		A(a, "orderSequence", "asSorting");
		A(a, "orderDataType", "sortDataType"); var b = a.aDataSort;
		b && !h.isArray(b) && (a.aDataSort = [b]) }

	function gb(a) {
		if(!m.__browser) {
			var b = {};
			m.__browser = b;
			var c = h("<div/>").css({ position: "fixed", top: 0, left: 0, height: 1, width: 1, overflow: "hidden" }).append(h("<div/>").css({
					position: "absolute",
					top: 1,
					left: 1,
					width: 100,
					overflow: "scroll"
				}).append(h("<div/>").css({ width: "100%", height: 10 }))).appendTo("body"),
				d = c.children(),
				e = d.children();
			b.barWidth = d[0].offsetWidth - d[0].clientWidth;
			b.bScrollOversize = 100 === e[0].offsetWidth && 100 !== d[0].clientWidth;
			b.bScrollbarLeft = 1 !== Math.round(e.offset().left);
			b.bBounding = c[0].getBoundingClientRect().width ? !0 : !1;
			c.remove()
		}
		h.extend(a.oBrowser, m.__browser);
		a.oScroll.iBarWidth = m.__browser.barWidth
	}

	function hb(a, b, c, d, e, f) {
		var g, j = !1;
		c !== k && (g = c, j = !0);
		for(; d !== e;) a.hasOwnProperty(d) &&
			(g = j ? b(g, a[d], d, a) : a[d], j = !0, d += f);
		return g
	}

	function Ea(a, b) { var c = m.defaults.column,
			d = a.aoColumns.length,
			c = h.extend({}, m.models.oColumn, c, { nTh: b ? b : I.createElement("th"), sTitle: c.sTitle ? c.sTitle : b ? b.innerHTML : "", aDataSort: c.aDataSort ? c.aDataSort : [d], mData: c.mData ? c.mData : d, idx: d });
		a.aoColumns.push(c);
		c = a.aoPreSearchCols;
		c[d] = h.extend({}, m.models.oSearch, c[d]);
		ja(a, d, h(b).data()) }

	function ja(a, b, c) {
		var b = a.aoColumns[b],
			d = a.oClasses,
			e = h(b.nTh);
		if(!b.sWidthOrig) {
			b.sWidthOrig = e.attr("width") || null;
			var f =
				(e.attr("style") || "").match(/width:\s*(\d+[pxem%]+)/);
			f && (b.sWidthOrig = f[1])
		}
		c !== k && null !== c && (fb(c), K(m.defaults.column, c), c.mDataProp !== k && !c.mData && (c.mData = c.mDataProp), c.sType && (b._sManualType = c.sType), c.className && !c.sClass && (c.sClass = c.className), h.extend(b, c), E(b, c, "sWidth", "sWidthOrig"), c.iDataSort !== k && (b.aDataSort = [c.iDataSort]), E(b, c, "aDataSort"));
		var g = b.mData,
			j = Q(g),
			i = b.mRender ? Q(b.mRender) : null,
			c = function(a) { return "string" === typeof a && -1 !== a.indexOf("@") };
		b._bAttrSrc = h.isPlainObject(g) &&
			(c(g.sort) || c(g.type) || c(g.filter));
		b._setter = null;
		b.fnGetData = function(a, b, c) { var d = j(a, b, k, c); return i && b ? i(d, b, a, c) : d };
		b.fnSetData = function(a, b, c) { return R(g)(a, b, c) };
		"number" !== typeof g && (a._rowReadObject = !0);
		a.oFeatures.bSort || (b.bSortable = !1, e.addClass(d.sSortableNone));
		a = -1 !== h.inArray("asc", b.asSorting);
		c = -1 !== h.inArray("desc", b.asSorting);
		!b.bSortable || !a && !c ? (b.sSortingClass = d.sSortableNone, b.sSortingClassJUI = "") : a && !c ? (b.sSortingClass = d.sSortableAsc, b.sSortingClassJUI = d.sSortJUIAscAllowed) :
			!a && c ? (b.sSortingClass = d.sSortableDesc, b.sSortingClassJUI = d.sSortJUIDescAllowed) : (b.sSortingClass = d.sSortable, b.sSortingClassJUI = d.sSortJUI)
	}

	function Y(a) { if(!1 !== a.oFeatures.bAutoWidth) { var b = a.aoColumns;
			Fa(a); for(var c = 0, d = b.length; c < d; c++) b[c].nTh.style.width = b[c].sWidth } b = a.oScroll;
		("" !== b.sY || "" !== b.sX) && ka(a);
		u(a, null, "column-sizing", [a]) }

	function Z(a, b) { var c = la(a, "bVisible"); return "number" === typeof c[b] ? c[b] : null }

	function $(a, b) { var c = la(a, "bVisible"),
			c = h.inArray(b, c); return -1 !== c ? c : null }

	function aa(a) { var b = 0;
		h.each(a.aoColumns, function(a, d) { d.bVisible && "none" !== h(d.nTh).css("display") && b++ }); return b }

	function la(a, b) { var c = [];
		h.map(a.aoColumns, function(a, e) { a[b] && c.push(e) }); return c }

	function Ga(a) {
		var b = a.aoColumns,
			c = a.aoData,
			d = m.ext.type.detect,
			e, f, g, j, i, h, l, q, t;
		e = 0;
		for(f = b.length; e < f; e++)
			if(l = b[e], t = [], !l.sType && l._sManualType) l.sType = l._sManualType;
			else if(!l.sType) {
			g = 0;
			for(j = d.length; g < j; g++) {
				i = 0;
				for(h = c.length; i < h; i++) {
					t[i] === k && (t[i] = B(a, i, e, "type"));
					q = d[g](t[i], a);
					if(!q &&
						g !== d.length - 1) break;
					if("html" === q) break
				}
				if(q) { l.sType = q; break }
			}
			l.sType || (l.sType = "string")
		}
	}

	function ib(a, b, c, d) {
		var e, f, g, j, i, n, l = a.aoColumns;
		if(b)
			for(e = b.length - 1; 0 <= e; e--) {
				n = b[e];
				var q = n.targets !== k ? n.targets : n.aTargets;
				h.isArray(q) || (q = [q]);
				f = 0;
				for(g = q.length; f < g; f++)
					if("number" === typeof q[f] && 0 <= q[f]) { for(; l.length <= q[f];) Ea(a);
						d(q[f], n) } else if("number" === typeof q[f] && 0 > q[f]) d(l.length + q[f], n);
				else if("string" === typeof q[f]) {
					j = 0;
					for(i = l.length; j < i; j++)("_all" == q[f] || h(l[j].nTh).hasClass(q[f])) &&
						d(j, n)
				}
			}
		if(c) { e = 0; for(a = c.length; e < a; e++) d(e, c[e]) }
	}

	function N(a, b, c, d) { var e = a.aoData.length,
			f = h.extend(!0, {}, m.models.oRow, { src: c ? "dom" : "data", idx: e });
		f._aData = b;
		a.aoData.push(f); for(var g = a.aoColumns, j = 0, i = g.length; j < i; j++) g[j].sType = null;
		a.aiDisplayMaster.push(e);
		b = a.rowIdFn(b);
		b !== k && (a.aIds[b] = f);
		(c || !a.oFeatures.bDeferRender) && Ha(a, e, c, d); return e }

	function ma(a, b) { var c;
		b instanceof h || (b = h(b)); return b.map(function(b, e) { c = Ia(a, e); return N(a, c.data, e, c.cells) }) }

	function B(a, b, c, d) {
		var e = a.iDraw,
			f = a.aoColumns[c],
			g = a.aoData[b]._aData,
			j = f.sDefaultContent,
			i = f.fnGetData(g, d, { settings: a, row: b, col: c });
		if(i === k) return a.iDrawError != e && null === j && (L(a, 0, "Requested unknown parameter " + ("function" == typeof f.mData ? "{function}" : "'" + f.mData + "'") + " for row " + b + ", column " + c, 4), a.iDrawError = e), j;
		if((i === g || null === i) && null !== j && d !== k) i = j;
		else if("function" === typeof i) return i.call(g);
		return null === i && "display" == d ? "" : i
	}

	function jb(a, b, c, d) { a.aoColumns[c].fnSetData(a.aoData[b]._aData, d, { settings: a, row: b, col: c }) }

	function Ja(a) { return h.map(a.match(/(\\.|[^\.])+/g) || [""], function(a) { return a.replace(/\\./g, ".") }) }

	function Q(a) {
		if(h.isPlainObject(a)) { var b = {};
			h.each(a, function(a, c) { c && (b[a] = Q(c)) }); return function(a, c, f, g) { var j = b[c] || b._; return j !== k ? j(a, c, f, g) : a } }
		if(null === a) return function(a) { return a };
		if("function" === typeof a) return function(b, c, f, g) { return a(b, c, f, g) };
		if("string" === typeof a && (-1 !== a.indexOf(".") || -1 !== a.indexOf("[") || -1 !== a.indexOf("("))) {
			var c = function(a, b, f) {
				var g, j;
				if("" !== f) {
					j = Ja(f);
					for(var i = 0, n = j.length; i < n; i++) { f = j[i].match(ba);
						g = j[i].match(U); if(f) { j[i] = j[i].replace(ba, ""); "" !== j[i] && (a = a[j[i]]);
							g = [];
							j.splice(0, i + 1);
							j = j.join("."); if(h.isArray(a)) { i = 0; for(n = a.length; i < n; i++) g.push(c(a[i], b, j)) } a = f[0].substring(1, f[0].length - 1);
							a = "" === a ? g : g.join(a); break } else if(g) { j[i] = j[i].replace(U, "");
							a = a[j[i]](); continue } if(null === a || a[j[i]] === k) return k;
						a = a[j[i]] }
				}
				return a
			};
			return function(b, e) { return c(b, e, a) }
		}
		return function(b) { return b[a] }
	}

	function R(a) {
		if(h.isPlainObject(a)) return R(a._);
		if(null === a) return function() {};
		if("function" === typeof a) return function(b, d, e) { a(b, "set", d, e) };
		if("string" === typeof a && (-1 !== a.indexOf(".") || -1 !== a.indexOf("[") || -1 !== a.indexOf("("))) {
			var b = function(a, d, e) {
				var e = Ja(e),
					f;
				f = e[e.length - 1];
				for(var g, j, i = 0, n = e.length - 1; i < n; i++) {
					g = e[i].match(ba);
					j = e[i].match(U);
					if(g) { e[i] = e[i].replace(ba, "");
						a[e[i]] = [];
						f = e.slice();
						f.splice(0, i + 1);
						g = f.join("."); if(h.isArray(d)) { j = 0; for(n = d.length; j < n; j++) f = {}, b(f, d[j], g), a[e[i]].push(f) } else a[e[i]] = d; return } j && (e[i] = e[i].replace(U,
						""), a = a[e[i]](d));
					if(null === a[e[i]] || a[e[i]] === k) a[e[i]] = {};
					a = a[e[i]]
				}
				if(f.match(U)) a[f.replace(U, "")](d);
				else a[f.replace(ba, "")] = d
			};
			return function(c, d) { return b(c, d, a) }
		}
		return function(b, d) { b[a] = d }
	}

	function Ka(a) { return G(a.aoData, "_aData") }

	function na(a) { a.aoData.length = 0;
		a.aiDisplayMaster.length = 0;
		a.aiDisplay.length = 0;
		a.aIds = {} }

	function oa(a, b, c) { for(var d = -1, e = 0, f = a.length; e < f; e++) a[e] == b ? d = e : a[e] > b && a[e]--; - 1 != d && c === k && a.splice(d, 1) }

	function ca(a, b, c, d) {
		var e = a.aoData[b],
			f, g = function(c, d) {
				for(; c.childNodes.length;) c.removeChild(c.firstChild);
				c.innerHTML = B(a, b, d, "display")
			};
		if("dom" === c || (!c || "auto" === c) && "dom" === e.src) e._aData = Ia(a, e, d, d === k ? k : e._aData).data;
		else { var j = e.anCells; if(j)
				if(d !== k) g(j[d], d);
				else { c = 0; for(f = j.length; c < f; c++) g(j[c], c) } } e._aSortData = null;
		e._aFilterData = null;
		g = a.aoColumns;
		if(d !== k) g[d].sType = null;
		else { c = 0; for(f = g.length; c < f; c++) g[c].sType = null;
			La(a, e) }
	}

	function Ia(a, b, c, d) {
		var e = [],
			f = b.firstChild,
			g, j, i = 0,
			n, l = a.aoColumns,
			q = a._rowReadObject,
			d = d !== k ? d : q ? {} : [],
			t = function(a, b) {
				if("string" === typeof a) {
					var c = a.indexOf("@"); -
					1 !== c && (c = a.substring(c + 1), R(a)(d, b.getAttribute(c)))
				}
			},
			S = function(a) { if(c === k || c === i) j = l[i], n = h.trim(a.innerHTML), j && j._bAttrSrc ? (R(j.mData._)(d, n), t(j.mData.sort, a), t(j.mData.type, a), t(j.mData.filter, a)) : q ? (j._setter || (j._setter = R(j.mData)), j._setter(d, n)) : d[i] = n;
				i++ };
		if(f)
			for(; f;) { g = f.nodeName.toUpperCase(); if("TD" == g || "TH" == g) S(f), e.push(f);
				f = f.nextSibling } else { e = b.anCells;
				f = 0; for(g = e.length; f < g; f++) S(e[f]) }
		if(b = b.firstChild ? b : b.nTr)(b = b.getAttribute("id")) && R(a.rowId)(d, b);
		return { data: d, cells: e }
	}

	function Ha(a, b, c, d) {
		var e = a.aoData[b],
			f = e._aData,
			g = [],
			j, i, n, l, q;
		if(null === e.nTr) {
			j = c || I.createElement("tr");
			e.nTr = j;
			e.anCells = g;
			j._DT_RowIndex = b;
			La(a, e);
			l = 0;
			for(q = a.aoColumns.length; l < q; l++) {
				n = a.aoColumns[l];
				i = c ? d[l] : I.createElement(n.sCellType);
				i._DT_CellIndex = { row: b, column: l };
				g.push(i);
				if((!c || n.mRender || n.mData !== l) && (!h.isPlainObject(n.mData) || n.mData._ !== l + ".display")) i.innerHTML = B(a, b, l, "display");
				n.sClass && (i.className += " " + n.sClass);
				n.bVisible && !c ? j.appendChild(i) : !n.bVisible && c && i.parentNode.removeChild(i);
				n.fnCreatedCell && n.fnCreatedCell.call(a.oInstance, i, B(a, b, l), f, b, l)
			}
			u(a, "aoRowCreatedCallback", null, [j, f, b])
		}
		e.nTr.setAttribute("role", "row")
	}

	function La(a, b) { var c = b.nTr,
			d = b._aData; if(c) { var e = a.rowIdFn(d);
			e && (c.id = e);
			d.DT_RowClass && (e = d.DT_RowClass.split(" "), b.__rowc = b.__rowc ? pa(b.__rowc.concat(e)) : e, h(c).removeClass(b.__rowc.join(" ")).addClass(d.DT_RowClass));
			d.DT_RowAttr && h(c).attr(d.DT_RowAttr);
			d.DT_RowData && h(c).data(d.DT_RowData) } }

	function kb(a) {
		var b, c, d, e, f, g = a.nTHead,
			j = a.nTFoot,
			i = 0 ===
			h("th, td", g).length,
			n = a.oClasses,
			l = a.aoColumns;
		i && (e = h("<tr/>").appendTo(g));
		b = 0;
		for(c = l.length; b < c; b++) f = l[b], d = h(f.nTh).addClass(f.sClass), i && d.appendTo(e), a.oFeatures.bSort && (d.addClass(f.sSortingClass), !1 !== f.bSortable && (d.attr("tabindex", a.iTabIndex).attr("aria-controls", a.sTableId), Ma(a, f.nTh, b))), f.sTitle != d[0].innerHTML && d.html(f.sTitle), Na(a, "header")(a, d, f, n);
		i && da(a.aoHeader, g);
		h(g).find(">tr").attr("role", "row");
		h(g).find(">tr>th, >tr>td").addClass(n.sHeaderTH);
		h(j).find(">tr>th, >tr>td").addClass(n.sFooterTH);
		if(null !== j) { a = a.aoFooter[0];
			b = 0; for(c = a.length; b < c; b++) f = l[b], f.nTf = a[b].cell, f.sClass && h(f.nTf).addClass(f.sClass) }
	}

	function ea(a, b, c) {
		var d, e, f, g = [],
			j = [],
			i = a.aoColumns.length,
			n;
		if(b) {
			c === k && (c = !1);
			d = 0;
			for(e = b.length; d < e; d++) { g[d] = b[d].slice();
				g[d].nTr = b[d].nTr; for(f = i - 1; 0 <= f; f--) !a.aoColumns[f].bVisible && !c && g[d].splice(f, 1);
				j.push([]) } d = 0;
			for(e = g.length; d < e; d++) {
				if(a = g[d].nTr)
					for(; f = a.firstChild;) a.removeChild(f);
				f = 0;
				for(b = g[d].length; f < b; f++)
					if(n = i = 1, j[d][f] === k) {
						a.appendChild(g[d][f].cell);
						for(j[d][f] = 1; g[d + i] !== k && g[d][f].cell == g[d + i][f].cell;) j[d + i][f] = 1, i++;
						for(; g[d][f + n] !== k && g[d][f].cell == g[d][f + n].cell;) { for(c = 0; c < i; c++) j[d + c][f + n] = 1;
							n++ } h(g[d][f].cell).attr("rowspan", i).attr("colspan", n)
					}
			}
		}
	}

	function O(a) {
		var b = u(a, "aoPreDrawCallback", "preDraw", [a]);
		if(-1 !== h.inArray(!1, b)) C(a, !1);
		else {
			var b = [],
				c = 0,
				d = a.asStripeClasses,
				e = d.length,
				f = a.oLanguage,
				g = a.iInitDisplayStart,
				j = "ssp" == y(a),
				i = a.aiDisplay;
			a.bDrawing = !0;
			g !== k && -1 !== g && (a._iDisplayStart = j ? g : g >= a.fnRecordsDisplay() ? 0 : g, a.iInitDisplayStart = -1);
			var g = a._iDisplayStart,
				n = a.fnDisplayEnd();
			if(a.bDeferLoading) a.bDeferLoading = !1, a.iDraw++, C(a, !1);
			else if(j) { if(!a.bDestroying && !lb(a)) return } else a.iDraw++;
			if(0 !== i.length) { f = j ? a.aoData.length : n; for(j = j ? 0 : g; j < f; j++) { var l = i[j],
						q = a.aoData[l];
					null === q.nTr && Ha(a, l);
					l = q.nTr; if(0 !== e) { var t = d[c % e];
						q._sRowStripe != t && (h(l).removeClass(q._sRowStripe).addClass(t), q._sRowStripe = t) } u(a, "aoRowCallback", null, [l, q._aData, c, j]);
					b.push(l);
					c++ } } else c = f.sZeroRecords, 1 == a.iDraw && "ajax" == y(a) ? c = f.sLoadingRecords :
				f.sEmptyTable && 0 === a.fnRecordsTotal() && (c = f.sEmptyTable), b[0] = h("<tr/>", { "class": e ? d[0] : "" }).append(h("<td />", { valign: "top", colSpan: aa(a), "class": a.oClasses.sRowEmpty }).html(c))[0];
			u(a, "aoHeaderCallback", "header", [h(a.nTHead).children("tr")[0], Ka(a), g, n, i]);
			u(a, "aoFooterCallback", "footer", [h(a.nTFoot).children("tr")[0], Ka(a), g, n, i]);
			d = h(a.nTBody);
			d.children().detach();
			d.append(h(b));
			u(a, "aoDrawCallback", "draw", [a]);
			a.bSorted = !1;
			a.bFiltered = !1;
			a.bDrawing = !1
		}
	}

	function T(a, b) {
		var c = a.oFeatures,
			d = c.bFilter;
		c.bSort && mb(a);
		d ? fa(a, a.oPreviousSearch) : a.aiDisplay = a.aiDisplayMaster.slice();
		!0 !== b && (a._iDisplayStart = 0);
		a._drawHold = b;
		O(a);
		a._drawHold = !1
	}

	function nb(a) {
		var b = a.oClasses,
			c = h(a.nTable),
			c = h("<div/>").insertBefore(c),
			d = a.oFeatures,
			e = h("<div/>", { id: a.sTableId + "_wrapper", "class": b.sWrapper + (a.nTFoot ? "" : " " + b.sNoFooter) });
		a.nHolding = c[0];
		a.nTableWrapper = e[0];
		a.nTableReinsertBefore = a.nTable.nextSibling;
		for(var f = a.sDom.split(""), g, j, i, n, l, q, t = 0; t < f.length; t++) {
			g = null;
			j = f[t];
			if("<" == j) {
				i = h("<div/>")[0];
				n = f[t + 1];
				if("'" == n || '"' == n) { l = ""; for(q = 2; f[t + q] != n;) l += f[t + q], q++; "H" == l ? l = b.sJUIHeader : "F" == l && (l = b.sJUIFooter); - 1 != l.indexOf(".") ? (n = l.split("."), i.id = n[0].substr(1, n[0].length - 1), i.className = n[1]) : "#" == l.charAt(0) ? i.id = l.substr(1, l.length - 1) : i.className = l;
					t += q } e.append(i);
				e = h(i)
			} else if(">" == j) e = e.parent();
			else if("l" == j && d.bPaginate && d.bLengthChange) g = ob(a);
			else if("f" == j && d.bFilter) g = pb(a);
			else if("r" == j && d.bProcessing) g = qb(a);
			else if("t" == j) g = rb(a);
			else if("i" == j && d.bInfo) g = sb(a);
			else if("p" ==
				j && d.bPaginate) g = tb(a);
			else if(0 !== m.ext.feature.length) { i = m.ext.feature;
				q = 0; for(n = i.length; q < n; q++)
					if(j == i[q].cFeature) { g = i[q].fnInit(a); break } } g && (i = a.aanFeatures, i[j] || (i[j] = []), i[j].push(g), e.append(g))
		}
		c.replaceWith(e);
		a.nHolding = null
	}

	function da(a, b) {
		var c = h(b).children("tr"),
			d, e, f, g, j, i, n, l, q, t;
		a.splice(0, a.length);
		f = 0;
		for(i = c.length; f < i; f++) a.push([]);
		f = 0;
		for(i = c.length; f < i; f++) {
			d = c[f];
			for(e = d.firstChild; e;) {
				if("TD" == e.nodeName.toUpperCase() || "TH" == e.nodeName.toUpperCase()) {
					l = 1 * e.getAttribute("colspan");
					q = 1 * e.getAttribute("rowspan");
					l = !l || 0 === l || 1 === l ? 1 : l;
					q = !q || 0 === q || 1 === q ? 1 : q;
					g = 0;
					for(j = a[f]; j[g];) g++;
					n = g;
					t = 1 === l ? !0 : !1;
					for(j = 0; j < l; j++)
						for(g = 0; g < q; g++) a[f + g][n + j] = { cell: e, unique: t }, a[f + g].nTr = d
				}
				e = e.nextSibling
			}
		}
	}

	function qa(a, b, c) { var d = [];
		c || (c = a.aoHeader, b && (c = [], da(c, b))); for(var b = 0, e = c.length; b < e; b++)
			for(var f = 0, g = c[b].length; f < g; f++)
				if(c[b][f].unique && (!d[f] || !a.bSortCellsTop)) d[f] = c[b][f].cell; return d }

	function ra(a, b, c) {
		u(a, "aoServerParams", "serverParams", [b]);
		if(b && h.isArray(b)) {
			var d = {},
				e = /(.*?)\[\]$/;
			h.each(b, function(a, b) { var c = b.name.match(e);
				c ? (c = c[0], d[c] || (d[c] = []), d[c].push(b.value)) : d[b.name] = b.value });
			b = d
		}
		var f, g = a.ajax,
			j = a.oInstance,
			i = function(b) { u(a, null, "xhr", [a, b, a.jqXHR]);
				c(b) };
		if(h.isPlainObject(g) && g.data) { f = g.data; var n = h.isFunction(f) ? f(b, a) : f,
				b = h.isFunction(f) && n ? n : h.extend(!0, b, n);
			delete g.data } n = {
			data: b,
			success: function(b) { var c = b.error || b.sError;
				c && L(a, 0, c);
				a.json = b;
				i(b) },
			dataType: "json",
			cache: !1,
			type: a.sServerMethod,
			error: function(b, c) {
				var d = u(a, null, "xhr", [a, null, a.jqXHR]); - 1 === h.inArray(!0, d) && ("parsererror" == c ? L(a, 0, "Invalid JSON response", 1) : 4 === b.readyState && L(a, 0, "Ajax error", 7));
				C(a, !1)
			}
		};
		a.oAjaxData = b;
		u(a, null, "preXhr", [a, b]);
		a.fnServerData ? a.fnServerData.call(j, a.sAjaxSource, h.map(b, function(a, b) { return { name: b, value: a } }), i, a) : a.sAjaxSource || "string" === typeof g ? a.jqXHR = h.ajax(h.extend(n, { url: g || a.sAjaxSource })) : h.isFunction(g) ? a.jqXHR = g.call(j, b, i, a) : (a.jqXHR = h.ajax(h.extend(n, g)), g.data = f)
	}

	function lb(a) {
		return a.bAjaxDataGet ? (a.iDraw++, C(a, !0), ra(a, ub(a), function(b) { vb(a, b) }), !1) : !0
	}

	function ub(a) {
		var b = a.aoColumns,
			c = b.length,
			d = a.oFeatures,
			e = a.oPreviousSearch,
			f = a.aoPreSearchCols,
			g, j = [],
			i, n, l, q = V(a);
		g = a._iDisplayStart;
		i = !1 !== d.bPaginate ? a._iDisplayLength : -1;
		var k = function(a, b) { j.push({ name: a, value: b }) };
		k("sEcho", a.iDraw);
		k("iColumns", c);
		k("sColumns", G(b, "sName").join(","));
		k("iDisplayStart", g);
		k("iDisplayLength", i);
		var S = { draw: a.iDraw, columns: [], order: [], start: g, length: i, search: { value: e.sSearch, regex: e.bRegex } };
		for(g = 0; g < c; g++) n = b[g],
			l = f[g], i = "function" == typeof n.mData ? "function" : n.mData, S.columns.push({ data: i, name: n.sName, searchable: n.bSearchable, orderable: n.bSortable, search: { value: l.sSearch, regex: l.bRegex } }), k("mDataProp_" + g, i), d.bFilter && (k("sSearch_" + g, l.sSearch), k("bRegex_" + g, l.bRegex), k("bSearchable_" + g, n.bSearchable)), d.bSort && k("bSortable_" + g, n.bSortable);
		d.bFilter && (k("sSearch", e.sSearch), k("bRegex", e.bRegex));
		d.bSort && (h.each(q, function(a, b) {
			S.order.push({ column: b.col, dir: b.dir });
			k("iSortCol_" + a, b.col);
			k("sSortDir_" +
				a, b.dir)
		}), k("iSortingCols", q.length));
		b = m.ext.legacy.ajax;
		return null === b ? a.sAjaxSource ? j : S : b ? j : S
	}

	function vb(a, b) {
		var c = sa(a, b),
			d = b.sEcho !== k ? b.sEcho : b.draw,
			e = b.iTotalRecords !== k ? b.iTotalRecords : b.recordsTotal,
			f = b.iTotalDisplayRecords !== k ? b.iTotalDisplayRecords : b.recordsFiltered;
		if(d) { if(1 * d < a.iDraw) return;
			a.iDraw = 1 * d } na(a);
		a._iRecordsTotal = parseInt(e, 10);
		a._iRecordsDisplay = parseInt(f, 10);
		d = 0;
		for(e = c.length; d < e; d++) N(a, c[d]);
		a.aiDisplay = a.aiDisplayMaster.slice();
		a.bAjaxDataGet = !1;
		O(a);
		a._bInitComplete ||
			ta(a, b);
		a.bAjaxDataGet = !0;
		C(a, !1)
	}

	function sa(a, b) { var c = h.isPlainObject(a.ajax) && a.ajax.dataSrc !== k ? a.ajax.dataSrc : a.sAjaxDataProp; return "data" === c ? b.aaData || b[c] : "" !== c ? Q(c)(b) : b }

	function pb(a) {
		var b = a.oClasses,
			c = a.sTableId,
			d = a.oLanguage,
			e = a.oPreviousSearch,
			f = a.aanFeatures,
			g = '<input type="search" class="' + b.sFilterInput + '"/>',
			j = d.sSearch,
			j = j.match(/_INPUT_/) ? j.replace("_INPUT_", g) : j + g,
			b = h("<div/>", { id: !f.f ? c + "_filter" : null, "class": b.sFilter }).append(h("<label/>").append(j)),
			f = function() {
				var b = !this.value ?
					"" : this.value;
				b != e.sSearch && (fa(a, { sSearch: b, bRegex: e.bRegex, bSmart: e.bSmart, bCaseInsensitive: e.bCaseInsensitive }), a._iDisplayStart = 0, O(a))
			},
			g = null !== a.searchDelay ? a.searchDelay : "ssp" === y(a) ? 400 : 0,
			i = h("input", b).val(e.sSearch).attr("placeholder", d.sSearchPlaceholder).bind("keyup.DT search.DT input.DT paste.DT cut.DT", g ? Oa(f, g) : f).bind("keypress.DT", function(a) { if(13 == a.keyCode) return !1 }).attr("aria-controls", c);
		h(a.nTable).on("search.dt.DT", function(b, c) { if(a === c) try { i[0] !== I.activeElement && i.val(e.sSearch) } catch(d) {} });
		return b[0]
	}

	function fa(a, b, c) { var d = a.oPreviousSearch,
			e = a.aoPreSearchCols,
			f = function(a) { d.sSearch = a.sSearch;
				d.bRegex = a.bRegex;
				d.bSmart = a.bSmart;
				d.bCaseInsensitive = a.bCaseInsensitive };
		Ga(a); if("ssp" != y(a)) { wb(a, b.sSearch, c, b.bEscapeRegex !== k ? !b.bEscapeRegex : b.bRegex, b.bSmart, b.bCaseInsensitive);
			f(b); for(b = 0; b < e.length; b++) xb(a, e[b].sSearch, b, e[b].bEscapeRegex !== k ? !e[b].bEscapeRegex : e[b].bRegex, e[b].bSmart, e[b].bCaseInsensitive);
			yb(a) } else f(b);
		a.bFiltered = !0;
		u(a, null, "search", [a]) }

	function yb(a) {
		for(var b =
				m.ext.search, c = a.aiDisplay, d, e, f = 0, g = b.length; f < g; f++) { for(var j = [], i = 0, n = c.length; i < n; i++) e = c[i], d = a.aoData[e], b[f](a, d._aFilterData, e, d._aData, i) && j.push(e);
			c.length = 0;
			h.merge(c, j) }
	}

	function xb(a, b, c, d, e, f) { if("" !== b)
			for(var g = a.aiDisplay, d = Pa(b, d, e, f), e = g.length - 1; 0 <= e; e--) b = a.aoData[g[e]]._aFilterData[c], d.test(b) || g.splice(e, 1) }

	function wb(a, b, c, d, e, f) {
		var d = Pa(b, d, e, f),
			e = a.oPreviousSearch.sSearch,
			f = a.aiDisplayMaster,
			g;
		0 !== m.ext.search.length && (c = !0);
		g = zb(a);
		if(0 >= b.length) a.aiDisplay = f.slice();
		else { if(g || c || e.length > b.length || 0 !== b.indexOf(e) || a.bSorted) a.aiDisplay = f.slice();
			b = a.aiDisplay; for(c = b.length - 1; 0 <= c; c--) d.test(a.aoData[b[c]]._sFilterRow) || b.splice(c, 1) }
	}

	function Pa(a, b, c, d) { a = b ? a : Qa(a);
		c && (a = "^(?=.*?" + h.map(a.match(/"[^"]+"|[^ ]+/g) || [""], function(a) { if('"' === a.charAt(0)) var b = a.match(/^"(.*)"$/),
				a = b ? b[1] : a; return a.replace('"', "") }).join(")(?=.*?") + ").*$"); return RegExp(a, d ? "i" : "") }

	function zb(a) {
		var b = a.aoColumns,
			c, d, e, f, g, j, i, h, l = m.ext.type.search;
		c = !1;
		d = 0;
		for(f = a.aoData.length; d <
			f; d++)
			if(h = a.aoData[d], !h._aFilterData) { j = [];
				e = 0; for(g = b.length; e < g; e++) c = b[e], c.bSearchable ? (i = B(a, d, e, "filter"), l[c.sType] && (i = l[c.sType](i)), null === i && (i = ""), "string" !== typeof i && i.toString && (i = i.toString())) : i = "", i.indexOf && -1 !== i.indexOf("&") && (ua.innerHTML = i, i = Zb ? ua.textContent : ua.innerText), i.replace && (i = i.replace(/[\r\n]/g, "")), j.push(i);
				h._aFilterData = j;
				h._sFilterRow = j.join("  ");
				c = !0 }
		return c
	}

	function Ab(a) { return { search: a.sSearch, smart: a.bSmart, regex: a.bRegex, caseInsensitive: a.bCaseInsensitive } }

	function Bb(a) { return { sSearch: a.search, bSmart: a.smart, bRegex: a.regex, bCaseInsensitive: a.caseInsensitive } }

	function sb(a) { var b = a.sTableId,
			c = a.aanFeatures.i,
			d = h("<div/>", { "class": a.oClasses.sInfo, id: !c ? b + "_info" : null });
		c || (a.aoDrawCallback.push({ fn: Cb, sName: "information" }), d.attr("role", "status").attr("aria-live", "polite"), h(a.nTable).attr("aria-describedby", b + "_info")); return d[0] }

	function Cb(a) {
		var b = a.aanFeatures.i;
		if(0 !== b.length) {
			var c = a.oLanguage,
				d = a._iDisplayStart + 1,
				e = a.fnDisplayEnd(),
				f = a.fnRecordsTotal(),
				g = a.fnRecordsDisplay(),
				j = g ? c.sInfo : c.sInfoEmpty;
			g !== f && (j += " " + c.sInfoFiltered);
			j += c.sInfoPostFix;
			j = Db(a, j);
			c = c.fnInfoCallback;
			null !== c && (j = c.call(a.oInstance, a, d, e, f, g, j));
			h(b).html(j)
		}
	}

	function Db(a, b) {
		var c = a.fnFormatNumber,
			d = a._iDisplayStart + 1,
			e = a._iDisplayLength,
			f = a.fnRecordsDisplay(),
			g = -1 === e;
		return b.replace(/_START_/g, c.call(a, d)).replace(/_END_/g, c.call(a, a.fnDisplayEnd())).replace(/_MAX_/g, c.call(a, a.fnRecordsTotal())).replace(/_TOTAL_/g, c.call(a, f)).replace(/_PAGE_/g, c.call(a, g ? 1 : Math.ceil(d /
			e))).replace(/_PAGES_/g, c.call(a, g ? 1 : Math.ceil(f / e)))
	}

	function ga(a) {
		var b, c, d = a.iInitDisplayStart,
			e = a.aoColumns,
			f;
		c = a.oFeatures;
		var g = a.bDeferLoading;
		if(a.bInitialised) {
			nb(a);
			kb(a);
			ea(a, a.aoHeader);
			ea(a, a.aoFooter);
			C(a, !0);
			c.bAutoWidth && Fa(a);
			b = 0;
			for(c = e.length; b < c; b++) f = e[b], f.sWidth && (f.nTh.style.width = x(f.sWidth));
			u(a, null, "preInit", [a]);
			T(a);
			e = y(a);
			if("ssp" != e || g) "ajax" == e ? ra(a, [], function(c) { var f = sa(a, c); for(b = 0; b < f.length; b++) N(a, f[b]);
				a.iInitDisplayStart = d;
				T(a);
				C(a, !1);
				ta(a, c) }, a) : (C(a, !1),
				ta(a))
		} else setTimeout(function() { ga(a) }, 200)
	}

	function ta(a, b) { a._bInitComplete = !0;
		(b || a.oInit.aaData) && Y(a);
		u(a, null, "plugin-init", [a, b]);
		u(a, "aoInitComplete", "init", [a, b]) }

	function Ra(a, b) { var c = parseInt(b, 10);
		a._iDisplayLength = c;
		Sa(a);
		u(a, null, "length", [a, c]) }

	function ob(a) {
		for(var b = a.oClasses, c = a.sTableId, d = a.aLengthMenu, e = h.isArray(d[0]), f = e ? d[0] : d, d = e ? d[1] : d, e = h("<select/>", { name: c + "_length", "aria-controls": c, "class": b.sLengthSelect }), g = 0, j = f.length; g < j; g++) e[0][g] = new Option(d[g], f[g]);
		var i =
			h("<div><label/></div>").addClass(b.sLength);
		a.aanFeatures.l || (i[0].id = c + "_length");
		i.children().append(a.oLanguage.sLengthMenu.replace("_MENU_", e[0].outerHTML));
		h("select", i).val(a._iDisplayLength).bind("change.DT", function() { Ra(a, h(this).val());
			O(a) });
		h(a.nTable).bind("length.dt.DT", function(b, c, d) { a === c && h("select", i).val(d) });
		return i[0]
	}

	function tb(a) {
		var b = a.sPaginationType,
			c = m.ext.pager[b],
			d = "function" === typeof c,
			e = function(a) { O(a) },
			b = h("<div/>").addClass(a.oClasses.sPaging + b)[0],
			f = a.aanFeatures;
		d || c.fnInit(a, b, e);
		f.p || (b.id = a.sTableId + "_paginate", a.aoDrawCallback.push({ fn: function(a) { if(d) { var b = a._iDisplayStart,
						i = a._iDisplayLength,
						h = a.fnRecordsDisplay(),
						l = -1 === i,
						b = l ? 0 : Math.ceil(b / i),
						i = l ? 1 : Math.ceil(h / i),
						h = c(b, i),
						k, l = 0; for(k = f.p.length; l < k; l++) Na(a, "pageButton")(a, f.p[l], l, h, b, i) } else c.fnUpdate(a, e) }, sName: "pagination" }));
		return b
	}

	function Ta(a, b, c) {
		var d = a._iDisplayStart,
			e = a._iDisplayLength,
			f = a.fnRecordsDisplay();
		0 === f || -1 === e ? d = 0 : "number" === typeof b ? (d = b * e, d > f && (d = 0)) : "first" == b ? d = 0 :
			"previous" == b ? (d = 0 <= e ? d - e : 0, 0 > d && (d = 0)) : "next" == b ? d + e < f && (d += e) : "last" == b ? d = Math.floor((f - 1) / e) * e : L(a, 0, "Unknown paging action: " + b, 5);
		b = a._iDisplayStart !== d;
		a._iDisplayStart = d;
		b && (u(a, null, "page", [a]), c && O(a));
		return b
	}

	function qb(a) { return h("<div/>", { id: !a.aanFeatures.r ? a.sTableId + "_processing" : null, "class": a.oClasses.sProcessing }).html(a.oLanguage.sProcessing).insertBefore(a.nTable)[0] }

	function C(a, b) {
		a.oFeatures.bProcessing && h(a.aanFeatures.r).css("display", b ? "block" : "none");
		u(a, null, "processing", [a, b])
	}

	function rb(a) {
		var b = h(a.nTable);
		b.attr("role", "grid");
		var c = a.oScroll;
		if("" === c.sX && "" === c.sY) return a.nTable;
		var d = c.sX,
			e = c.sY,
			f = a.oClasses,
			g = b.children("caption"),
			j = g.length ? g[0]._captionSide : null,
			i = h(b[0].cloneNode(!1)),
			n = h(b[0].cloneNode(!1)),
			l = b.children("tfoot");
		l.length || (l = null);
		i = h("<div/>", { "class": f.sScrollWrapper }).append(h("<div/>", { "class": f.sScrollHead }).css({ overflow: "hidden", position: "relative", border: 0, width: d ? !d ? null : x(d) : "100%" }).append(h("<div/>", { "class": f.sScrollHeadInner }).css({
			"box-sizing": "content-box",
			width: c.sXInner || "100%"
		}).append(i.removeAttr("id").css("margin-left", 0).append("top" === j ? g : null).append(b.children("thead"))))).append(h("<div/>", { "class": f.sScrollBody }).css({ position: "relative", overflow: "auto", width: !d ? null : x(d) }).append(b));
		l && i.append(h("<div/>", { "class": f.sScrollFoot }).css({ overflow: "hidden", border: 0, width: d ? !d ? null : x(d) : "100%" }).append(h("<div/>", { "class": f.sScrollFootInner }).append(n.removeAttr("id").css("margin-left", 0).append("bottom" === j ? g : null).append(b.children("tfoot")))));
		var b = i.children(),
			k = b[0],
			f = b[1],
			t = l ? b[2] : null;
		if(d) h(f).on("scroll.DT", function() { var a = this.scrollLeft;
			k.scrollLeft = a;
			l && (t.scrollLeft = a) });
		h(f).css(e && c.bCollapse ? "max-height" : "height", e);
		a.nScrollHead = k;
		a.nScrollBody = f;
		a.nScrollFoot = t;
		a.aoDrawCallback.push({ fn: ka, sName: "scrolling" });
		return i[0]
	}

	function ka(a) {
		var b = a.oScroll,
			c = b.sX,
			d = b.sXInner,
			e = b.sY,
			b = b.iBarWidth,
			f = h(a.nScrollHead),
			g = f[0].style,
			j = f.children("div"),
			i = j[0].style,
			n = j.children("table"),
			j = a.nScrollBody,
			l = h(j),
			q = j.style,
			t = h(a.nScrollFoot).children("div"),
			m = t.children("table"),
			o = h(a.nTHead),
			F = h(a.nTable),
			p = F[0],
			r = p.style,
			u = a.nTFoot ? h(a.nTFoot) : null,
			Eb = a.oBrowser,
			Ua = Eb.bScrollOversize,
			s = G(a.aoColumns, "nTh"),
			P, v, w, y, z = [],
			A = [],
			B = [],
			C = [],
			D, E = function(a) { a = a.style;
				a.paddingTop = "0";
				a.paddingBottom = "0";
				a.borderTopWidth = "0";
				a.borderBottomWidth = "0";
				a.height = 0 };
		v = j.scrollHeight > j.clientHeight;
		if(a.scrollBarVis !== v && a.scrollBarVis !== k) a.scrollBarVis = v, Y(a);
		else {
			a.scrollBarVis = v;
			F.children("thead, tfoot").remove();
			u && (w = u.clone().prependTo(F), P = u.find("tr"), w =
				w.find("tr"));
			y = o.clone().prependTo(F);
			o = o.find("tr");
			v = y.find("tr");
			y.find("th, td").removeAttr("tabindex");
			c || (q.width = "100%", f[0].style.width = "100%");
			h.each(qa(a, y), function(b, c) { D = Z(a, b);
				c.style.width = a.aoColumns[D].sWidth });
			u && J(function(a) { a.style.width = "" }, w);
			f = F.outerWidth();
			if("" === c) { r.width = "100%"; if(Ua && (F.find("tbody").height() > j.offsetHeight || "scroll" == l.css("overflow-y"))) r.width = x(F.outerWidth() - b);
				f = F.outerWidth() } else "" !== d && (r.width = x(d), f = F.outerWidth());
			J(E, v);
			J(function(a) {
				B.push(a.innerHTML);
				z.push(x(h(a).css("width")))
			}, v);
			J(function(a, b) { if(h.inArray(a, s) !== -1) a.style.width = z[b] }, o);
			h(v).height(0);
			u && (J(E, w), J(function(a) { C.push(a.innerHTML);
				A.push(x(h(a).css("width"))) }, w), J(function(a, b) { a.style.width = A[b] }, P), h(w).height(0));
			J(function(a, b) { a.innerHTML = '<div class="dataTables_sizing" style="height:0;overflow:hidden;">' + B[b] + "</div>";
				a.style.width = z[b] }, v);
			u && J(function(a, b) {
				a.innerHTML = '<div class="dataTables_sizing" style="height:0;overflow:hidden;">' + C[b] + "</div>";
				a.style.width =
					A[b]
			}, w);
			if(F.outerWidth() < f) { P = j.scrollHeight > j.offsetHeight || "scroll" == l.css("overflow-y") ? f + b : f; if(Ua && (j.scrollHeight > j.offsetHeight || "scroll" == l.css("overflow-y"))) r.width = x(P - b);
				("" === c || "" !== d) && L(a, 1, "Possible column misalignment", 6) } else P = "100%";
			q.width = x(P);
			g.width = x(P);
			u && (a.nScrollFoot.style.width = x(P));
			!e && Ua && (q.height = x(p.offsetHeight + b));
			c = F.outerWidth();
			n[0].style.width = x(c);
			i.width = x(c);
			d = F.height() > j.clientHeight || "scroll" == l.css("overflow-y");
			e = "padding" + (Eb.bScrollbarLeft ? "Left" :
				"Right");
			i[e] = d ? b + "px" : "0px";
			u && (m[0].style.width = x(c), t[0].style.width = x(c), t[0].style[e] = d ? b + "px" : "0px");
			F.children("colgroup").insertBefore(F.children("thead"));
			l.scroll();
			if((a.bSorted || a.bFiltered) && !a._drawHold) j.scrollTop = 0
		}
	}

	function J(a, b, c) { for(var d = 0, e = 0, f = b.length, g, j; e < f;) { g = b[e].firstChild; for(j = c ? c[e].firstChild : null; g;) 1 === g.nodeType && (c ? a(g, j, d) : a(g, d), d++), g = g.nextSibling, j = c ? j.nextSibling : null;
			e++ } }

	function Fa(a) {
		var b = a.nTable,
			c = a.aoColumns,
			d = a.oScroll,
			e = d.sY,
			f = d.sX,
			g = d.sXInner,
			j = c.length,
			i = la(a, "bVisible"),
			n = h("th", a.nTHead),
			l = b.getAttribute("width"),
			k = b.parentNode,
			t = !1,
			m, o, p = a.oBrowser,
			d = p.bScrollOversize;
		(m = b.style.width) && -1 !== m.indexOf("%") && (l = m);
		for(m = 0; m < i.length; m++) o = c[i[m]], null !== o.sWidth && (o.sWidth = Fb(o.sWidthOrig, k), t = !0);
		if(d || !t && !f && !e && j == aa(a) && j == n.length)
			for(m = 0; m < j; m++) i = Z(a, m), null !== i && (c[i].sWidth = x(n.eq(m).width()));
		else {
			j = h(b).clone().css("visibility", "hidden").removeAttr("id");
			j.find("tbody tr").remove();
			var r = h("<tr/>").appendTo(j.find("tbody"));
			j.find("thead, tfoot").remove();
			j.append(h(a.nTHead).clone()).append(h(a.nTFoot).clone());
			j.find("tfoot th, tfoot td").css("width", "");
			n = qa(a, j.find("thead")[0]);
			for(m = 0; m < i.length; m++) o = c[i[m]], n[m].style.width = null !== o.sWidthOrig && "" !== o.sWidthOrig ? x(o.sWidthOrig) : "", o.sWidthOrig && f && h(n[m]).append(h("<div/>").css({ width: o.sWidthOrig, margin: 0, padding: 0, border: 0, height: 1 }));
			if(a.aoData.length)
				for(m = 0; m < i.length; m++) t = i[m], o = c[t], h(Gb(a, t)).clone(!1).append(o.sContentPadding).appendTo(r);
			h("[name]",
				j).removeAttr("name");
			o = h("<div/>").css(f || e ? { position: "absolute", top: 0, left: 0, height: 1, right: 0, overflow: "hidden" } : {}).append(j).appendTo(k);
			f && g ? j.width(g) : f ? (j.css("width", "auto"), j.removeAttr("width"), j.width() < k.clientWidth && l && j.width(k.clientWidth)) : e ? j.width(k.clientWidth) : l && j.width(l);
			for(m = e = 0; m < i.length; m++) k = h(n[m]), g = k.outerWidth() - k.width(), k = p.bBounding ? Math.ceil(n[m].getBoundingClientRect().width) : k.outerWidth(), e += k, c[i[m]].sWidth = x(k - g);
			b.style.width = x(e);
			o.remove()
		}
		l && (b.style.width =
			x(l));
		if((l || f) && !a._reszEvt) b = function() { h(D).bind("resize.DT-" + a.sInstance, Oa(function() { Y(a) })) }, d ? setTimeout(b, 1E3) : b(), a._reszEvt = !0
	}

	function Fb(a, b) { if(!a) return 0; var c = h("<div/>").css("width", x(a)).appendTo(b || I.body),
			d = c[0].offsetWidth;
		c.remove(); return d }

	function Gb(a, b) { var c = Hb(a, b); if(0 > c) return null; var d = a.aoData[c]; return !d.nTr ? h("<td/>").html(B(a, c, b, "display"))[0] : d.anCells[b] }

	function Hb(a, b) {
		for(var c, d = -1, e = -1, f = 0, g = a.aoData.length; f < g; f++) c = B(a, f, b, "display") + "", c = c.replace($b,
			""), c = c.replace(/&nbsp;/g, " "), c.length > d && (d = c.length, e = f);
		return e
	}

	function x(a) { return null === a ? "0px" : "number" == typeof a ? 0 > a ? "0px" : a + "px" : a.match(/\d$/) ? a + "px" : a }

	function V(a) {
		var b, c, d = [],
			e = a.aoColumns,
			f, g, j, i;
		b = a.aaSortingFixed;
		c = h.isPlainObject(b);
		var n = [];
		f = function(a) { a.length && !h.isArray(a[0]) ? n.push(a) : h.merge(n, a) };
		h.isArray(b) && f(b);
		c && b.pre && f(b.pre);
		f(a.aaSorting);
		c && b.post && f(b.post);
		for(a = 0; a < n.length; a++) {
			i = n[a][0];
			f = e[i].aDataSort;
			b = 0;
			for(c = f.length; b < c; b++) g = f[b], j = e[g].sType ||
				"string", n[a]._idx === k && (n[a]._idx = h.inArray(n[a][1], e[g].asSorting)), d.push({ src: i, col: g, dir: n[a][1], index: n[a]._idx, type: j, formatter: m.ext.type.order[j + "-pre"] })
		}
		return d
	}

	function mb(a) {
		var b, c, d = [],
			e = m.ext.type.order,
			f = a.aoData,
			g = 0,
			j, i = a.aiDisplayMaster,
			h;
		Ga(a);
		h = V(a);
		b = 0;
		for(c = h.length; b < c; b++) j = h[b], j.formatter && g++, Ib(a, j.col);
		if("ssp" != y(a) && 0 !== h.length) {
			b = 0;
			for(c = i.length; b < c; b++) d[i[b]] = b;
			g === h.length ? i.sort(function(a, b) {
				var c, e, g, j, i = h.length,
					k = f[a]._aSortData,
					m = f[b]._aSortData;
				for(g =
					0; g < i; g++)
					if(j = h[g], c = k[j.col], e = m[j.col], c = c < e ? -1 : c > e ? 1 : 0, 0 !== c) return "asc" === j.dir ? c : -c;
				c = d[a];
				e = d[b];
				return c < e ? -1 : c > e ? 1 : 0
			}) : i.sort(function(a, b) { var c, g, j, i, k = h.length,
					m = f[a]._aSortData,
					p = f[b]._aSortData; for(j = 0; j < k; j++)
					if(i = h[j], c = m[i.col], g = p[i.col], i = e[i.type + "-" + i.dir] || e["string-" + i.dir], c = i(c, g), 0 !== c) return c;
				c = d[a];
				g = d[b]; return c < g ? -1 : c > g ? 1 : 0 })
		}
		a.bSorted = !0
	}

	function Jb(a) {
		for(var b, c, d = a.aoColumns, e = V(a), a = a.oLanguage.oAria, f = 0, g = d.length; f < g; f++) {
			c = d[f];
			var j = c.asSorting;
			b = c.sTitle.replace(/<.*?>/g,
				"");
			var i = c.nTh;
			i.removeAttribute("aria-sort");
			c.bSortable && (0 < e.length && e[0].col == f ? (i.setAttribute("aria-sort", "asc" == e[0].dir ? "ascending" : "descending"), c = j[e[0].index + 1] || j[0]) : c = j[0], b += "asc" === c ? a.sSortAscending : a.sSortDescending);
			i.setAttribute("aria-label", b)
		}
	}

	function Va(a, b, c, d) {
		var e = a.aaSorting,
			f = a.aoColumns[b].asSorting,
			g = function(a, b) { var c = a._idx;
				c === k && (c = h.inArray(a[1], f)); return c + 1 < f.length ? c + 1 : b ? null : 0 };
		"number" === typeof e[0] && (e = a.aaSorting = [e]);
		c && a.oFeatures.bSortMulti ? (c = h.inArray(b,
			G(e, "0")), -1 !== c ? (b = g(e[c], !0), null === b && 1 === e.length && (b = 0), null === b ? e.splice(c, 1) : (e[c][1] = f[b], e[c]._idx = b)) : (e.push([b, f[0], 0]), e[e.length - 1]._idx = 0)) : e.length && e[0][0] == b ? (b = g(e[0]), e.length = 1, e[0][1] = f[b], e[0]._idx = b) : (e.length = 0, e.push([b, f[0]]), e[0]._idx = 0);
		T(a);
		"function" == typeof d && d(a)
	}

	function Ma(a, b, c, d) { var e = a.aoColumns[c];
		Wa(b, {}, function(b) {!1 !== e.bSortable && (a.oFeatures.bProcessing ? (C(a, !0), setTimeout(function() { Va(a, c, b.shiftKey, d); "ssp" !== y(a) && C(a, !1) }, 0)) : Va(a, c, b.shiftKey, d)) }) }

	function va(a) { var b = a.aLastSort,
			c = a.oClasses.sSortColumn,
			d = V(a),
			e = a.oFeatures,
			f, g; if(e.bSort && e.bSortClasses) { e = 0; for(f = b.length; e < f; e++) g = b[e].src, h(G(a.aoData, "anCells", g)).removeClass(c + (2 > e ? e + 1 : 3));
			e = 0; for(f = d.length; e < f; e++) g = d[e].src, h(G(a.aoData, "anCells", g)).addClass(c + (2 > e ? e + 1 : 3)) } a.aLastSort = d }

	function Ib(a, b) {
		var c = a.aoColumns[b],
			d = m.ext.order[c.sSortDataType],
			e;
		d && (e = d.call(a.oInstance, a, b, $(a, b)));
		for(var f, g = m.ext.type.order[c.sType + "-pre"], j = 0, i = a.aoData.length; j < i; j++)
			if(c = a.aoData[j],
				c._aSortData || (c._aSortData = []), !c._aSortData[b] || d) f = d ? e[j] : B(a, j, b, "sort"), c._aSortData[b] = g ? g(f) : f
	}

	function wa(a) {
		if(a.oFeatures.bStateSave && !a.bDestroying) {
			var b = { time: +new Date, start: a._iDisplayStart, length: a._iDisplayLength, order: h.extend(!0, [], a.aaSorting), search: Ab(a.oPreviousSearch), columns: h.map(a.aoColumns, function(b, d) { return { visible: b.bVisible, search: Ab(a.aoPreSearchCols[d]) } }) };
			u(a, "aoStateSaveParams", "stateSaveParams", [a, b]);
			a.oSavedState = b;
			a.fnStateSaveCallback.call(a.oInstance, a,
				b)
		}
	}

	function Kb(a) {
		var b, c, d = a.aoColumns;
		if(a.oFeatures.bStateSave) {
			var e = a.fnStateLoadCallback.call(a.oInstance, a);
			if(e && e.time && (b = u(a, "aoStateLoadParams", "stateLoadParams", [a, e]), -1 === h.inArray(!1, b) && (b = a.iStateDuration, !(0 < b && e.time < +new Date - 1E3 * b) && d.length === e.columns.length))) {
				a.oLoadedState = h.extend(!0, {}, e);
				e.start !== k && (a._iDisplayStart = e.start, a.iInitDisplayStart = e.start);
				e.length !== k && (a._iDisplayLength = e.length);
				e.order !== k && (a.aaSorting = [], h.each(e.order, function(b, c) {
					a.aaSorting.push(c[0] >=
						d.length ? [0, c[1]] : c)
				}));
				e.search !== k && h.extend(a.oPreviousSearch, Bb(e.search));
				b = 0;
				for(c = e.columns.length; b < c; b++) { var f = e.columns[b];
					f.visible !== k && (d[b].bVisible = f.visible);
					f.search !== k && h.extend(a.aoPreSearchCols[b], Bb(f.search)) } u(a, "aoStateLoaded", "stateLoaded", [a, e])
			}
		}
	}

	function xa(a) { var b = m.settings,
			a = h.inArray(a, G(b, "nTable")); return -1 !== a ? b[a] : null }

	function L(a, b, c, d) {
		c = "DataTables warning: " + (a ? "table id=" + a.sTableId + " - " : "") + c;
		d && (c += ". For more information about this error, please see " +
			d);
		if(b) D.console && console.log && console.log(c);
		else if(b = m.ext, b = b.sErrMode || b.errMode, a && u(a, null, "error", [a, d, c]), "alert" == b) alert(c);
		else { if("throw" == b) throw Error(c); "function" == typeof b && b(a, d, c) }
	}

	function E(a, b, c, d) { h.isArray(c) ? h.each(c, function(c, d) { h.isArray(d) ? E(a, b, d[0], d[1]) : E(a, b, d) }) : (d === k && (d = c), b[c] !== k && (a[d] = b[c])) }

	function Lb(a, b, c) {
		var d, e;
		for(e in b) b.hasOwnProperty(e) && (d = b[e], h.isPlainObject(d) ? (h.isPlainObject(a[e]) || (a[e] = {}), h.extend(!0, a[e], d)) : a[e] = c && "data" !== e && "aaData" !==
			e && h.isArray(d) ? d.slice() : d);
		return a
	}

	function Wa(a, b, c) { h(a).bind("click.DT", b, function(b) { a.blur();
			c(b) }).bind("keypress.DT", b, function(a) { 13 === a.which && (a.preventDefault(), c(a)) }).bind("selectstart.DT", function() { return !1 }) }

	function z(a, b, c, d) { c && a[b].push({ fn: c, sName: d }) }

	function u(a, b, c, d) { var e = [];
		b && (e = h.map(a[b].slice().reverse(), function(b) { return b.fn.apply(a.oInstance, d) }));
		null !== c && (b = h.Event(c + ".dt"), h(a.nTable).trigger(b, d), e.push(b.result)); return e }

	function Sa(a) {
		var b = a._iDisplayStart,
			c = a.fnDisplayEnd(),
			d = a._iDisplayLength;
		b >= c && (b = c - d);
		b -= b % d;
		if(-1 === d || 0 > b) b = 0;
		a._iDisplayStart = b
	}

	function Na(a, b) { var c = a.renderer,
			d = m.ext.renderer[b]; return h.isPlainObject(c) && c[b] ? d[c[b]] || d._ : "string" === typeof c ? d[c] || d._ : d._ }

	function y(a) { return a.oFeatures.bServerSide ? "ssp" : a.ajax || a.sAjaxSource ? "ajax" : "dom" }

	function ya(a, b) {
		var c = [],
			c = Mb.numbers_length,
			d = Math.floor(c / 2);
		b <= c ? c = W(0, b) : a <= d ? (c = W(0, c - 2), c.push("ellipsis"), c.push(b - 1)) : (a >= b - 1 - d ? c = W(b - (c - 2), b) : (c = W(a - d + 2, a + d - 1), c.push("ellipsis"),
			c.push(b - 1)), c.splice(0, 0, "ellipsis"), c.splice(0, 0, 0));
		c.DT_el = "span";
		return c
	}

	function db(a) { h.each({ num: function(b) { return za(b, a) }, "num-fmt": function(b) { return za(b, a, Xa) }, "html-num": function(b) { return za(b, a, Aa) }, "html-num-fmt": function(b) { return za(b, a, Aa, Xa) } }, function(b, c) { v.type.order[b + a + "-pre"] = c;
			b.match(/^html\-/) && (v.type.search[b + a] = v.type.search.html) }) }

	function Nb(a) {
		return function() {
			var b = [xa(this[m.ext.iApiIndex])].concat(Array.prototype.slice.call(arguments));
			return m.ext.internal[a].apply(this,
				b)
		}
	}
	var m = function(a) {
			this.$ = function(a, b) { return this.api(!0).$(a, b) };
			this._ = function(a, b) { return this.api(!0).rows(a, b).data() };
			this.api = function(a) { return a ? new r(xa(this[v.iApiIndex])) : new r(this) };
			this.fnAddData = function(a, b) { var c = this.api(!0),
					d = h.isArray(a) && (h.isArray(a[0]) || h.isPlainObject(a[0])) ? c.rows.add(a) : c.row.add(a);
				(b === k || b) && c.draw(); return d.flatten().toArray() };
			this.fnAdjustColumnSizing = function(a) {
				var b = this.api(!0).columns.adjust(),
					c = b.settings()[0],
					d = c.oScroll;
				a === k || a ? b.draw(!1) :
					("" !== d.sX || "" !== d.sY) && ka(c)
			};
			this.fnClearTable = function(a) { var b = this.api(!0).clear();
				(a === k || a) && b.draw() };
			this.fnClose = function(a) { this.api(!0).row(a).child.hide() };
			this.fnDeleteRow = function(a, b, c) { var d = this.api(!0),
					a = d.rows(a),
					e = a.settings()[0],
					h = e.aoData[a[0][0]];
				a.remove();
				b && b.call(this, e, h);
				(c === k || c) && d.draw(); return h };
			this.fnDestroy = function(a) { this.api(!0).destroy(a) };
			this.fnDraw = function(a) { this.api(!0).draw(a) };
			this.fnFilter = function(a, b, c, d, e, h) {
				e = this.api(!0);
				null === b || b === k ? e.search(a,
					c, d, h) : e.column(b).search(a, c, d, h);
				e.draw()
			};
			this.fnGetData = function(a, b) { var c = this.api(!0); if(a !== k) { var d = a.nodeName ? a.nodeName.toLowerCase() : ""; return b !== k || "td" == d || "th" == d ? c.cell(a, b).data() : c.row(a).data() || null } return c.data().toArray() };
			this.fnGetNodes = function(a) { var b = this.api(!0); return a !== k ? b.row(a).node() : b.rows().nodes().flatten().toArray() };
			this.fnGetPosition = function(a) {
				var b = this.api(!0),
					c = a.nodeName.toUpperCase();
				return "TR" == c ? b.row(a).index() : "TD" == c || "TH" == c ? (a = b.cell(a).index(), [a.row, a.columnVisible, a.column]) : null
			};
			this.fnIsOpen = function(a) { return this.api(!0).row(a).child.isShown() };
			this.fnOpen = function(a, b, c) { return this.api(!0).row(a).child(b, c).show().child()[0] };
			this.fnPageChange = function(a, b) { var c = this.api(!0).page(a);
				(b === k || b) && c.draw(!1) };
			this.fnSetColumnVis = function(a, b, c) { a = this.api(!0).column(a).visible(b);
				(c === k || c) && a.columns.adjust().draw() };
			this.fnSettings = function() { return xa(this[v.iApiIndex]) };
			this.fnSort = function(a) { this.api(!0).order(a).draw() };
			this.fnSortListener =
				function(a, b, c) { this.api(!0).order.listener(a, b, c) };
			this.fnUpdate = function(a, b, c, d, e) { var h = this.api(!0);
				c === k || null === c ? h.row(b).data(a) : h.cell(b, c).data(a);
				(e === k || e) && h.columns.adjust();
				(d === k || d) && h.draw(); return 0 };
			this.fnVersionCheck = v.fnVersionCheck;
			var b = this,
				c = a === k,
				d = this.length;
			c && (a = {});
			this.oApi = this.internal = v.internal;
			for(var e in m.ext.internal) e && (this[e] = Nb(e));
			this.each(function() {
				var e = {},
					e = 1 < d ? Lb(e, a, !0) : a,
					g = 0,
					j, i = this.getAttribute("id"),
					n = !1,
					l = m.defaults,
					q = h(this);
				if("table" !=
					this.nodeName.toLowerCase()) L(null, 0, "Non-table node initialisation (" + this.nodeName + ")", 2);
				else {
					eb(l);
					fb(l.column);
					K(l, l, !0);
					K(l.column, l.column, !0);
					K(l, h.extend(e, q.data()));
					var t = m.settings,
						g = 0;
					for(j = t.length; g < j; g++) {
						var p = t[g];
						if(p.nTable == this || p.nTHead.parentNode == this || p.nTFoot && p.nTFoot.parentNode == this) {
							g = e.bRetrieve !== k ? e.bRetrieve : l.bRetrieve;
							if(c || g) return p.oInstance;
							if(e.bDestroy !== k ? e.bDestroy : l.bDestroy) { p.oInstance.fnDestroy(); break } else {
								L(p, 0, "Cannot reinitialise DataTable", 3);
								return
							}
						}
						if(p.sTableId == this.id) { t.splice(g, 1); break }
					}
					if(null === i || "" === i) this.id = i = "DataTables_Table_" + m.ext._unique++;
					var o = h.extend(!0, {}, m.models.oSettings, { sDestroyWidth: q[0].style.width, sInstance: i, sTableId: i });
					o.nTable = this;
					o.oApi = b.internal;
					o.oInit = e;
					t.push(o);
					o.oInstance = 1 === b.length ? b : q.dataTable();
					eb(e);
					e.oLanguage && Da(e.oLanguage);
					e.aLengthMenu && !e.iDisplayLength && (e.iDisplayLength = h.isArray(e.aLengthMenu[0]) ? e.aLengthMenu[0][0] : e.aLengthMenu[0]);
					e = Lb(h.extend(!0, {}, l), e);
					E(o.oFeatures,
						e, "bPaginate bLengthChange bFilter bSort bSortMulti bInfo bProcessing bAutoWidth bSortClasses bServerSide bDeferRender".split(" "));
					E(o, e, ["asStripeClasses", "ajax", "fnServerData", "fnFormatNumber", "sServerMethod", "aaSorting", "aaSortingFixed", "aLengthMenu", "sPaginationType", "sAjaxSource", "sAjaxDataProp", "iStateDuration", "sDom", "bSortCellsTop", "iTabIndex", "fnStateLoadCallback", "fnStateSaveCallback", "renderer", "searchDelay", "rowId", ["iCookieDuration", "iStateDuration"],
						["oSearch", "oPreviousSearch"],
						["aoSearchCols",
							"aoPreSearchCols"
						],
						["iDisplayLength", "_iDisplayLength"],
						["bJQueryUI", "bJUI"]
					]);
					E(o.oScroll, e, [
						["sScrollX", "sX"],
						["sScrollXInner", "sXInner"],
						["sScrollY", "sY"],
						["bScrollCollapse", "bCollapse"]
					]);
					E(o.oLanguage, e, "fnInfoCallback");
					z(o, "aoDrawCallback", e.fnDrawCallback, "user");
					z(o, "aoServerParams", e.fnServerParams, "user");
					z(o, "aoStateSaveParams", e.fnStateSaveParams, "user");
					z(o, "aoStateLoadParams", e.fnStateLoadParams, "user");
					z(o, "aoStateLoaded", e.fnStateLoaded, "user");
					z(o, "aoRowCallback", e.fnRowCallback,
						"user");
					z(o, "aoRowCreatedCallback", e.fnCreatedRow, "user");
					z(o, "aoHeaderCallback", e.fnHeaderCallback, "user");
					z(o, "aoFooterCallback", e.fnFooterCallback, "user");
					z(o, "aoInitComplete", e.fnInitComplete, "user");
					z(o, "aoPreDrawCallback", e.fnPreDrawCallback, "user");
					o.rowIdFn = Q(e.rowId);
					gb(o);
					i = o.oClasses;
					e.bJQueryUI ? (h.extend(i, m.ext.oJUIClasses, e.oClasses), e.sDom === l.sDom && "lfrtip" === l.sDom && (o.sDom = '<"H"lfr>t<"F"ip>'), o.renderer) ? h.isPlainObject(o.renderer) && !o.renderer.header && (o.renderer.header = "jqueryui") :
						o.renderer = "jqueryui" : h.extend(i, m.ext.classes, e.oClasses);
					q.addClass(i.sTable);
					o.iInitDisplayStart === k && (o.iInitDisplayStart = e.iDisplayStart, o._iDisplayStart = e.iDisplayStart);
					null !== e.iDeferLoading && (o.bDeferLoading = !0, g = h.isArray(e.iDeferLoading), o._iRecordsDisplay = g ? e.iDeferLoading[0] : e.iDeferLoading, o._iRecordsTotal = g ? e.iDeferLoading[1] : e.iDeferLoading);
					var r = o.oLanguage;
					h.extend(!0, r, e.oLanguage);
					"" !== r.sUrl && (h.ajax({
						dataType: "json",
						url: r.sUrl,
						success: function(a) {
							Da(a);
							K(l.oLanguage, a);
							h.extend(true,
								r, a);
							ga(o)
						},
						error: function() { ga(o) }
					}), n = !0);
					null === e.asStripeClasses && (o.asStripeClasses = [i.sStripeOdd, i.sStripeEven]);
					var g = o.asStripeClasses,
						v = q.children("tbody").find("tr").eq(0); - 1 !== h.inArray(!0, h.map(g, function(a) { return v.hasClass(a) })) && (h("tbody tr", this).removeClass(g.join(" ")), o.asDestroyStripes = g.slice());
					t = [];
					g = this.getElementsByTagName("thead");
					0 !== g.length && (da(o.aoHeader, g[0]), t = qa(o));
					if(null === e.aoColumns) { p = [];
						g = 0; for(j = t.length; g < j; g++) p.push(null) } else p = e.aoColumns;
					g = 0;
					for(j =
						p.length; g < j; g++) Ea(o, t ? t[g] : null);
					ib(o, e.aoColumnDefs, p, function(a, b) { ja(o, a, b) });
					if(v.length) { var s = function(a, b) { return a.getAttribute("data-" + b) !== null ? b : null };
						h(v[0]).children("th, td").each(function(a, b) { var c = o.aoColumns[a]; if(c.mData === a) { var d = s(b, "sort") || s(b, "order"),
									e = s(b, "filter") || s(b, "search"); if(d !== null || e !== null) { c.mData = { _: a + ".display", sort: d !== null ? a + ".@data-" + d : k, type: d !== null ? a + ".@data-" + d : k, filter: e !== null ? a + ".@data-" + e : k };
									ja(o, a) } } }) }
					var w = o.oFeatures;
					e.bStateSave && (w.bStateSave = !0, Kb(o, e), z(o, "aoDrawCallback", wa, "state_save"));
					if(e.aaSorting === k) { t = o.aaSorting;
						g = 0; for(j = t.length; g < j; g++) t[g][1] = o.aoColumns[g].asSorting[0] } va(o);
					w.bSort && z(o, "aoDrawCallback", function() { if(o.bSorted) { var a = V(o),
								b = {};
							h.each(a, function(a, c) { b[c.src] = c.dir });
							u(o, null, "order", [o, a, b]);
							Jb(o) } });
					z(o, "aoDrawCallback", function() {
						(o.bSorted || y(o) === "ssp" || w.bDeferRender) && va(o) }, "sc");
					g = q.children("caption").each(function() { this._captionSide = q.css("caption-side") });
					j = q.children("thead");
					0 === j.length &&
						(j = h("<thead/>").appendTo(this));
					o.nTHead = j[0];
					j = q.children("tbody");
					0 === j.length && (j = h("<tbody/>").appendTo(this));
					o.nTBody = j[0];
					j = q.children("tfoot");
					if(0 === j.length && 0 < g.length && ("" !== o.oScroll.sX || "" !== o.oScroll.sY)) j = h("<tfoot/>").appendTo(this);
					0 === j.length || 0 === j.children().length ? q.addClass(i.sNoFooter) : 0 < j.length && (o.nTFoot = j[0], da(o.aoFooter, o.nTFoot));
					if(e.aaData)
						for(g = 0; g < e.aaData.length; g++) N(o, e.aaData[g]);
					else(o.bDeferLoading || "dom" == y(o)) && ma(o, h(o.nTBody).children("tr"));
					o.aiDisplay =
						o.aiDisplayMaster.slice();
					o.bInitialised = !0;
					!1 === n && ga(o)
				}
			});
			b = null;
			return this
		},
		v, r, p, s, Ya = {},
		Ob = /[\r\n]/g,
		Aa = /<.*?>/g,
		ac = /^[\w\+\-]/,
		bc = /[\w\+\-]$/,
		cc = RegExp("(\\/|\\.|\\*|\\+|\\?|\\||\\(|\\)|\\[|\\]|\\{|\\}|\\\\|\\$|\\^|\\-)", "g"),
		Xa = /[',$£€¥%\u2009\u202F\u20BD\u20a9\u20BArfk]/gi,
		M = function(a) { return !a || !0 === a || "-" === a ? !0 : !1 },
		Pb = function(a) { var b = parseInt(a, 10); return !isNaN(b) && isFinite(a) ? b : null },
		Qb = function(a, b) {
			Ya[b] || (Ya[b] = RegExp(Qa(b), "g"));
			return "string" === typeof a && "." !== b ? a.replace(/\./g,
				"").replace(Ya[b], ".") : a
		},
		Za = function(a, b, c) { var d = "string" === typeof a; if(M(a)) return !0;
			b && d && (a = Qb(a, b));
			c && d && (a = a.replace(Xa, "")); return !isNaN(parseFloat(a)) && isFinite(a) },
		Rb = function(a, b, c) { return M(a) ? !0 : !(M(a) || "string" === typeof a) ? null : Za(a.replace(Aa, ""), b, c) ? !0 : null },
		G = function(a, b, c) { var d = [],
				e = 0,
				f = a.length; if(c !== k)
				for(; e < f; e++) a[e] && a[e][b] && d.push(a[e][b][c]);
			else
				for(; e < f; e++) a[e] && d.push(a[e][b]); return d },
		ha = function(a, b, c, d) {
			var e = [],
				f = 0,
				g = b.length;
			if(d !== k)
				for(; f < g; f++) a[b[f]][c] &&
					e.push(a[b[f]][c][d]);
			else
				for(; f < g; f++) e.push(a[b[f]][c]);
			return e
		},
		W = function(a, b) { var c = [],
				d;
			b === k ? (b = 0, d = a) : (d = b, b = a); for(var e = b; e < d; e++) c.push(e); return c },
		Sb = function(a) { for(var b = [], c = 0, d = a.length; c < d; c++) a[c] && b.push(a[c]); return b },
		pa = function(a) { var b = [],
				c, d, e = a.length,
				f, g = 0;
			d = 0;
			a: for(; d < e; d++) { c = a[d]; for(f = 0; f < g; f++)
					if(b[f] === c) continue a;
				b.push(c);
				g++ }
			return b };
	m.util = {
		throttle: function(a, b) {
			var c = b !== k ? b : 200,
				d, e;
			return function() {
				var b = this,
					g = +new Date,
					h = arguments;
				d && g < d + c ? (clearTimeout(e),
					e = setTimeout(function() { d = k;
						a.apply(b, h) }, c)) : (d = g, a.apply(b, h))
			}
		},
		escapeRegex: function(a) { return a.replace(cc, "\\$1") }
	};
	var A = function(a, b, c) { a[b] !== k && (a[c] = a[b]) },
		ba = /\[.*?\]$/,
		U = /\(\)$/,
		Qa = m.util.escapeRegex,
		ua = h("<div>")[0],
		Zb = ua.textContent !== k,
		$b = /<.*?>/g,
		Oa = m.util.throttle,
		Tb = [],
		w = Array.prototype,
		dc = function(a) {
			var b, c, d = m.settings,
				e = h.map(d, function(a) { return a.nTable });
			if(a) {
				if(a.nTable && a.oApi) return [a];
				if(a.nodeName && "table" === a.nodeName.toLowerCase()) return b = h.inArray(a, e), -1 !== b ? [d[b]] :
					null;
				if(a && "function" === typeof a.settings) return a.settings().toArray();
				"string" === typeof a ? c = h(a) : a instanceof h && (c = a)
			} else return [];
			if(c) return c.map(function() { b = h.inArray(this, e); return -1 !== b ? d[b] : null }).toArray()
		};
	r = function(a, b) { if(!(this instanceof r)) return new r(a, b); var c = [],
			d = function(a) {
				(a = dc(a)) && (c = c.concat(a)) }; if(h.isArray(a))
			for(var e = 0, f = a.length; e < f; e++) d(a[e]);
		else d(a);
		this.context = pa(c);
		b && h.merge(this, b);
		this.selector = { rows: null, cols: null, opts: null };
		r.extend(this, this, Tb) };
	m.Api = r;
	h.extend(r.prototype, {
		any: function() { return 0 !== this.count() },
		concat: w.concat,
		context: [],
		count: function() { return this.flatten().length },
		each: function(a) { for(var b = 0, c = this.length; b < c; b++) a.call(this, this[b], b, this); return this },
		eq: function(a) { var b = this.context; return b.length > a ? new r(b[a], this[a]) : null },
		filter: function(a) { var b = []; if(w.filter) b = w.filter.call(this, a, this);
			else
				for(var c = 0, d = this.length; c < d; c++) a.call(this, this[c], c, this) && b.push(this[c]); return new r(this.context, b) },
		flatten: function() {
			var a = [];
			return new r(this.context, a.concat.apply(a, this.toArray()))
		},
		join: w.join,
		indexOf: w.indexOf || function(a, b) { for(var c = b || 0, d = this.length; c < d; c++)
				if(this[c] === a) return c; return -1 },
		iterator: function(a, b, c, d) {
			var e = [],
				f, g, h, i, n, l = this.context,
				m, t, p = this.selector;
			"string" === typeof a && (d = c, c = b, b = a, a = !1);
			g = 0;
			for(h = l.length; g < h; g++) {
				var o = new r(l[g]);
				if("table" === b) f = c.call(o, l[g], g), f !== k && e.push(f);
				else if("columns" === b || "rows" === b) f = c.call(o, l[g], this[g], g), f !== k && e.push(f);
				else if("column" === b || "column-rows" ===
					b || "row" === b || "cell" === b) { t = this[g]; "column-rows" === b && (m = Ba(l[g], p.opts));
					i = 0; for(n = t.length; i < n; i++) f = t[i], f = "cell" === b ? c.call(o, l[g], f.row, f.column, g, i) : c.call(o, l[g], f, g, i, m), f !== k && e.push(f) }
			}
			return e.length || d ? (a = new r(l, a ? e.concat.apply([], e) : e), b = a.selector, b.rows = p.rows, b.cols = p.cols, b.opts = p.opts, a) : this
		},
		lastIndexOf: w.lastIndexOf || function(a, b) { return this.indexOf.apply(this.toArray.reverse(), arguments) },
		length: 0,
		map: function(a) {
			var b = [];
			if(w.map) b = w.map.call(this, a, this);
			else
				for(var c =
						0, d = this.length; c < d; c++) b.push(a.call(this, this[c], c));
			return new r(this.context, b)
		},
		pluck: function(a) { return this.map(function(b) { return b[a] }) },
		pop: w.pop,
		push: w.push,
		reduce: w.reduce || function(a, b) { return hb(this, a, b, 0, this.length, 1) },
		reduceRight: w.reduceRight || function(a, b) { return hb(this, a, b, this.length - 1, -1, -1) },
		reverse: w.reverse,
		selector: null,
		shift: w.shift,
		sort: w.sort,
		splice: w.splice,
		toArray: function() { return w.slice.call(this) },
		to$: function() { return h(this) },
		toJQuery: function() { return h(this) },
		unique: function() { return new r(this.context, pa(this)) },
		unshift: w.unshift
	});
	r.extend = function(a, b, c) { if(c.length && b && (b instanceof r || b.__dt_wrapper)) { var d, e, f, g = function(a, b, c) { return function() { var d = b.apply(a, arguments);
					r.extend(d, d, c.methodExt); return d } };
			d = 0; for(e = c.length; d < e; d++) f = c[d], b[f.name] = "function" === typeof f.val ? g(a, f.val, f) : h.isPlainObject(f.val) ? {} : f.val, b[f.name].__dt_wrapper = !0, r.extend(a, b[f.name], f.propExt) } };
	r.register = p = function(a, b) {
		if(h.isArray(a))
			for(var c = 0, d = a.length; c <
				d; c++) r.register(a[c], b);
		else
			for(var e = a.split("."), f = Tb, g, j, c = 0, d = e.length; c < d; c++) { g = (j = -1 !== e[c].indexOf("()")) ? e[c].replace("()", "") : e[c]; var i;
				a: { i = 0; for(var n = f.length; i < n; i++)
						if(f[i].name === g) { i = f[i]; break a }
					i = null } i || (i = { name: g, val: {}, methodExt: [], propExt: [] }, f.push(i));
				c === d - 1 ? i.val = b : f = j ? i.methodExt : i.propExt }
	};
	r.registerPlural = s = function(a, b, c) {
		r.register(a, c);
		r.register(b, function() {
			var a = c.apply(this, arguments);
			return a === this ? this : a instanceof r ? a.length ? h.isArray(a[0]) ? new r(a.context,
				a[0]) : a[0] : k : a
		})
	};
	p("tables()", function(a) { var b; if(a) { b = r; var c = this.context; if("number" === typeof a) a = [c[a]];
			else var d = h.map(c, function(a) { return a.nTable }),
				a = h(d).filter(a).map(function() { var a = h.inArray(this, d); return c[a] }).toArray();
			b = new b(a) } else b = this; return b });
	p("table()", function(a) { var a = this.tables(a),
			b = a.context; return b.length ? new r(b[0]) : a });
	s("tables().nodes()", "table().node()", function() { return this.iterator("table", function(a) { return a.nTable }, 1) });
	s("tables().body()", "table().body()",
		function() { return this.iterator("table", function(a) { return a.nTBody }, 1) });
	s("tables().header()", "table().header()", function() { return this.iterator("table", function(a) { return a.nTHead }, 1) });
	s("tables().footer()", "table().footer()", function() { return this.iterator("table", function(a) { return a.nTFoot }, 1) });
	s("tables().containers()", "table().container()", function() { return this.iterator("table", function(a) { return a.nTableWrapper }, 1) });
	p("draw()", function(a) {
		return this.iterator("table", function(b) {
			"page" ===
			a ? O(b) : ("string" === typeof a && (a = "full-hold" === a ? !1 : !0), T(b, !1 === a))
		})
	});
	p("page()", function(a) { return a === k ? this.page.info().page : this.iterator("table", function(b) { Ta(b, a) }) });
	p("page.info()", function() {
		if(0 === this.context.length) return k;
		var a = this.context[0],
			b = a._iDisplayStart,
			c = a.oFeatures.bPaginate ? a._iDisplayLength : -1,
			d = a.fnRecordsDisplay(),
			e = -1 === c;
		return {
			page: e ? 0 : Math.floor(b / c),
			pages: e ? 1 : Math.ceil(d / c),
			start: b,
			end: a.fnDisplayEnd(),
			length: c,
			recordsTotal: a.fnRecordsTotal(),
			recordsDisplay: d,
			serverSide: "ssp" === y(a)
		}
	});
	p("page.len()", function(a) { return a === k ? 0 !== this.context.length ? this.context[0]._iDisplayLength : k : this.iterator("table", function(b) { Ra(b, a) }) });
	var Ub = function(a, b, c) { if(c) { var d = new r(a);
			d.one("draw", function() { c(d.ajax.json()) }) } if("ssp" == y(a)) T(a, b);
		else { C(a, !0); var e = a.jqXHR;
			e && 4 !== e.readyState && e.abort();
			ra(a, [], function(c) { na(a); for(var c = sa(a, c), d = 0, e = c.length; d < e; d++) N(a, c[d]);
				T(a, b);
				C(a, !1) }) } };
	p("ajax.json()", function() { var a = this.context; if(0 < a.length) return a[0].json });
	p("ajax.params()", function() { var a = this.context; if(0 < a.length) return a[0].oAjaxData });
	p("ajax.reload()", function(a, b) { return this.iterator("table", function(c) { Ub(c, !1 === b, a) }) });
	p("ajax.url()", function(a) { var b = this.context; if(a === k) { if(0 === b.length) return k;
			b = b[0]; return b.ajax ? h.isPlainObject(b.ajax) ? b.ajax.url : b.ajax : b.sAjaxSource } return this.iterator("table", function(b) { h.isPlainObject(b.ajax) ? b.ajax.url = a : b.ajax = a }) });
	p("ajax.url().load()", function(a, b) {
		return this.iterator("table", function(c) {
			Ub(c, !1 === b, a)
		})
	});
	var $a = function(a, b, c, d, e) { var f = [],
				g, j, i, n, l, m;
			i = typeof b; if(!b || "string" === i || "function" === i || b.length === k) b = [b];
			i = 0; for(n = b.length; i < n; i++) { j = b[i] && b[i].split ? b[i].split(",") : [b[i]];
				l = 0; for(m = j.length; l < m; l++)(g = c("string" === typeof j[l] ? h.trim(j[l]) : j[l])) && g.length && (f = f.concat(g)) } a = v.selector[a]; if(a.length) { i = 0; for(n = a.length; i < n; i++) f = a[i](d, e, f) } return pa(f) },
		ab = function(a) {
			a || (a = {});
			a.filter && a.search === k && (a.search = a.filter);
			return h.extend({
				search: "none",
				order: "current",
				page: "all"
			}, a)
		},
		bb = function(a) { for(var b = 0, c = a.length; b < c; b++)
				if(0 < a[b].length) return a[0] = a[b], a[0].length = 1, a.length = 1, a.context = [a.context[b]], a;
			a.length = 0; return a },
		Ba = function(a, b) {
			var c, d, e, f = [],
				g = a.aiDisplay;
			c = a.aiDisplayMaster;
			var j = b.search;
			d = b.order;
			e = b.page;
			if("ssp" == y(a)) return "removed" === j ? [] : W(0, c.length);
			if("current" == e) { c = a._iDisplayStart; for(d = a.fnDisplayEnd(); c < d; c++) f.push(g[c]) } else if("current" == d || "applied" == d) f = "none" == j ? c.slice() : "applied" == j ? g.slice() : h.map(c, function(a) {
				return -1 ===
					h.inArray(a, g) ? a : null
			});
			else if("index" == d || "original" == d) { c = 0; for(d = a.aoData.length; c < d; c++) "none" == j ? f.push(c) : (e = h.inArray(c, g), (-1 === e && "removed" == j || 0 <= e && "applied" == j) && f.push(c)) }
			return f
		};
	p("rows()", function(a, b) {
		a === k ? a = "" : h.isPlainObject(a) && (b = a, a = "");
		var b = ab(b),
			c = this.iterator("table", function(c) {
				var e = b;
				return $a("row", a, function(a) {
					var b = Pb(a);
					if(b !== null && !e) return [b];
					var j = Ba(c, e);
					if(b !== null && h.inArray(b, j) !== -1) return [b];
					if(!a) return j;
					if(typeof a === "function") return h.map(j, function(b) {
						var e =
							c.aoData[b];
						return a(b, e._aData, e.nTr) ? b : null
					});
					b = Sb(ha(c.aoData, j, "nTr"));
					if(a.nodeName) { if(a._DT_RowIndex !== k) return [a._DT_RowIndex]; if(a._DT_CellIndex) return [a._DT_CellIndex.row];
						b = h(a).closest("*[data-dt-row]"); return b.length ? [b.data("dt-row")] : [] }
					if(typeof a === "string" && a.charAt(0) === "#") { j = c.aIds[a.replace(/^#/, "")]; if(j !== k) return [j.idx] }
					return h(b).filter(a).map(function() { return this._DT_RowIndex }).toArray()
				}, c, e)
			}, 1);
		c.selector.rows = a;
		c.selector.opts = b;
		return c
	});
	p("rows().nodes()", function() {
		return this.iterator("row",
			function(a, b) { return a.aoData[b].nTr || k }, 1)
	});
	p("rows().data()", function() { return this.iterator(!0, "rows", function(a, b) { return ha(a.aoData, b, "_aData") }, 1) });
	s("rows().cache()", "row().cache()", function(a) { return this.iterator("row", function(b, c) { var d = b.aoData[c]; return "search" === a ? d._aFilterData : d._aSortData }, 1) });
	s("rows().invalidate()", "row().invalidate()", function(a) { return this.iterator("row", function(b, c) { ca(b, c, a) }) });
	s("rows().indexes()", "row().index()", function() {
		return this.iterator("row",
			function(a, b) { return b }, 1)
	});
	s("rows().ids()", "row().id()", function(a) { for(var b = [], c = this.context, d = 0, e = c.length; d < e; d++)
			for(var f = 0, g = this[d].length; f < g; f++) { var h = c[d].rowIdFn(c[d].aoData[this[d][f]]._aData);
				b.push((!0 === a ? "#" : "") + h) }
		return new r(c, b) });
	s("rows().remove()", "row().remove()", function() {
		var a = this;
		this.iterator("row", function(b, c, d) {
			var e = b.aoData,
				f = e[c],
				g, h, i, n, l;
			e.splice(c, 1);
			g = 0;
			for(h = e.length; g < h; g++)
				if(i = e[g], l = i.anCells, null !== i.nTr && (i.nTr._DT_RowIndex = g), null !== l) {
					i = 0;
					for(n =
						l.length; i < n; i++) l[i]._DT_CellIndex.row = g
				}
			oa(b.aiDisplayMaster, c);
			oa(b.aiDisplay, c);
			oa(a[d], c, !1);
			Sa(b);
			c = b.rowIdFn(f._aData);
			c !== k && delete b.aIds[c]
		});
		this.iterator("table", function(a) { for(var c = 0, d = a.aoData.length; c < d; c++) a.aoData[c].idx = c });
		return this
	});
	p("rows.add()", function(a) {
		var b = this.iterator("table", function(b) { var c, f, g, h = [];
				f = 0; for(g = a.length; f < g; f++) c = a[f], c.nodeName && "TR" === c.nodeName.toUpperCase() ? h.push(ma(b, c)[0]) : h.push(N(b, c)); return h }, 1),
			c = this.rows(-1);
		c.pop();
		h.merge(c, b);
		return c
	});
	p("row()", function(a, b) { return bb(this.rows(a, b)) });
	p("row().data()", function(a) { var b = this.context; if(a === k) return b.length && this.length ? b[0].aoData[this[0]]._aData : k;
		b[0].aoData[this[0]]._aData = a;
		ca(b[0], this[0], "data"); return this });
	p("row().node()", function() { var a = this.context; return a.length && this.length ? a[0].aoData[this[0]].nTr || null : null });
	p("row.add()", function(a) {
		a instanceof h && a.length && (a = a[0]);
		var b = this.iterator("table", function(b) {
			return a.nodeName && "TR" === a.nodeName.toUpperCase() ?
				ma(b, a)[0] : N(b, a)
		});
		return this.row(b[0])
	});
	var cb = function(a, b) { var c = a.context; if(c.length && (c = c[0].aoData[b !== k ? b : a[0]]) && c._details) c._details.remove(), c._detailsShow = k, c._details = k },
		Vb = function(a, b) {
			var c = a.context;
			if(c.length && a.length) {
				var d = c[0].aoData[a[0]];
				if(d._details) {
					(d._detailsShow = b) ? d._details.insertAfter(d.nTr): d._details.detach();
					var e = c[0],
						f = new r(e),
						g = e.aoData;
					f.off("draw.dt.DT_details column-visibility.dt.DT_details destroy.dt.DT_details");
					0 < G(g, "_details").length && (f.on("draw.dt.DT_details",
						function(a, b) { e === b && f.rows({ page: "current" }).eq(0).each(function(a) { a = g[a];
								a._detailsShow && a._details.insertAfter(a.nTr) }) }), f.on("column-visibility.dt.DT_details", function(a, b) { if(e === b)
							for(var c, d = aa(b), f = 0, h = g.length; f < h; f++) c = g[f], c._details && c._details.children("td[colspan]").attr("colspan", d) }), f.on("destroy.dt.DT_details", function(a, b) { if(e === b)
							for(var c = 0, d = g.length; c < d; c++) g[c]._details && cb(f, c) }))
				}
			}
		};
	p("row().child()", function(a, b) {
		var c = this.context;
		if(a === k) return c.length && this.length ?
			c[0].aoData[this[0]]._details : k;
		if(!0 === a) this.child.show();
		else if(!1 === a) cb(this);
		else if(c.length && this.length) { var d = c[0],
				c = c[0].aoData[this[0]],
				e = [],
				f = function(a, b) { if(h.isArray(a) || a instanceof h)
						for(var c = 0, k = a.length; c < k; c++) f(a[c], b);
					else a.nodeName && "tr" === a.nodeName.toLowerCase() ? e.push(a) : (c = h("<tr><td/></tr>").addClass(b), h("td", c).addClass(b).html(a)[0].colSpan = aa(d), e.push(c[0])) };
			f(a, b);
			c._details && c._details.remove();
			c._details = h(e);
			c._detailsShow && c._details.insertAfter(c.nTr) }
		return this
	});
	p(["row().child.show()", "row().child().show()"], function() { Vb(this, !0); return this });
	p(["row().child.hide()", "row().child().hide()"], function() { Vb(this, !1); return this });
	p(["row().child.remove()", "row().child().remove()"], function() { cb(this); return this });
	p("row().child.isShown()", function() { var a = this.context; return a.length && this.length ? a[0].aoData[this[0]]._detailsShow || !1 : !1 });
	var ec = /^(.+):(name|visIdx|visible)$/,
		Wb = function(a, b, c, d, e) {
			for(var c = [], d = 0, f = e.length; d < f; d++) c.push(B(a, e[d], b));
			return c
		};
	p("columns()", function(a, b) {
		a === k ? a = "" : h.isPlainObject(a) && (b = a, a = "");
		var b = ab(b),
			c = this.iterator("table", function(c) {
				var e = a,
					f = b,
					g = c.aoColumns,
					j = G(g, "sName"),
					i = G(g, "nTh");
				return $a("column", e, function(a) {
					var b = Pb(a);
					if(a === "") return W(g.length);
					if(b !== null) return [b >= 0 ? b : g.length + b];
					if(typeof a === "function") { var e = Ba(c, f); return h.map(g, function(b, f) { return a(f, Wb(c, f, 0, 0, e), i[f]) ? f : null }) }
					var k = typeof a === "string" ? a.match(ec) : "";
					if(k) switch(k[2]) {
						case "visIdx":
						case "visible":
							b = parseInt(k[1],
								10);
							if(b < 0) { var m = h.map(g, function(a, b) { return a.bVisible ? b : null }); return [m[m.length + b]] }
							return [Z(c, b)];
						case "name":
							return h.map(j, function(a, b) { return a === k[1] ? b : null });
						default:
							return []
					}
					if(a.nodeName && a._DT_CellIndex) return [a._DT_CellIndex.column];
					b = h(i).filter(a).map(function() { return h.inArray(this, i) }).toArray();
					if(b.length || !a.nodeName) return b;
					b = h(a).closest("*[data-dt-column]");
					return b.length ? [b.data("dt-column")] : []
				}, c, f)
			}, 1);
		c.selector.cols = a;
		c.selector.opts = b;
		return c
	});
	s("columns().header()",
		"column().header()",
		function() { return this.iterator("column", function(a, b) { return a.aoColumns[b].nTh }, 1) });
	s("columns().footer()", "column().footer()", function() { return this.iterator("column", function(a, b) { return a.aoColumns[b].nTf }, 1) });
	s("columns().data()", "column().data()", function() { return this.iterator("column-rows", Wb, 1) });
	s("columns().dataSrc()", "column().dataSrc()", function() { return this.iterator("column", function(a, b) { return a.aoColumns[b].mData }, 1) });
	s("columns().cache()", "column().cache()",
		function(a) { return this.iterator("column-rows", function(b, c, d, e, f) { return ha(b.aoData, f, "search" === a ? "_aFilterData" : "_aSortData", c) }, 1) });
	s("columns().nodes()", "column().nodes()", function() { return this.iterator("column-rows", function(a, b, c, d, e) { return ha(a.aoData, e, "anCells", b) }, 1) });
	s("columns().visible()", "column().visible()", function(a, b) {
		var c = this.iterator("column", function(b, c) {
			if(a === k) return b.aoColumns[c].bVisible;
			var f = b.aoColumns,
				g = f[c],
				j = b.aoData,
				i, n, l;
			if(a !== k && g.bVisible !== a) {
				if(a) {
					var m =
						h.inArray(!0, G(f, "bVisible"), c + 1);
					i = 0;
					for(n = j.length; i < n; i++) l = j[i].nTr, f = j[i].anCells, l && l.insertBefore(f[c], f[m] || null)
				} else h(G(b.aoData, "anCells", c)).detach();
				g.bVisible = a;
				ea(b, b.aoHeader);
				ea(b, b.aoFooter);
				wa(b)
			}
		});
		a !== k && (this.iterator("column", function(c, e) { u(c, null, "column-visibility", [c, e, a, b]) }), (b === k || b) && this.columns.adjust());
		return c
	});
	s("columns().indexes()", "column().index()", function(a) { return this.iterator("column", function(b, c) { return "visible" === a ? $(b, c) : c }, 1) });
	p("columns.adjust()",
		function() { return this.iterator("table", function(a) { Y(a) }, 1) });
	p("column.index()", function(a, b) { if(0 !== this.context.length) { var c = this.context[0]; if("fromVisible" === a || "toData" === a) return Z(c, b); if("fromData" === a || "toVisible" === a) return $(c, b) } });
	p("column()", function(a, b) { return bb(this.columns(a, b)) });
	p("cells()", function(a, b, c) {
		h.isPlainObject(a) && (a.row === k ? (c = a, a = null) : (c = b, b = null));
		h.isPlainObject(b) && (c = b, b = null);
		if(null === b || b === k) return this.iterator("table", function(b) {
			var d = a,
				e = ab(c),
				f =
				b.aoData,
				g = Ba(b, e),
				j = Sb(ha(f, g, "anCells")),
				i = h([].concat.apply([], j)),
				l, n = b.aoColumns.length,
				m, p, r, u, v, s;
			return $a("cell", d, function(a) {
				var c = typeof a === "function";
				if(a === null || a === k || c) { m = [];
					p = 0; for(r = g.length; p < r; p++) { l = g[p]; for(u = 0; u < n; u++) { v = { row: l, column: u }; if(c) { s = f[l];
								a(v, B(b, l, u), s.anCells ? s.anCells[u] : null) && m.push(v) } else m.push(v) } } return m }
				if(h.isPlainObject(a)) return [a];
				c = i.filter(a).map(function(a, b) { return { row: b._DT_CellIndex.row, column: b._DT_CellIndex.column } }).toArray();
				if(c.length ||
					!a.nodeName) return c;
				s = h(a).closest("*[data-dt-row]");
				return s.length ? [{ row: s.data("dt-row"), column: s.data("dt-column") }] : []
			}, b, e)
		});
		var d = this.columns(b, c),
			e = this.rows(a, c),
			f, g, j, i, n, l = this.iterator("table", function(a, b) { f = [];
				g = 0; for(j = e[b].length; g < j; g++) { i = 0; for(n = d[b].length; i < n; i++) f.push({ row: e[b][g], column: d[b][i] }) } return f }, 1);
		h.extend(l.selector, { cols: b, rows: a, opts: c });
		return l
	});
	s("cells().nodes()", "cell().node()", function() {
		return this.iterator("cell", function(a, b, c) {
			return(a = a.aoData[b]) &&
				a.anCells ? a.anCells[c] : k
		}, 1)
	});
	p("cells().data()", function() { return this.iterator("cell", function(a, b, c) { return B(a, b, c) }, 1) });
	s("cells().cache()", "cell().cache()", function(a) { a = "search" === a ? "_aFilterData" : "_aSortData"; return this.iterator("cell", function(b, c, d) { return b.aoData[c][a][d] }, 1) });
	s("cells().render()", "cell().render()", function(a) { return this.iterator("cell", function(b, c, d) { return B(b, c, d, a) }, 1) });
	s("cells().indexes()", "cell().index()", function() {
		return this.iterator("cell", function(a,
			b, c) { return { row: b, column: c, columnVisible: $(a, c) } }, 1)
	});
	s("cells().invalidate()", "cell().invalidate()", function(a) { return this.iterator("cell", function(b, c, d) { ca(b, c, a, d) }) });
	p("cell()", function(a, b, c) { return bb(this.cells(a, b, c)) });
	p("cell().data()", function(a) { var b = this.context,
			c = this[0]; if(a === k) return b.length && c.length ? B(b[0], c[0].row, c[0].column) : k;
		jb(b[0], c[0].row, c[0].column, a);
		ca(b[0], c[0].row, "data", c[0].column); return this });
	p("order()", function(a, b) {
		var c = this.context;
		if(a === k) return 0 !==
			c.length ? c[0].aaSorting : k;
		"number" === typeof a ? a = [
			[a, b]
		] : a.length && !h.isArray(a[0]) && (a = Array.prototype.slice.call(arguments));
		return this.iterator("table", function(b) { b.aaSorting = a.slice() })
	});
	p("order.listener()", function(a, b, c) { return this.iterator("table", function(d) { Ma(d, a, b, c) }) });
	p("order.fixed()", function(a) { if(!a) { var b = this.context,
				b = b.length ? b[0].aaSortingFixed : k; return h.isArray(b) ? { pre: b } : b } return this.iterator("table", function(b) { b.aaSortingFixed = h.extend(!0, {}, a) }) });
	p(["columns().order()",
		"column().order()"
	], function(a) { var b = this; return this.iterator("table", function(c, d) { var e = [];
			h.each(b[d], function(b, c) { e.push([c, a]) });
			c.aaSorting = e }) });
	p("search()", function(a, b, c, d) { var e = this.context; return a === k ? 0 !== e.length ? e[0].oPreviousSearch.sSearch : k : this.iterator("table", function(e) { e.oFeatures.bFilter && fa(e, h.extend({}, e.oPreviousSearch, { sSearch: a + "", bRegex: null === b ? !1 : b, bSmart: null === c ? !0 : c, bCaseInsensitive: null === d ? !0 : d }), 1) }) });
	s("columns().search()", "column().search()", function(a,
		b, c, d) { return this.iterator("column", function(e, f) { var g = e.aoPreSearchCols; if(a === k) return g[f].sSearch;
			e.oFeatures.bFilter && (h.extend(g[f], { sSearch: a + "", bRegex: null === b ? !1 : b, bSmart: null === c ? !0 : c, bCaseInsensitive: null === d ? !0 : d }), fa(e, e.oPreviousSearch, 1)) }) });
	p("state()", function() { return this.context.length ? this.context[0].oSavedState : null });
	p("state.clear()", function() { return this.iterator("table", function(a) { a.fnStateSaveCallback.call(a.oInstance, a, {}) }) });
	p("state.loaded()", function() {
		return this.context.length ?
			this.context[0].oLoadedState : null
	});
	p("state.save()", function() { return this.iterator("table", function(a) { wa(a) }) });
	m.versionCheck = m.fnVersionCheck = function(a) { for(var b = m.version.split("."), a = a.split("."), c, d, e = 0, f = a.length; e < f; e++)
			if(c = parseInt(b[e], 10) || 0, d = parseInt(a[e], 10) || 0, c !== d) return c > d; return !0 };
	m.isDataTable = m.fnIsDataTable = function(a) {
		var b = h(a).get(0),
			c = !1;
		h.each(m.settings, function(a, e) {
			var f = e.nScrollHead ? h("table", e.nScrollHead)[0] : null,
				g = e.nScrollFoot ? h("table", e.nScrollFoot)[0] :
				null;
			if(e.nTable === b || f === b || g === b) c = !0
		});
		return c
	};
	m.tables = m.fnTables = function(a) { var b = !1;
		h.isPlainObject(a) && (b = a.api, a = a.visible); var c = h.map(m.settings, function(b) { if(!a || a && h(b.nTable).is(":visible")) return b.nTable }); return b ? new r(c) : c };
	m.camelToHungarian = K;
	p("$()", function(a, b) { var c = this.rows(b).nodes(),
			c = h(c); return h([].concat(c.filter(a).toArray(), c.find(a).toArray())) });
	h.each(["on", "one", "off"], function(a, b) {
		p(b + "()", function() {
			var a = Array.prototype.slice.call(arguments);
			a[0].match(/\.dt\b/) ||
				(a[0] += ".dt");
			var d = h(this.tables().nodes());
			d[b].apply(d, a);
			return this
		})
	});
	p("clear()", function() { return this.iterator("table", function(a) { na(a) }) });
	p("settings()", function() { return new r(this.context, this.context) });
	p("init()", function() { var a = this.context; return a.length ? a[0].oInit : null });
	p("data()", function() { return this.iterator("table", function(a) { return G(a.aoData, "_aData") }).flatten() });
	p("destroy()", function(a) {
		a = a || !1;
		return this.iterator("table", function(b) {
			var c = b.nTableWrapper.parentNode,
				d = b.oClasses,
				e = b.nTable,
				f = b.nTBody,
				g = b.nTHead,
				j = b.nTFoot,
				i = h(e),
				f = h(f),
				k = h(b.nTableWrapper),
				l = h.map(b.aoData, function(a) { return a.nTr }),
				p;
			b.bDestroying = !0;
			u(b, "aoDestroyCallback", "destroy", [b]);
			a || (new r(b)).columns().visible(!0);
			k.unbind(".DT").find(":not(tbody *)").unbind(".DT");
			h(D).unbind(".DT-" + b.sInstance);
			e != g.parentNode && (i.children("thead").detach(), i.append(g));
			j && e != j.parentNode && (i.children("tfoot").detach(), i.append(j));
			b.aaSorting = [];
			b.aaSortingFixed = [];
			va(b);
			h(l).removeClass(b.asStripeClasses.join(" "));
			h("th, td", g).removeClass(d.sSortable + " " + d.sSortableAsc + " " + d.sSortableDesc + " " + d.sSortableNone);
			b.bJUI && (h("th span." + d.sSortIcon + ", td span." + d.sSortIcon, g).detach(), h("th, td", g).each(function() { var a = h("div." + d.sSortJUIWrapper, this);
				h(this).append(a.contents());
				a.detach() }));
			f.children().detach();
			f.append(l);
			g = a ? "remove" : "detach";
			i[g]();
			k[g]();
			!a && c && (c.insertBefore(e, b.nTableReinsertBefore), i.css("width", b.sDestroyWidth).removeClass(d.sTable), (p = b.asDestroyStripes.length) && f.children().each(function(a) {
				h(this).addClass(b.asDestroyStripes[a %
					p])
			}));
			c = h.inArray(b, m.settings); - 1 !== c && m.settings.splice(c, 1)
		})
	});
	h.each(["column", "row", "cell"], function(a, b) { p(b + "s().every()", function(a) { var d = this.selector.opts,
				e = this; return this.iterator(b, function(f, g, h, i, n) { a.call(e[b](g, "cell" === b ? h : d, "cell" === b ? d : k), g, h, i, n) }) }) });
	p("i18n()", function(a, b, c) { var d = this.context[0],
			a = Q(a)(d.oLanguage);
		a === k && (a = b);
		c !== k && h.isPlainObject(a) && (a = a[c] !== k ? a[c] : a._); return a.replace("%d", c) });
	m.version = "1.10.12";
	m.settings = [];
	m.models = {};
	m.models.oSearch = {
		bCaseInsensitive: !0,
		sSearch: "",
		bRegex: !1,
		bSmart: !0
	};
	m.models.oRow = { nTr: null, anCells: null, _aData: [], _aSortData: null, _aFilterData: null, _sFilterRow: null, _sRowStripe: "", src: null, idx: -1 };
	m.models.oColumn = {
		idx: null,
		aDataSort: null,
		asSorting: null,
		bSearchable: null,
		bSortable: null,
		bVisible: null,
		_sManualType: null,
		_bAttrSrc: !1,
		fnCreatedCell: null,
		fnGetData: null,
		fnSetData: null,
		mData: null,
		mRender: null,
		nTh: null,
		nTf: null,
		sClass: null,
		sContentPadding: null,
		sDefaultContent: null,
		sName: null,
		sSortDataType: "std",
		sSortingClass: null,
		sSortingClassJUI: null,
		sTitle: null,
		sType: null,
		sWidth: null,
		sWidthOrig: null
	};
	m.defaults = {
		aaData: null,
		aaSorting: [
			[0, "asc"]
		],
		aaSortingFixed: [],
		ajax: null,
		aLengthMenu: [10, 25, 50, 100],
		aoColumns: null,
		aoColumnDefs: null,
		aoSearchCols: [],
		asStripeClasses: null,
		bAutoWidth: !0,
		bDeferRender: !1,
		bDestroy: !1,
		bFilter: !0,
		bInfo: !0,
		bJQueryUI: !1,
		bLengthChange: !0,
		bPaginate: !0,
		bProcessing: !1,
		bRetrieve: !1,
		bScrollCollapse: !1,
		bServerSide: !1,
		bSort: !0,
		bSortMulti: !0,
		bSortCellsTop: !1,
		bSortClasses: !0,
		bStateSave: !1,
		fnCreatedRow: null,
		fnDrawCallback: null,
		fnFooterCallback: null,
		fnFormatNumber: function(a) { return a.toString().replace(/\B(?=(\d{3})+(?!\d))/g, this.oLanguage.sThousands) },
		fnHeaderCallback: null,
		fnInfoCallback: null,
		fnInitComplete: null,
		fnPreDrawCallback: null,
		fnRowCallback: null,
		fnServerData: null,
		fnServerParams: null,
		fnStateLoadCallback: function(a) { try { return JSON.parse((-1 === a.iStateDuration ? sessionStorage : localStorage).getItem("DataTables_" + a.sInstance + "_" + location.pathname)) } catch(b) {} },
		fnStateLoadParams: null,
		fnStateLoaded: null,
		fnStateSaveCallback: function(a, b) {
			try {
				(-1 ===
					a.iStateDuration ? sessionStorage : localStorage).setItem("DataTables_" + a.sInstance + "_" + location.pathname, JSON.stringify(b))
			} catch(c) {}
		},
		fnStateSaveParams: null,
		iStateDuration: 7200,
		iDeferLoading: null,
		iDisplayLength: 10,
		iDisplayStart: 0,
		iTabIndex: 0,
		oClasses: {},
		oLanguage: {
			oAria: { sSortAscending: ": activate to sort column ascending", sSortDescending: ": activate to sort column descending" },
			oPaginate: { sFirst: "First", sLast: "Last", sNext: "Next", sPrevious: "Previous" },
			sEmptyTable: "No data available in table",
			sInfo: "Showing _START_ to _END_ of _TOTAL_ entries",
			sInfoEmpty: "Showing 0 to 0 of 0 entries",
			sInfoFiltered: "(filtered from _MAX_ total entries)",
			sInfoPostFix: "",
			sDecimal: "",
			sThousands: ",",
			sLengthMenu: "Show _MENU_ entries",
			sLoadingRecords: "Loading...",
			sProcessing: "Processing...",
			sSearch: "Search:",
			sSearchPlaceholder: "",
			sUrl: "",
			sZeroRecords: "No matching records found"
		},
		oSearch: h.extend({}, m.models.oSearch),
		sAjaxDataProp: "data",
		sAjaxSource: null,
		sDom: "lfrtip",
		searchDelay: null,
		sPaginationType: "simple_numbers",
		sScrollX: "",
		sScrollXInner: "",
		sScrollY: "",
		sServerMethod: "GET",
		renderer: null,
		rowId: "DT_RowId"
	};
	X(m.defaults);
	m.defaults.column = { aDataSort: null, iDataSort: -1, asSorting: ["asc", "desc"], bSearchable: !0, bSortable: !0, bVisible: !0, fnCreatedCell: null, mData: null, mRender: null, sCellType: "td", sClass: "", sContentPadding: "", sDefaultContent: null, sName: "", sSortDataType: "std", sTitle: null, sType: null, sWidth: null };
	X(m.defaults.column);
	m.models.oSettings = {
		oFeatures: {
			bAutoWidth: null,
			bDeferRender: null,
			bFilter: null,
			bInfo: null,
			bLengthChange: null,
			bPaginate: null,
			bProcessing: null,
			bServerSide: null,
			bSort: null,
			bSortMulti: null,
			bSortClasses: null,
			bStateSave: null
		},
		oScroll: { bCollapse: null, iBarWidth: 0, sX: null, sXInner: null, sY: null },
		oLanguage: { fnInfoCallback: null },
		oBrowser: { bScrollOversize: !1, bScrollbarLeft: !1, bBounding: !1, barWidth: 0 },
		ajax: null,
		aanFeatures: [],
		aoData: [],
		aiDisplay: [],
		aiDisplayMaster: [],
		aIds: {},
		aoColumns: [],
		aoHeader: [],
		aoFooter: [],
		oPreviousSearch: {},
		aoPreSearchCols: [],
		aaSorting: null,
		aaSortingFixed: [],
		asStripeClasses: null,
		asDestroyStripes: [],
		sDestroyWidth: 0,
		aoRowCallback: [],
		aoHeaderCallback: [],
		aoFooterCallback: [],
		aoDrawCallback: [],
		aoRowCreatedCallback: [],
		aoPreDrawCallback: [],
		aoInitComplete: [],
		aoStateSaveParams: [],
		aoStateLoadParams: [],
		aoStateLoaded: [],
		sTableId: "",
		nTable: null,
		nTHead: null,
		nTFoot: null,
		nTBody: null,
		nTableWrapper: null,
		bDeferLoading: !1,
		bInitialised: !1,
		aoOpenRows: [],
		sDom: null,
		searchDelay: null,
		sPaginationType: "two_button",
		iStateDuration: 0,
		aoStateSave: [],
		aoStateLoad: [],
		oSavedState: null,
		oLoadedState: null,
		sAjaxSource: null,
		sAjaxDataProp: null,
		bAjaxDataGet: !0,
		jqXHR: null,
		json: k,
		oAjaxData: k,
		fnServerData: null,
		aoServerParams: [],
		sServerMethod: null,
		fnFormatNumber: null,
		aLengthMenu: null,
		iDraw: 0,
		bDrawing: !1,
		iDrawError: -1,
		_iDisplayLength: 10,
		_iDisplayStart: 0,
		_iRecordsTotal: 0,
		_iRecordsDisplay: 0,
		bJUI: null,
		oClasses: {},
		bFiltered: !1,
		bSorted: !1,
		bSortCellsTop: null,
		oInit: null,
		aoDestroyCallback: [],
		fnRecordsTotal: function() { return "ssp" == y(this) ? 1 * this._iRecordsTotal : this.aiDisplayMaster.length },
		fnRecordsDisplay: function() { return "ssp" == y(this) ? 1 * this._iRecordsDisplay : this.aiDisplay.length },
		fnDisplayEnd: function() {
			var a =
				this._iDisplayLength,
				b = this._iDisplayStart,
				c = b + a,
				d = this.aiDisplay.length,
				e = this.oFeatures,
				f = e.bPaginate;
			return e.bServerSide ? !1 === f || -1 === a ? b + d : Math.min(b + a, this._iRecordsDisplay) : !f || c > d || -1 === a ? d : c
		},
		oInstance: null,
		sInstance: null,
		iTabIndex: 0,
		nScrollHead: null,
		nScrollFoot: null,
		aLastSort: [],
		oPlugins: {},
		rowIdFn: null,
		rowId: null
	};
	m.ext = v = {
		buttons: {},
		classes: {},
		builder: "-source-",
		errMode: "alert",
		feature: [],
		search: [],
		selector: { cell: [], column: [], row: [] },
		internal: {},
		legacy: { ajax: null },
		pager: {},
		renderer: {
			pageButton: {},
			header: {}
		},
		order: {},
		type: { detect: [], search: {}, order: {} },
		_unique: 0,
		fnVersionCheck: m.fnVersionCheck,
		iApiIndex: 0,
		oJUIClasses: {},
		sVersion: m.version
	};
	h.extend(v, { afnFiltering: v.search, aTypes: v.type.detect, ofnSearch: v.type.search, oSort: v.type.order, afnSortData: v.order, aoFeatures: v.feature, oApi: v.internal, oStdClasses: v.classes, oPagination: v.pager });
	h.extend(m.ext.classes, {
		sTable: "dataTable",
		sNoFooter: "no-footer",
		sPageButton: "paginate_button",
		sPageButtonActive: "current",
		sPageButtonDisabled: "disabled",
		sStripeOdd: "odd",
		sStripeEven: "even",
		sRowEmpty: "dataTables_empty",
		sWrapper: "dataTables_wrapper",
		sFilter: "dataTables_filter",
		sInfo: "dataTables_info",
		sPaging: "dataTables_paginate paging_",
		sLength: "dataTables_length",
		sProcessing: "dataTables_processing",
		sSortAsc: "sorting_asc",
		sSortDesc: "sorting_desc",
		sSortable: "sorting",
		sSortableAsc: "sorting_asc_disabled",
		sSortableDesc: "sorting_desc_disabled",
		sSortableNone: "sorting_disabled",
		sSortColumn: "sorting_",
		sFilterInput: "",
		sLengthSelect: "",
		sScrollWrapper: "dataTables_scroll",
		sScrollHead: "dataTables_scrollHead",
		sScrollHeadInner: "dataTables_scrollHeadInner",
		sScrollBody: "dataTables_scrollBody",
		sScrollFoot: "dataTables_scrollFoot",
		sScrollFootInner: "dataTables_scrollFootInner",
		sHeaderTH: "",
		sFooterTH: "",
		sSortJUIAsc: "",
		sSortJUIDesc: "",
		sSortJUI: "",
		sSortJUIAscAllowed: "",
		sSortJUIDescAllowed: "",
		sSortJUIWrapper: "",
		sSortIcon: "",
		sJUIHeader: "",
		sJUIFooter: ""
	});
	var Ca = "",
		Ca = "",
		H = Ca + "ui-state-default",
		ia = Ca + "css_right ui-icon ui-icon-",
		Xb = Ca + "fg-toolbar ui-toolbar ui-widget-header ui-helper-clearfix";
	h.extend(m.ext.oJUIClasses,
		m.ext.classes, {
			sPageButton: "fg-button ui-button " + H,
			sPageButtonActive: "ui-state-disabled",
			sPageButtonDisabled: "ui-state-disabled",
			sPaging: "dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_",
			sSortAsc: H + " sorting_asc",
			sSortDesc: H + " sorting_desc",
			sSortable: H + " sorting",
			sSortableAsc: H + " sorting_asc_disabled",
			sSortableDesc: H + " sorting_desc_disabled",
			sSortableNone: H + " sorting_disabled",
			sSortJUIAsc: ia + "triangle-1-n",
			sSortJUIDesc: ia + "triangle-1-s",
			sSortJUI: ia + "carat-2-n-s",
			sSortJUIAscAllowed: ia + "carat-1-n",
			sSortJUIDescAllowed: ia + "carat-1-s",
			sSortJUIWrapper: "DataTables_sort_wrapper",
			sSortIcon: "DataTables_sort_icon",
			sScrollHead: "dataTables_scrollHead " + H,
			sScrollFoot: "dataTables_scrollFoot " + H,
			sHeaderTH: H,
			sFooterTH: H,
			sJUIHeader: Xb + " ui-corner-tl ui-corner-tr",
			sJUIFooter: Xb + " ui-corner-bl ui-corner-br"
		});
	var Mb = m.ext.pager;
	h.extend(Mb, {
		simple: function() { return ["previous", "next"] },
		full: function() { return ["first", "previous", "next", "last"] },
		numbers: function(a, b) {
			return [ya(a,
				b)]
		},
		simple_numbers: function(a, b) { return ["previous", ya(a, b), "next"] },
		full_numbers: function(a, b) { return ["first", "previous", ya(a, b), "next", "last"] },
		_numbers: ya,
		numbers_length: 7
	});
	h.extend(!0, m.ext.renderer, {
		pageButton: {
			_: function(a, b, c, d, e, f) {
				var g = a.oClasses,
					j = a.oLanguage.oPaginate,
					i = a.oLanguage.oAria.paginate || {},
					k, l, m = 0,
					p = function(b, d) {
						var o, r, u, s, v = function(b) { Ta(a, b.data.action, true) };
						o = 0;
						for(r = d.length; o < r; o++) {
							s = d[o];
							if(h.isArray(s)) { u = h("<" + (s.DT_el || "div") + "/>").appendTo(b);
								p(u, s) } else {
								k = null;
								l = "";
								switch(s) {
									case "ellipsis":
										b.append('<span class="ellipsis">&#x2026;</span>'); break;
									case "first":
										k = j.sFirst;
										l = s + (e > 0 ? "" : " " + g.sPageButtonDisabled); break;
									case "previous":
										k = j.sPrevious;
										l = s + (e > 0 ? "" : " " + g.sPageButtonDisabled); break;
									case "next":
										k = j.sNext;
										l = s + (e < f - 1 ? "" : " " + g.sPageButtonDisabled); break;
									case "last":
										k = j.sLast;
										l = s + (e < f - 1 ? "" : " " + g.sPageButtonDisabled); break;
									default:
										k = s + 1;
										l = e === s ? g.sPageButtonActive : "" }
								if(k !== null) {
									u = h("<a>", {
										"class": g.sPageButton + " " + l,
										"aria-controls": a.sTableId,
										"aria-label": i[s],
										"data-dt-idx": m,
										tabindex: a.iTabIndex,
										id: c === 0 && typeof s === "string" ? a.sTableId + "_" + s : null
									}).html(k).appendTo(b);
									Wa(u, { action: s }, v);
									m++
								}
							}
						}
					},
					r;
				try { r = h(b).find(I.activeElement).data("dt-idx") } catch(o) {} p(h(b).empty(), d);
				r && h(b).find("[data-dt-idx=" + r + "]").focus()
			}
		}
	});
	h.extend(m.ext.type.detect, [function(a, b) { var c = b.oLanguage.sDecimal; return Za(a, c) ? "num" + c : null }, function(a) {
		if(a && !(a instanceof Date) && (!ac.test(a) || !bc.test(a))) return null;
		var b = Date.parse(a);
		return null !== b && !isNaN(b) || M(a) ? "date" :
			null
	}, function(a, b) { var c = b.oLanguage.sDecimal; return Za(a, c, !0) ? "num-fmt" + c : null }, function(a, b) { var c = b.oLanguage.sDecimal; return Rb(a, c) ? "html-num" + c : null }, function(a, b) { var c = b.oLanguage.sDecimal; return Rb(a, c, !0) ? "html-num-fmt" + c : null }, function(a) { return M(a) || "string" === typeof a && -1 !== a.indexOf("<") ? "html" : null }]);
	h.extend(m.ext.type.search, {
		html: function(a) { return M(a) ? a : "string" === typeof a ? a.replace(Ob, " ").replace(Aa, "") : "" },
		string: function(a) {
			return M(a) ? a : "string" === typeof a ? a.replace(Ob,
				" ") : a
		}
	});
	var za = function(a, b, c, d) { if(0 !== a && (!a || "-" === a)) return -Infinity;
		b && (a = Qb(a, b));
		a.replace && (c && (a = a.replace(c, "")), d && (a = a.replace(d, ""))); return 1 * a };
	h.extend(v.type.order, {
		"date-pre": function(a) { return Date.parse(a) || 0 },
		"html-pre": function(a) { return M(a) ? "" : a.replace ? a.replace(/<.*?>/g, "").toLowerCase() : a + "" },
		"string-pre": function(a) { return M(a) ? "" : "string" === typeof a ? a.toLowerCase() : !a.toString ? "" : a.toString() },
		"string-asc": function(a, b) { return a < b ? -1 : a > b ? 1 : 0 },
		"string-desc": function(a,
			b) { return a < b ? 1 : a > b ? -1 : 0 }
	});
	db("");
	h.extend(!0, m.ext.renderer, {
		header: {
			_: function(a, b, c, d) { h(a.nTable).on("order.dt.DT", function(e, f, g, h) { if(a === f) { e = c.idx;
						b.removeClass(c.sSortingClass + " " + d.sSortAsc + " " + d.sSortDesc).addClass(h[e] == "asc" ? d.sSortAsc : h[e] == "desc" ? d.sSortDesc : c.sSortingClass) } }) },
			jqueryui: function(a, b, c, d) {
				h("<div/>").addClass(d.sSortJUIWrapper).append(b.contents()).append(h("<span/>").addClass(d.sSortIcon + " " + c.sSortingClassJUI)).appendTo(b);
				h(a.nTable).on("order.dt.DT", function(e,
					f, g, h) { if(a === f) { e = c.idx;
						b.removeClass(d.sSortAsc + " " + d.sSortDesc).addClass(h[e] == "asc" ? d.sSortAsc : h[e] == "desc" ? d.sSortDesc : c.sSortingClass);
						b.find("span." + d.sSortIcon).removeClass(d.sSortJUIAsc + " " + d.sSortJUIDesc + " " + d.sSortJUI + " " + d.sSortJUIAscAllowed + " " + d.sSortJUIDescAllowed).addClass(h[e] == "asc" ? d.sSortJUIAsc : h[e] == "desc" ? d.sSortJUIDesc : c.sSortingClassJUI) } })
			}
		}
	});
	var Yb = function(a) { return "string" === typeof a ? a.replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;") : a };
	m.render = {
		number: function(a,
			b, c, d, e) { return { display: function(f) { if("number" !== typeof f && "string" !== typeof f) return f; var g = 0 > f ? "-" : "",
						h = parseFloat(f); if(isNaN(h)) return Yb(f);
					f = Math.abs(h);
					h = parseInt(f, 10);
					f = c ? b + (f - h).toFixed(c).substring(2) : ""; return g + (d || "") + h.toString().replace(/\B(?=(\d{3})+(?!\d))/g, a) + f + (e || "") } } },
		text: function() { return { display: Yb } }
	};
	h.extend(m.ext.internal, {
		_fnExternApiFunc: Nb,
		_fnBuildAjax: ra,
		_fnAjaxUpdate: lb,
		_fnAjaxParameters: ub,
		_fnAjaxUpdateDraw: vb,
		_fnAjaxDataSrc: sa,
		_fnAddColumn: Ea,
		_fnColumnOptions: ja,
		_fnAdjustColumnSizing: Y,
		_fnVisibleToColumnIndex: Z,
		_fnColumnIndexToVisible: $,
		_fnVisbleColumns: aa,
		_fnGetColumns: la,
		_fnColumnTypes: Ga,
		_fnApplyColumnDefs: ib,
		_fnHungarianMap: X,
		_fnCamelToHungarian: K,
		_fnLanguageCompat: Da,
		_fnBrowserDetect: gb,
		_fnAddData: N,
		_fnAddTr: ma,
		_fnNodeToDataIndex: function(a, b) { return b._DT_RowIndex !== k ? b._DT_RowIndex : null },
		_fnNodeToColumnIndex: function(a, b, c) { return h.inArray(c, a.aoData[b].anCells) },
		_fnGetCellData: B,
		_fnSetCellData: jb,
		_fnSplitObjNotation: Ja,
		_fnGetObjectDataFn: Q,
		_fnSetObjectDataFn: R,
		_fnGetDataMaster: Ka,
		_fnClearTable: na,
		_fnDeleteIndex: oa,
		_fnInvalidate: ca,
		_fnGetRowElements: Ia,
		_fnCreateTr: Ha,
		_fnBuildHead: kb,
		_fnDrawHead: ea,
		_fnDraw: O,
		_fnReDraw: T,
		_fnAddOptionsHtml: nb,
		_fnDetectHeader: da,
		_fnGetUniqueThs: qa,
		_fnFeatureHtmlFilter: pb,
		_fnFilterComplete: fa,
		_fnFilterCustom: yb,
		_fnFilterColumn: xb,
		_fnFilter: wb,
		_fnFilterCreateSearch: Pa,
		_fnEscapeRegex: Qa,
		_fnFilterData: zb,
		_fnFeatureHtmlInfo: sb,
		_fnUpdateInfo: Cb,
		_fnInfoMacros: Db,
		_fnInitialise: ga,
		_fnInitComplete: ta,
		_fnLengthChange: Ra,
		_fnFeatureHtmlLength: ob,
		_fnFeatureHtmlPaginate: tb,
		_fnPageChange: Ta,
		_fnFeatureHtmlProcessing: qb,
		_fnProcessingDisplay: C,
		_fnFeatureHtmlTable: rb,
		_fnScrollDraw: ka,
		_fnApplyToChildren: J,
		_fnCalculateColumnWidths: Fa,
		_fnThrottle: Oa,
		_fnConvertToWidth: Fb,
		_fnGetWidestNode: Gb,
		_fnGetMaxLenString: Hb,
		_fnStringToCss: x,
		_fnSortFlatten: V,
		_fnSort: mb,
		_fnSortAria: Jb,
		_fnSortListener: Va,
		_fnSortAttachListener: Ma,
		_fnSortingClasses: va,
		_fnSortData: Ib,
		_fnSaveState: wa,
		_fnLoadState: Kb,
		_fnSettingsFromNode: xa,
		_fnLog: L,
		_fnMap: E,
		_fnBindAction: Wa,
		_fnCallbackReg: z,
		_fnCallbackFire: u,
		_fnLengthOverflow: Sa,
		_fnRenderer: Na,
		_fnDataSource: y,
		_fnRowAttributes: La,
		_fnCalculateEnd: function() {}
	});
	h.fn.dataTable = m;
	m.$ = h;
	h.fn.dataTableSettings = m.settings;
	h.fn.dataTableExt = m.ext;
	h.fn.DataTable = function(a) { return h(this).dataTable(a).api() };
	h.each(m, function(a, b) { h.fn.DataTable[a] = b });
	return h.fn.dataTable
});

// Datatables Bootstrap Pagination Integration
jQuery.fn.dataTableExt.oApi.fnPagingInfo = function(e) { return { iStart: e._iDisplayStart, iEnd: e.fnDisplayEnd(), iLength: e._iDisplayLength, iTotal: e.fnRecordsTotal(), iFilteredTotal: e.fnRecordsDisplay(), iPage: Math.ceil(e._iDisplayStart / e._iDisplayLength), iTotalPages: Math.ceil(e.fnRecordsDisplay() / e._iDisplayLength) } }, jQuery.extend(jQuery.fn.dataTableExt.oPagination, { bootstrap: { fnInit: function(e, t, n) { var i = e.oLanguage.oPaginate,
				r = function(t) { t.preventDefault(), e.oApi._fnPageChange(e, t.data.action) && n(e) };
			jQuery(t).append('<ul class="pagination pagination-sm remove-margin"><li class="prev disabled"><a href="javascript:void(0)"><i class="fa fa-chevron-left"></i> ' + i.sPrevious + "</a></li>" + '<li class="next disabled"><a href="javascript:void(0)">' + i.sNext + ' <i class="fa fa-chevron-right"></i></a></li>' + "</ul>"); var o = jQuery("a", t);
			jQuery(o[0]).bind("click.DT", { action: "previous" }, r), jQuery(o[1]).bind("click.DT", { action: "next" }, r) }, fnUpdate: function(e, t) { var n, i, r, o, a, s = 5,
				l = e.oInstance.fnPagingInfo(),
				c = e.aanFeatures.p,
				u = Math.floor(s / 2); for(l.iTotalPages < s ? (o = 1, a = l.iTotalPages) : l.iPage <= u ? (o = 1, a = s) : l.iPage >= l.iTotalPages - u ? (o = l.iTotalPages - s + 1, a = l.iTotalPages) : (o = l.iPage - u + 1, a = o + s - 1), n = 0, iLen = c.length; iLen > n; n++) { for(jQuery("li:gt(0)", c[n]).filter(":not(:last)").remove(), i = o; a >= i; i++) r = i === l.iPage + 1 ? 'class="active"' : "", jQuery("<li " + r + '><a href="javascript:void(0)">' + i + "</a></li>").insertBefore(jQuery("li:last", c[n])[0]).bind("click", function(n) { n.preventDefault(), e._iDisplayStart = (parseInt(jQuery("a", this).text(), 10) - 1) * l.iLength, t(e) });
				0 === l.iPage ? jQuery("li:first", c[n]).addClass("disabled") : jQuery("li:first", c[n]).removeClass("disabled"), l.iPage === l.iTotalPages - 1 || 0 === l.iTotalPages ? jQuery("li:last", c[n]).addClass("disabled") : jQuery("li:last", c[n]).removeClass("disabled") } } } });

//! moment.js
//! version : 2.14.1
//! authors : Tim Wood, Iskren Chernev, Moment.js contributors
//! license : MIT
//! momentjs.com
! function(e, t) { "object" == typeof exports && "undefined" != typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define(t) : e.moment = t() }(this, function() {
	"use strict";

	function e() { return fs.apply(null, arguments) }

	function t(e) { fs = e }

	function n(e) { return e instanceof Array || "[object Array]" === Object.prototype.toString.call(e) }

	function s(e) { return "[object Object]" === Object.prototype.toString.call(e) }

	function i(e) { var t; for(t in e) return !1; return !0 }

	function r(e) { return e instanceof Date || "[object Date]" === Object.prototype.toString.call(e) }

	function a(e, t) { var n, s = []; for(n = 0; n < e.length; ++n) s.push(t(e[n], n)); return s }

	function o(e, t) { return Object.prototype.hasOwnProperty.call(e, t) }

	function u(e, t) { for(var n in t) o(t, n) && (e[n] = t[n]); return o(t, "toString") && (e.toString = t.toString), o(t, "valueOf") && (e.valueOf = t.valueOf), e }

	function d(e, t, n, s) { return yt(e, t, n, s, !0).utc() }

	function l() { return { empty: !1, unusedTokens: [], unusedInput: [], overflow: -2, charsLeftOver: 0, nullInput: !1, invalidMonth: null, invalidFormat: !1, userInvalidated: !1, iso: !1, parsedDateParts: [], meridiem: null } }

	function h(e) { return null == e._pf && (e._pf = l()), e._pf }

	function c(e) { if(null == e._isValid) { var t = h(e),
				n = ms.call(t.parsedDateParts, function(e) { return null != e });
			e._isValid = !isNaN(e._d.getTime()) && t.overflow < 0 && !t.empty && !t.invalidMonth && !t.invalidWeekday && !t.nullInput && !t.invalidFormat && !t.userInvalidated && (!t.meridiem || t.meridiem && n), e._strict && (e._isValid = e._isValid && 0 === t.charsLeftOver && 0 === t.unusedTokens.length && void 0 === t.bigHour) } return e._isValid }

	function f(e) { var t = d(NaN); return null != e ? u(h(t), e) : h(t).userInvalidated = !0, t }

	function m(e) { return void 0 === e }

	function _(e, t) { var n, s, i; if(m(t._isAMomentObject) || (e._isAMomentObject = t._isAMomentObject), m(t._i) || (e._i = t._i), m(t._f) || (e._f = t._f), m(t._l) || (e._l = t._l), m(t._strict) || (e._strict = t._strict), m(t._tzm) || (e._tzm = t._tzm), m(t._isUTC) || (e._isUTC = t._isUTC), m(t._offset) || (e._offset = t._offset), m(t._pf) || (e._pf = h(t)), m(t._locale) || (e._locale = t._locale), _s.length > 0)
			for(n in _s) s = _s[n], i = t[s], m(i) || (e[s] = i); return e }

	function y(t) { _(this, t), this._d = new Date(null != t._d ? t._d.getTime() : NaN), ys === !1 && (ys = !0, e.updateOffset(this), ys = !1) }

	function g(e) { return e instanceof y || null != e && null != e._isAMomentObject }

	function p(e) { return 0 > e ? Math.ceil(e) || 0 : Math.floor(e) }

	function w(e) { var t = +e,
			n = 0; return 0 !== t && isFinite(t) && (n = p(t)), n }

	function v(e, t, n) { var s, i = Math.min(e.length, t.length),
			r = Math.abs(e.length - t.length),
			a = 0; for(s = 0; i > s; s++)(n && e[s] !== t[s] || !n && w(e[s]) !== w(t[s])) && a++; return a + r }

	function M(t) { e.suppressDeprecationWarnings === !1 && "undefined" != typeof console && console.warn && console.warn("Deprecation warning: " + t) }

	function S(t, n) { var s = !0; return u(function() { return null != e.deprecationHandler && e.deprecationHandler(null, t), s && (M(t + "\nArguments: " + Array.prototype.slice.call(arguments).join(", ") + "\n" + (new Error).stack), s = !1), n.apply(this, arguments) }, n) }

	function k(t, n) { null != e.deprecationHandler && e.deprecationHandler(t, n), gs[t] || (M(n), gs[t] = !0) }

	function D(e) { return e instanceof Function || "[object Function]" === Object.prototype.toString.call(e) }

	function Y(e) { var t, n; for(n in e) t = e[n], D(t) ? this[n] = t : this["_" + n] = t;
		this._config = e, this._ordinalParseLenient = new RegExp(this._ordinalParse.source + "|" + /\d{1,2}/.source) }

	function x(e, t) { var n, i = u({}, e); for(n in t) o(t, n) && (s(e[n]) && s(t[n]) ? (i[n] = {}, u(i[n], e[n]), u(i[n], t[n])) : null != t[n] ? i[n] = t[n] : delete i[n]); for(n in e) o(e, n) && !o(t, n) && s(e[n]) && (i[n] = u({}, i[n])); return i }

	function O(e) { null != e && this.set(e) }

	function T(e, t, n) { var s = this._calendar[e] || this._calendar.sameElse; return D(s) ? s.call(t, n) : s }

	function b(e) { var t = this._longDateFormat[e],
			n = this._longDateFormat[e.toUpperCase()]; return t || !n ? t : (this._longDateFormat[e] = n.replace(/MMMM|MM|DD|dddd/g, function(e) { return e.slice(1) }), this._longDateFormat[e]) }

	function P() { return this._invalidDate }

	function W(e) { return this._ordinal.replace("%d", e) }

	function R(e, t, n, s) { var i = this._relativeTime[n]; return D(i) ? i(e, t, n, s) : i.replace(/%d/i, e) }

	function U(e, t) { var n = this._relativeTime[e > 0 ? "future" : "past"]; return D(n) ? n(t) : n.replace(/%s/i, t) }

	function C(e, t) { var n = e.toLowerCase();
		xs[n] = xs[n + "s"] = xs[t] = e }

	function F(e) { return "string" == typeof e ? xs[e] || xs[e.toLowerCase()] : void 0 }

	function H(e) { var t, n, s = {}; for(n in e) o(e, n) && (t = F(n), t && (s[t] = e[n])); return s }

	function L(e, t) { Os[e] = t }

	function G(e) { var t = []; for(var n in e) t.push({ unit: n, priority: Os[n] }); return t.sort(function(e, t) { return e.priority - t.priority }), t }

	function V(t, n) { return function(s) { return null != s ? (A(this, t, s), e.updateOffset(this, n), this) : j(this, t) } }

	function j(e, t) { return e.isValid() ? e._d["get" + (e._isUTC ? "UTC" : "") + t]() : NaN }

	function A(e, t, n) { e.isValid() && e._d["set" + (e._isUTC ? "UTC" : "") + t](n) }

	function E(e) { return e = F(e), D(this[e]) ? this[e]() : this }

	function N(e, t) { if("object" == typeof e) { e = H(e); for(var n = G(e), s = 0; s < n.length; s++) this[n[s].unit](e[n[s].unit]) } else if(e = F(e), D(this[e])) return this[e](t); return this }

	function I(e, t, n) { var s = "" + Math.abs(e),
			i = t - s.length,
			r = e >= 0; return(r ? n ? "+" : "" : "-") + Math.pow(10, Math.max(0, i)).toString().substr(1) + s }

	function z(e, t, n, s) { var i = s; "string" == typeof s && (i = function() { return this[s]() }), e && (Ws[e] = i), t && (Ws[t[0]] = function() { return I(i.apply(this, arguments), t[1], t[2]) }), n && (Ws[n] = function() { return this.localeData().ordinal(i.apply(this, arguments), e) }) }

	function Z(e) { return e.match(/\[[\s\S]/) ? e.replace(/^\[|\]$/g, "") : e.replace(/\\/g, "") }

	function q(e) { var t, n, s = e.match(Ts); for(t = 0, n = s.length; n > t; t++) Ws[s[t]] ? s[t] = Ws[s[t]] : s[t] = Z(s[t]); return function(t) { var i, r = ""; for(i = 0; n > i; i++) r += s[i] instanceof Function ? s[i].call(t, e) : s[i]; return r } }

	function $(e, t) { return e.isValid() ? (t = B(t, e.localeData()), Ps[t] = Ps[t] || q(t), Ps[t](e)) : e.localeData().invalidDate() }

	function B(e, t) {
		function n(e) { return t.longDateFormat(e) || e } var s = 5; for(bs.lastIndex = 0; s >= 0 && bs.test(e);) e = e.replace(bs, n), bs.lastIndex = 0, s -= 1; return e }

	function J(e, t, n) { Bs[e] = D(t) ? t : function(e, s) { return e && n ? n : t } }

	function Q(e, t) { return o(Bs, e) ? Bs[e](t._strict, t._locale) : new RegExp(X(e)) }

	function X(e) { return K(e.replace("\\", "").replace(/\\(\[)|\\(\])|\[([^\]\[]*)\]|\\(.)/g, function(e, t, n, s, i) { return t || n || s || i })) }

	function K(e) { return e.replace(/[-\/\\^$*+?.()|[\]{}]/g, "\\$&") }

	function ee(e, t) { var n, s = t; for("string" == typeof e && (e = [e]), "number" == typeof t && (s = function(e, n) { n[t] = w(e) }), n = 0; n < e.length; n++) Js[e[n]] = s }

	function te(e, t) { ee(e, function(e, n, s, i) { s._w = s._w || {}, t(e, s._w, s, i) }) }

	function ne(e, t, n) { null != t && o(Js, e) && Js[e](t, n._a, n, e) }

	function se(e, t) { return new Date(Date.UTC(e, t + 1, 0)).getUTCDate() }

	function ie(e, t) { return n(this._months) ? this._months[e.month()] : this._months[(this._months.isFormat || ai).test(t) ? "format" : "standalone"][e.month()] }

	function re(e, t) { return n(this._monthsShort) ? this._monthsShort[e.month()] : this._monthsShort[ai.test(t) ? "format" : "standalone"][e.month()] }

	function ae(e, t, n) { var s, i, r, a = e.toLocaleLowerCase(); if(!this._monthsParse)
			for(this._monthsParse = [], this._longMonthsParse = [], this._shortMonthsParse = [], s = 0; 12 > s; ++s) r = d([2e3, s]), this._shortMonthsParse[s] = this.monthsShort(r, "").toLocaleLowerCase(), this._longMonthsParse[s] = this.months(r, "").toLocaleLowerCase(); return n ? "MMM" === t ? (i = ws.call(this._shortMonthsParse, a), -1 !== i ? i : null) : (i = ws.call(this._longMonthsParse, a), -1 !== i ? i : null) : "MMM" === t ? (i = ws.call(this._shortMonthsParse, a), -1 !== i ? i : (i = ws.call(this._longMonthsParse, a), -1 !== i ? i : null)) : (i = ws.call(this._longMonthsParse, a), -1 !== i ? i : (i = ws.call(this._shortMonthsParse, a), -1 !== i ? i : null)) }

	function oe(e, t, n) { var s, i, r; if(this._monthsParseExact) return ae.call(this, e, t, n); for(this._monthsParse || (this._monthsParse = [], this._longMonthsParse = [], this._shortMonthsParse = []), s = 0; 12 > s; s++) { if(i = d([2e3, s]), n && !this._longMonthsParse[s] && (this._longMonthsParse[s] = new RegExp("^" + this.months(i, "").replace(".", "") + "$", "i"), this._shortMonthsParse[s] = new RegExp("^" + this.monthsShort(i, "").replace(".", "") + "$", "i")), n || this._monthsParse[s] || (r = "^" + this.months(i, "") + "|^" + this.monthsShort(i, ""), this._monthsParse[s] = new RegExp(r.replace(".", ""), "i")), n && "MMMM" === t && this._longMonthsParse[s].test(e)) return s; if(n && "MMM" === t && this._shortMonthsParse[s].test(e)) return s; if(!n && this._monthsParse[s].test(e)) return s } }

	function ue(e, t) { var n; if(!e.isValid()) return e; if("string" == typeof t)
			if(/^\d+$/.test(t)) t = w(t);
			else if(t = e.localeData().monthsParse(t), "number" != typeof t) return e; return n = Math.min(e.date(), se(e.year(), t)), e._d["set" + (e._isUTC ? "UTC" : "") + "Month"](t, n), e }

	function de(t) { return null != t ? (ue(this, t), e.updateOffset(this, !0), this) : j(this, "Month") }

	function le() { return se(this.year(), this.month()) }

	function he(e) { return this._monthsParseExact ? (o(this, "_monthsRegex") || fe.call(this), e ? this._monthsShortStrictRegex : this._monthsShortRegex) : (o(this, "_monthsShortRegex") || (this._monthsShortRegex = di), this._monthsShortStrictRegex && e ? this._monthsShortStrictRegex : this._monthsShortRegex) }

	function ce(e) { return this._monthsParseExact ? (o(this, "_monthsRegex") || fe.call(this), e ? this._monthsStrictRegex : this._monthsRegex) : (o(this, "_monthsRegex") || (this._monthsRegex = li), this._monthsStrictRegex && e ? this._monthsStrictRegex : this._monthsRegex) }

	function fe() {
		function e(e, t) { return t.length - e.length } var t, n, s = [],
			i = [],
			r = []; for(t = 0; 12 > t; t++) n = d([2e3, t]), s.push(this.monthsShort(n, "")), i.push(this.months(n, "")), r.push(this.months(n, "")), r.push(this.monthsShort(n, "")); for(s.sort(e), i.sort(e), r.sort(e), t = 0; 12 > t; t++) s[t] = K(s[t]), i[t] = K(i[t]); for(t = 0; 24 > t; t++) r[t] = K(r[t]);
		this._monthsRegex = new RegExp("^(" + r.join("|") + ")", "i"), this._monthsShortRegex = this._monthsRegex, this._monthsStrictRegex = new RegExp("^(" + i.join("|") + ")", "i"), this._monthsShortStrictRegex = new RegExp("^(" + s.join("|") + ")", "i") }

	function me(e) { return _e(e) ? 366 : 365 }

	function _e(e) { return e % 4 === 0 && e % 100 !== 0 || e % 400 === 0 }

	function ye() { return _e(this.year()) }

	function ge(e, t, n, s, i, r, a) { var o = new Date(e, t, n, s, i, r, a); return 100 > e && e >= 0 && isFinite(o.getFullYear()) && o.setFullYear(e), o }

	function pe(e) { var t = new Date(Date.UTC.apply(null, arguments)); return 100 > e && e >= 0 && isFinite(t.getUTCFullYear()) && t.setUTCFullYear(e), t }

	function we(e, t, n) { var s = 7 + t - n,
			i = (7 + pe(e, 0, s).getUTCDay() - t) % 7; return -i + s - 1 }

	function ve(e, t, n, s, i) { var r, a, o = (7 + n - s) % 7,
			u = we(e, s, i),
			d = 1 + 7 * (t - 1) + o + u; return 0 >= d ? (r = e - 1, a = me(r) + d) : d > me(e) ? (r = e + 1, a = d - me(e)) : (r = e, a = d), { year: r, dayOfYear: a } }

	function Me(e, t, n) { var s, i, r = we(e.year(), t, n),
			a = Math.floor((e.dayOfYear() - r - 1) / 7) + 1; return 1 > a ? (i = e.year() - 1, s = a + Se(i, t, n)) : a > Se(e.year(), t, n) ? (s = a - Se(e.year(), t, n), i = e.year() + 1) : (i = e.year(), s = a), { week: s, year: i } }

	function Se(e, t, n) { var s = we(e, t, n),
			i = we(e + 1, t, n); return(me(e) - s + i) / 7 }

	function ke(e) { return Me(e, this._week.dow, this._week.doy).week }

	function De() { return this._week.dow }

	function Ye() { return this._week.doy }

	function xe(e) { var t = this.localeData().week(this); return null == e ? t : this.add(7 * (e - t), "d") }

	function Oe(e) { var t = Me(this, 1, 4).week; return null == e ? t : this.add(7 * (e - t), "d") }

	function Te(e, t) { return "string" != typeof e ? e : isNaN(e) ? (e = t.weekdaysParse(e), "number" == typeof e ? e : null) : parseInt(e, 10) }

	function be(e, t) { return "string" == typeof e ? t.weekdaysParse(e) % 7 || 7 : isNaN(e) ? null : e }

	function Pe(e, t) { return n(this._weekdays) ? this._weekdays[e.day()] : this._weekdays[this._weekdays.isFormat.test(t) ? "format" : "standalone"][e.day()] }

	function We(e) { return this._weekdaysShort[e.day()] }

	function Re(e) { return this._weekdaysMin[e.day()] }

	function Ue(e, t, n) { var s, i, r, a = e.toLocaleLowerCase(); if(!this._weekdaysParse)
			for(this._weekdaysParse = [], this._shortWeekdaysParse = [], this._minWeekdaysParse = [], s = 0; 7 > s; ++s) r = d([2e3, 1]).day(s), this._minWeekdaysParse[s] = this.weekdaysMin(r, "").toLocaleLowerCase(), this._shortWeekdaysParse[s] = this.weekdaysShort(r, "").toLocaleLowerCase(), this._weekdaysParse[s] = this.weekdays(r, "").toLocaleLowerCase(); return n ? "dddd" === t ? (i = ws.call(this._weekdaysParse, a), -1 !== i ? i : null) : "ddd" === t ? (i = ws.call(this._shortWeekdaysParse, a), -1 !== i ? i : null) : (i = ws.call(this._minWeekdaysParse, a), -1 !== i ? i : null) : "dddd" === t ? (i = ws.call(this._weekdaysParse, a), -1 !== i ? i : (i = ws.call(this._shortWeekdaysParse, a), -1 !== i ? i : (i = ws.call(this._minWeekdaysParse, a), -1 !== i ? i : null))) : "ddd" === t ? (i = ws.call(this._shortWeekdaysParse, a), -1 !== i ? i : (i = ws.call(this._weekdaysParse, a), -1 !== i ? i : (i = ws.call(this._minWeekdaysParse, a), -1 !== i ? i : null))) : (i = ws.call(this._minWeekdaysParse, a), -1 !== i ? i : (i = ws.call(this._weekdaysParse, a), -1 !== i ? i : (i = ws.call(this._shortWeekdaysParse, a), -1 !== i ? i : null))) }

	function Ce(e, t, n) { var s, i, r; if(this._weekdaysParseExact) return Ue.call(this, e, t, n); for(this._weekdaysParse || (this._weekdaysParse = [], this._minWeekdaysParse = [], this._shortWeekdaysParse = [], this._fullWeekdaysParse = []), s = 0; 7 > s; s++) { if(i = d([2e3, 1]).day(s), n && !this._fullWeekdaysParse[s] && (this._fullWeekdaysParse[s] = new RegExp("^" + this.weekdays(i, "").replace(".", ".?") + "$", "i"), this._shortWeekdaysParse[s] = new RegExp("^" + this.weekdaysShort(i, "").replace(".", ".?") + "$", "i"), this._minWeekdaysParse[s] = new RegExp("^" + this.weekdaysMin(i, "").replace(".", ".?") + "$", "i")), this._weekdaysParse[s] || (r = "^" + this.weekdays(i, "") + "|^" + this.weekdaysShort(i, "") + "|^" + this.weekdaysMin(i, ""), this._weekdaysParse[s] = new RegExp(r.replace(".", ""), "i")), n && "dddd" === t && this._fullWeekdaysParse[s].test(e)) return s; if(n && "ddd" === t && this._shortWeekdaysParse[s].test(e)) return s; if(n && "dd" === t && this._minWeekdaysParse[s].test(e)) return s; if(!n && this._weekdaysParse[s].test(e)) return s } }

	function Fe(e) { if(!this.isValid()) return null != e ? this : NaN; var t = this._isUTC ? this._d.getUTCDay() : this._d.getDay(); return null != e ? (e = Te(e, this.localeData()), this.add(e - t, "d")) : t }

	function He(e) { if(!this.isValid()) return null != e ? this : NaN; var t = (this.day() + 7 - this.localeData()._week.dow) % 7; return null == e ? t : this.add(e - t, "d") }

	function Le(e) { if(!this.isValid()) return null != e ? this : NaN; if(null != e) { var t = be(e, this.localeData()); return this.day(this.day() % 7 ? t : t - 7) } return this.day() || 7 }

	function Ge(e) { return this._weekdaysParseExact ? (o(this, "_weekdaysRegex") || Ae.call(this), e ? this._weekdaysStrictRegex : this._weekdaysRegex) : (o(this, "_weekdaysRegex") || (this._weekdaysRegex = yi), this._weekdaysStrictRegex && e ? this._weekdaysStrictRegex : this._weekdaysRegex) }

	function Ve(e) { return this._weekdaysParseExact ? (o(this, "_weekdaysRegex") || Ae.call(this), e ? this._weekdaysShortStrictRegex : this._weekdaysShortRegex) : (o(this, "_weekdaysShortRegex") || (this._weekdaysShortRegex = gi), this._weekdaysShortStrictRegex && e ? this._weekdaysShortStrictRegex : this._weekdaysShortRegex) }

	function je(e) { return this._weekdaysParseExact ? (o(this, "_weekdaysRegex") || Ae.call(this), e ? this._weekdaysMinStrictRegex : this._weekdaysMinRegex) : (o(this, "_weekdaysMinRegex") || (this._weekdaysMinRegex = pi), this._weekdaysMinStrictRegex && e ? this._weekdaysMinStrictRegex : this._weekdaysMinRegex) }

	function Ae() {
		function e(e, t) { return t.length - e.length } var t, n, s, i, r, a = [],
			o = [],
			u = [],
			l = []; for(t = 0; 7 > t; t++) n = d([2e3, 1]).day(t), s = this.weekdaysMin(n, ""), i = this.weekdaysShort(n, ""), r = this.weekdays(n, ""), a.push(s), o.push(i), u.push(r), l.push(s), l.push(i), l.push(r); for(a.sort(e), o.sort(e), u.sort(e), l.sort(e), t = 0; 7 > t; t++) o[t] = K(o[t]), u[t] = K(u[t]), l[t] = K(l[t]);
		this._weekdaysRegex = new RegExp("^(" + l.join("|") + ")", "i"), this._weekdaysShortRegex = this._weekdaysRegex, this._weekdaysMinRegex = this._weekdaysRegex, this._weekdaysStrictRegex = new RegExp("^(" + u.join("|") + ")", "i"), this._weekdaysShortStrictRegex = new RegExp("^(" + o.join("|") + ")", "i"), this._weekdaysMinStrictRegex = new RegExp("^(" + a.join("|") + ")", "i") }

	function Ee() { return this.hours() % 12 || 12 }

	function Ne() { return this.hours() || 24 }

	function Ie(e, t) { z(e, 0, 0, function() { return this.localeData().meridiem(this.hours(), this.minutes(), t) }) }

	function ze(e, t) { return t._meridiemParse }

	function Ze(e) { return "p" === (e + "").toLowerCase().charAt(0) }

	function qe(e, t, n) { return e > 11 ? n ? "pm" : "PM" : n ? "am" : "AM" }

	function $e(e) { return e ? e.toLowerCase().replace("_", "-") : e }

	function Be(e) { for(var t, n, s, i, r = 0; r < e.length;) { for(i = $e(e[r]).split("-"), t = i.length, n = $e(e[r + 1]), n = n ? n.split("-") : null; t > 0;) { if(s = Je(i.slice(0, t).join("-"))) return s; if(n && n.length >= t && v(i, n, !0) >= t - 1) break;
				t-- } r++ } return null }

	function Je(e) { var t = null; if(!ki[e] && "undefined" != typeof module && module && module.exports) try { t = wi._abbr, require("./locale/" + e), Qe(t) } catch(n) {}
		return ki[e] }

	function Qe(e, t) { var n; return e && (n = m(t) ? et(e) : Xe(e, t), n && (wi = n)), wi._abbr }

	function Xe(e, t) { if(null !== t) { var n = Si; return t.abbr = e, null != ki[e] ? (k("defineLocaleOverride", "use moment.updateLocale(localeName, config) to change an existing locale. moment.defineLocale(localeName, config) should only be used for creating a new locale See http://momentjs.com/guides/#/warnings/define-locale/ for more info."), n = ki[e]._config) : null != t.parentLocale && (null != ki[t.parentLocale] ? n = ki[t.parentLocale]._config : k("parentLocaleUndefined", "specified parentLocale is not defined yet. See http://momentjs.com/guides/#/warnings/parent-locale/")), ki[e] = new O(x(n, t)), Qe(e), ki[e] } return delete ki[e], null }

	function Ke(e, t) { if(null != t) { var n, s = Si;
			null != ki[e] && (s = ki[e]._config), t = x(s, t), n = new O(t), n.parentLocale = ki[e], ki[e] = n, Qe(e) } else null != ki[e] && (null != ki[e].parentLocale ? ki[e] = ki[e].parentLocale : null != ki[e] && delete ki[e]); return ki[e] }

	function et(e) { var t; if(e && e._locale && e._locale._abbr && (e = e._locale._abbr), !e) return wi; if(!n(e)) { if(t = Je(e)) return t;
			e = [e] } return Be(e) }

	function tt() { return ps(ki) }

	function nt(e) { var t, n = e._a; return n && -2 === h(e).overflow && (t = n[Xs] < 0 || n[Xs] > 11 ? Xs : n[Ks] < 1 || n[Ks] > se(n[Qs], n[Xs]) ? Ks : n[ei] < 0 || n[ei] > 24 || 24 === n[ei] && (0 !== n[ti] || 0 !== n[ni] || 0 !== n[si]) ? ei : n[ti] < 0 || n[ti] > 59 ? ti : n[ni] < 0 || n[ni] > 59 ? ni : n[si] < 0 || n[si] > 999 ? si : -1, h(e)._overflowDayOfYear && (Qs > t || t > Ks) && (t = Ks), h(e)._overflowWeeks && -1 === t && (t = ii), h(e)._overflowWeekday && -1 === t && (t = ri), h(e).overflow = t), e }

	function st(e) { var t, n, s, i, r, a, o = e._i,
			u = Di.exec(o) || Yi.exec(o); if(u) { for(h(e).iso = !0, t = 0, n = Oi.length; n > t; t++)
				if(Oi[t][1].exec(u[1])) { i = Oi[t][0], s = Oi[t][2] !== !1; break }
			if(null == i) return void(e._isValid = !1); if(u[3]) { for(t = 0, n = Ti.length; n > t; t++)
					if(Ti[t][1].exec(u[3])) { r = (u[2] || " ") + Ti[t][0]; break }
				if(null == r) return void(e._isValid = !1) } if(!s && null != r) return void(e._isValid = !1); if(u[4]) { if(!xi.exec(u[4])) return void(e._isValid = !1);
				a = "Z" } e._f = i + (r || "") + (a || ""), dt(e) } else e._isValid = !1 }

	function it(t) { var n = bi.exec(t._i); return null !== n ? void(t._d = new Date(+n[1])) : (st(t), void(t._isValid === !1 && (delete t._isValid, e.createFromInputFallback(t)))) }

	function rt(e, t, n) { return null != e ? e : null != t ? t : n }

	function at(t) { var n = new Date(e.now()); return t._useUTC ? [n.getUTCFullYear(), n.getUTCMonth(), n.getUTCDate()] : [n.getFullYear(), n.getMonth(), n.getDate()] }

	function ot(e) { var t, n, s, i, r = []; if(!e._d) { for(s = at(e), e._w && null == e._a[Ks] && null == e._a[Xs] && ut(e), e._dayOfYear && (i = rt(e._a[Qs], s[Qs]), e._dayOfYear > me(i) && (h(e)._overflowDayOfYear = !0), n = pe(i, 0, e._dayOfYear), e._a[Xs] = n.getUTCMonth(), e._a[Ks] = n.getUTCDate()), t = 0; 3 > t && null == e._a[t]; ++t) e._a[t] = r[t] = s[t]; for(; 7 > t; t++) e._a[t] = r[t] = null == e._a[t] ? 2 === t ? 1 : 0 : e._a[t];
			24 === e._a[ei] && 0 === e._a[ti] && 0 === e._a[ni] && 0 === e._a[si] && (e._nextDay = !0, e._a[ei] = 0), e._d = (e._useUTC ? pe : ge).apply(null, r), null != e._tzm && e._d.setUTCMinutes(e._d.getUTCMinutes() - e._tzm), e._nextDay && (e._a[ei] = 24) } }

	function ut(e) { var t, n, s, i, r, a, o, u;
		t = e._w, null != t.GG || null != t.W || null != t.E ? (r = 1, a = 4, n = rt(t.GG, e._a[Qs], Me(gt(), 1, 4).year), s = rt(t.W, 1), i = rt(t.E, 1), (1 > i || i > 7) && (u = !0)) : (r = e._locale._week.dow, a = e._locale._week.doy, n = rt(t.gg, e._a[Qs], Me(gt(), r, a).year), s = rt(t.w, 1), null != t.d ? (i = t.d, (0 > i || i > 6) && (u = !0)) : null != t.e ? (i = t.e + r, (t.e < 0 || t.e > 6) && (u = !0)) : i = r), 1 > s || s > Se(n, r, a) ? h(e)._overflowWeeks = !0 : null != u ? h(e)._overflowWeekday = !0 : (o = ve(n, s, i, r, a), e._a[Qs] = o.year, e._dayOfYear = o.dayOfYear) }

	function dt(t) { if(t._f === e.ISO_8601) return void st(t);
		t._a = [], h(t).empty = !0; var n, s, i, r, a, o = "" + t._i,
			u = o.length,
			d = 0; for(i = B(t._f, t._locale).match(Ts) || [], n = 0; n < i.length; n++) r = i[n], s = (o.match(Q(r, t)) || [])[0], s && (a = o.substr(0, o.indexOf(s)), a.length > 0 && h(t).unusedInput.push(a), o = o.slice(o.indexOf(s) + s.length), d += s.length), Ws[r] ? (s ? h(t).empty = !1 : h(t).unusedTokens.push(r), ne(r, s, t)) : t._strict && !s && h(t).unusedTokens.push(r);
		h(t).charsLeftOver = u - d, o.length > 0 && h(t).unusedInput.push(o), t._a[ei] <= 12 && h(t).bigHour === !0 && t._a[ei] > 0 && (h(t).bigHour = void 0), h(t).parsedDateParts = t._a.slice(0), h(t).meridiem = t._meridiem, t._a[ei] = lt(t._locale, t._a[ei], t._meridiem), ot(t), nt(t) }

	function lt(e, t, n) { var s; return null == n ? t : null != e.meridiemHour ? e.meridiemHour(t, n) : null != e.isPM ? (s = e.isPM(n), s && 12 > t && (t += 12), s || 12 !== t || (t = 0), t) : t }

	function ht(e) { var t, n, s, i, r; if(0 === e._f.length) return h(e).invalidFormat = !0, void(e._d = new Date(NaN)); for(i = 0; i < e._f.length; i++) r = 0, t = _({}, e), null != e._useUTC && (t._useUTC = e._useUTC), t._f = e._f[i], dt(t), c(t) && (r += h(t).charsLeftOver, r += 10 * h(t).unusedTokens.length, h(t).score = r, (null == s || s > r) && (s = r, n = t));
		u(e, n || t) }

	function ct(e) { if(!e._d) { var t = H(e._i);
			e._a = a([t.year, t.month, t.day || t.date, t.hour, t.minute, t.second, t.millisecond], function(e) { return e && parseInt(e, 10) }), ot(e) } }

	function ft(e) { var t = new y(nt(mt(e))); return t._nextDay && (t.add(1, "d"), t._nextDay = void 0), t }

	function mt(e) { var t = e._i,
			s = e._f; return e._locale = e._locale || et(e._l), null === t || void 0 === s && "" === t ? f({ nullInput: !0 }) : ("string" == typeof t && (e._i = t = e._locale.preparse(t)), g(t) ? new y(nt(t)) : (n(s) ? ht(e) : r(t) ? e._d = t : s ? dt(e) : _t(e), c(e) || (e._d = null), e)) }

	function _t(t) { var s = t._i;
		void 0 === s ? t._d = new Date(e.now()) : r(s) ? t._d = new Date(s.valueOf()) : "string" == typeof s ? it(t) : n(s) ? (t._a = a(s.slice(0), function(e) { return parseInt(e, 10) }), ot(t)) : "object" == typeof s ? ct(t) : "number" == typeof s ? t._d = new Date(s) : e.createFromInputFallback(t) }

	function yt(e, t, r, a, o) { var u = {}; return "boolean" == typeof r && (a = r, r = void 0), (s(e) && i(e) || n(e) && 0 === e.length) && (e = void 0), u._isAMomentObject = !0, u._useUTC = u._isUTC = o, u._l = r, u._i = e, u._f = t, u._strict = a, ft(u) }

	function gt(e, t, n, s) { return yt(e, t, n, s, !1) }

	function pt(e, t) { var s, i; if(1 === t.length && n(t[0]) && (t = t[0]), !t.length) return gt(); for(s = t[0], i = 1; i < t.length; ++i) t[i].isValid() && !t[i][e](s) || (s = t[i]); return s }

	function wt() { var e = [].slice.call(arguments, 0); return pt("isBefore", e) }

	function vt() { var e = [].slice.call(arguments, 0); return pt("isAfter", e) }

	function Mt(e) { var t = H(e),
			n = t.year || 0,
			s = t.quarter || 0,
			i = t.month || 0,
			r = t.week || 0,
			a = t.day || 0,
			o = t.hour || 0,
			u = t.minute || 0,
			d = t.second || 0,
			l = t.millisecond || 0;
		this._milliseconds = +l + 1e3 * d + 6e4 * u + 1e3 * o * 60 * 60, this._days = +a + 7 * r, this._months = +i + 3 * s + 12 * n, this._data = {}, this._locale = et(), this._bubble() }

	function St(e) { return e instanceof Mt }

	function kt(e, t) { z(e, 0, 0, function() { var e = this.utcOffset(),
				n = "+"; return 0 > e && (e = -e, n = "-"), n + I(~~(e / 60), 2) + t + I(~~e % 60, 2) }) }

	function Dt(e, t) { var n = (t || "").match(e) || [],
			s = n[n.length - 1] || [],
			i = (s + "").match(Ui) || ["-", 0, 0],
			r = +(60 * i[1]) + w(i[2]); return "+" === i[0] ? r : -r }

	function Yt(t, n) { var s, i; return n._isUTC ? (s = n.clone(), i = (g(t) || r(t) ? t.valueOf() : gt(t).valueOf()) - s.valueOf(), s._d.setTime(s._d.valueOf() + i), e.updateOffset(s, !1), s) : gt(t).local() }

	function xt(e) { return 15 * -Math.round(e._d.getTimezoneOffset() / 15) }

	function Ot(t, n) { var s, i = this._offset || 0; return this.isValid() ? null != t ? ("string" == typeof t ? t = Dt(Zs, t) : Math.abs(t) < 16 && (t = 60 * t), !this._isUTC && n && (s = xt(this)), this._offset = t, this._isUTC = !0, null != s && this.add(s, "m"), i !== t && (!n || this._changeInProgress ? It(this, Gt(t - i, "m"), 1, !1) : this._changeInProgress || (this._changeInProgress = !0, e.updateOffset(this, !0), this._changeInProgress = null)), this) : this._isUTC ? i : xt(this) : null != t ? this : NaN }

	function Tt(e, t) { return null != e ? ("string" != typeof e && (e = -e), this.utcOffset(e, t), this) : -this.utcOffset() }

	function bt(e) { return this.utcOffset(0, e) }

	function Pt(e) { return this._isUTC && (this.utcOffset(0, e), this._isUTC = !1, e && this.subtract(xt(this), "m")), this }

	function Wt() { return this._tzm ? this.utcOffset(this._tzm) : "string" == typeof this._i && this.utcOffset(Dt(zs, this._i)), this }

	function Rt(e) { return this.isValid() ? (e = e ? gt(e).utcOffset() : 0, (this.utcOffset() - e) % 60 === 0) : !1 }

	function Ut() { return this.utcOffset() > this.clone().month(0).utcOffset() || this.utcOffset() > this.clone().month(5).utcOffset() }

	function Ct() { if(!m(this._isDSTShifted)) return this._isDSTShifted; var e = {}; if(_(e, this), e = mt(e), e._a) { var t = e._isUTC ? d(e._a) : gt(e._a);
			this._isDSTShifted = this.isValid() && v(e._a, t.toArray()) > 0 } else this._isDSTShifted = !1; return this._isDSTShifted }

	function Ft() { return this.isValid() ? !this._isUTC : !1 }

	function Ht() { return this.isValid() ? this._isUTC : !1 }

	function Lt() { return this.isValid() ? this._isUTC && 0 === this._offset : !1 }

	function Gt(e, t) { var n, s, i, r = e,
			a = null; return St(e) ? r = { ms: e._milliseconds, d: e._days, M: e._months } : "number" == typeof e ? (r = {}, t ? r[t] = e : r.milliseconds = e) : (a = Ci.exec(e)) ? (n = "-" === a[1] ? -1 : 1, r = { y: 0, d: w(a[Ks]) * n, h: w(a[ei]) * n, m: w(a[ti]) * n, s: w(a[ni]) * n, ms: w(a[si]) * n }) : (a = Fi.exec(e)) ? (n = "-" === a[1] ? -1 : 1, r = { y: Vt(a[2], n), M: Vt(a[3], n), w: Vt(a[4], n), d: Vt(a[5], n), h: Vt(a[6], n), m: Vt(a[7], n), s: Vt(a[8], n) }) : null == r ? r = {} : "object" == typeof r && ("from" in r || "to" in r) && (i = At(gt(r.from), gt(r.to)), r = {}, r.ms = i.milliseconds, r.M = i.months), s = new Mt(r), St(e) && o(e, "_locale") && (s._locale = e._locale), s }

	function Vt(e, t) { var n = e && parseFloat(e.replace(",", ".")); return(isNaN(n) ? 0 : n) * t }

	function jt(e, t) { var n = { milliseconds: 0, months: 0 }; return n.months = t.month() - e.month() + 12 * (t.year() - e.year()), e.clone().add(n.months, "M").isAfter(t) && --n.months, n.milliseconds = +t - +e.clone().add(n.months, "M"), n }

	function At(e, t) { var n; return e.isValid() && t.isValid() ? (t = Yt(t, e), e.isBefore(t) ? n = jt(e, t) : (n = jt(t, e), n.milliseconds = -n.milliseconds, n.months = -n.months), n) : { milliseconds: 0, months: 0 } }

	function Et(e) { return 0 > e ? -1 * Math.round(-1 * e) : Math.round(e) }

	function Nt(e, t) { return function(n, s) { var i, r; return null === s || isNaN(+s) || (k(t, "moment()." + t + "(period, number) is deprecated. Please use moment()." + t + "(number, period). See http://momentjs.com/guides/#/warnings/add-inverted-param/ for more info."), r = n, n = s, s = r), n = "string" == typeof n ? +n : n, i = Gt(n, s), It(this, i, e), this } }

	function It(t, n, s, i) { var r = n._milliseconds,
			a = Et(n._days),
			o = Et(n._months);
		t.isValid() && (i = null == i ? !0 : i, r && t._d.setTime(t._d.valueOf() + r * s), a && A(t, "Date", j(t, "Date") + a * s), o && ue(t, j(t, "Month") + o * s), i && e.updateOffset(t, a || o)) }

	function zt(e, t) { var n = e.diff(t, "days", !0); return -6 > n ? "sameElse" : -1 > n ? "lastWeek" : 0 > n ? "lastDay" : 1 > n ? "sameDay" : 2 > n ? "nextDay" : 7 > n ? "nextWeek" : "sameElse" }

	function Zt(t, n) { var s = t || gt(),
			i = Yt(s, this).startOf("day"),
			r = e.calendarFormat(this, i) || "sameElse",
			a = n && (D(n[r]) ? n[r].call(this, s) : n[r]); return this.format(a || this.localeData().calendar(r, this, gt(s))) }

	function qt() { return new y(this) }

	function $t(e, t) { var n = g(e) ? e : gt(e); return this.isValid() && n.isValid() ? (t = F(m(t) ? "millisecond" : t), "millisecond" === t ? this.valueOf() > n.valueOf() : n.valueOf() < this.clone().startOf(t).valueOf()) : !1 }

	function Bt(e, t) { var n = g(e) ? e : gt(e); return this.isValid() && n.isValid() ? (t = F(m(t) ? "millisecond" : t), "millisecond" === t ? this.valueOf() < n.valueOf() : this.clone().endOf(t).valueOf() < n.valueOf()) : !1 }

	function Jt(e, t, n, s) { return s = s || "()", ("(" === s[0] ? this.isAfter(e, n) : !this.isBefore(e, n)) && (")" === s[1] ? this.isBefore(t, n) : !this.isAfter(t, n)) }

	function Qt(e, t) { var n, s = g(e) ? e : gt(e); return this.isValid() && s.isValid() ? (t = F(t || "millisecond"), "millisecond" === t ? this.valueOf() === s.valueOf() : (n = s.valueOf(), this.clone().startOf(t).valueOf() <= n && n <= this.clone().endOf(t).valueOf())) : !1 }

	function Xt(e, t) { return this.isSame(e, t) || this.isAfter(e, t) }

	function Kt(e, t) { return this.isSame(e, t) || this.isBefore(e, t) }

	function en(e, t, n) { var s, i, r, a; return this.isValid() ? (s = Yt(e, this), s.isValid() ? (i = 6e4 * (s.utcOffset() - this.utcOffset()), t = F(t), "year" === t || "month" === t || "quarter" === t ? (a = tn(this, s), "quarter" === t ? a /= 3 : "year" === t && (a /= 12)) : (r = this - s, a = "second" === t ? r / 1e3 : "minute" === t ? r / 6e4 : "hour" === t ? r / 36e5 : "day" === t ? (r - i) / 864e5 : "week" === t ? (r - i) / 6048e5 : r), n ? a : p(a)) : NaN) : NaN }

	function tn(e, t) { var n, s, i = 12 * (t.year() - e.year()) + (t.month() - e.month()),
			r = e.clone().add(i, "months"); return 0 > t - r ? (n = e.clone().add(i - 1, "months"), s = (t - r) / (r - n)) : (n = e.clone().add(i + 1, "months"), s = (t - r) / (n - r)), -(i + s) || 0 }

	function nn() { return this.clone().locale("en").format("ddd MMM DD YYYY HH:mm:ss [GMT]ZZ") }

	function sn() { var e = this.clone().utc(); return 0 < e.year() && e.year() <= 9999 ? D(Date.prototype.toISOString) ? this.toDate().toISOString() : $(e, "YYYY-MM-DD[T]HH:mm:ss.SSS[Z]") : $(e, "YYYYYY-MM-DD[T]HH:mm:ss.SSS[Z]") }

	function rn(t) { t || (t = this.isUtc() ? e.defaultFormatUtc : e.defaultFormat); var n = $(this, t); return this.localeData().postformat(n) }

	function an(e, t) { return this.isValid() && (g(e) && e.isValid() || gt(e).isValid()) ? Gt({ to: this, from: e }).locale(this.locale()).humanize(!t) : this.localeData().invalidDate() }

	function on(e) { return this.from(gt(), e) }

	function un(e, t) { return this.isValid() && (g(e) && e.isValid() || gt(e).isValid()) ? Gt({ from: this, to: e }).locale(this.locale()).humanize(!t) : this.localeData().invalidDate() }

	function dn(e) { return this.to(gt(), e) }

	function ln(e) { var t; return void 0 === e ? this._locale._abbr : (t = et(e), null != t && (this._locale = t), this) }

	function hn() { return this._locale }

	function cn(e) { switch(e = F(e)) {
			case "year":
				this.month(0);
			case "quarter":
			case "month":
				this.date(1);
			case "week":
			case "isoWeek":
			case "day":
			case "date":
				this.hours(0);
			case "hour":
				this.minutes(0);
			case "minute":
				this.seconds(0);
			case "second":
				this.milliseconds(0) } return "week" === e && this.weekday(0), "isoWeek" === e && this.isoWeekday(1), "quarter" === e && this.month(3 * Math.floor(this.month() / 3)), this }

	function fn(e) { return e = F(e), void 0 === e || "millisecond" === e ? this : ("date" === e && (e = "day"), this.startOf(e).add(1, "isoWeek" === e ? "week" : e).subtract(1, "ms")) }

	function mn() { return this._d.valueOf() - 6e4 * (this._offset || 0) }

	function _n() { return Math.floor(this.valueOf() / 1e3) }

	function yn() { return new Date(this.valueOf()) }

	function gn() { var e = this; return [e.year(), e.month(), e.date(), e.hour(), e.minute(), e.second(), e.millisecond()] }

	function pn() { var e = this; return { years: e.year(), months: e.month(), date: e.date(), hours: e.hours(), minutes: e.minutes(), seconds: e.seconds(), milliseconds: e.milliseconds() } }

	function wn() { return this.isValid() ? this.toISOString() : null }

	function vn() { return c(this) }

	function Mn() { return u({}, h(this)) }

	function Sn() { return h(this).overflow }

	function kn() { return { input: this._i, format: this._f, locale: this._locale, isUTC: this._isUTC, strict: this._strict } }

	function Dn(e, t) { z(0, [e, e.length], 0, t) }

	function Yn(e) { return bn.call(this, e, this.week(), this.weekday(), this.localeData()._week.dow, this.localeData()._week.doy) }

	function xn(e) { return bn.call(this, e, this.isoWeek(), this.isoWeekday(), 1, 4) }

	function On() { return Se(this.year(), 1, 4) }

	function Tn() { var e = this.localeData()._week; return Se(this.year(), e.dow, e.doy) }

	function bn(e, t, n, s, i) { var r; return null == e ? Me(this, s, i).year : (r = Se(e, s, i), t > r && (t = r), Pn.call(this, e, t, n, s, i)) }

	function Pn(e, t, n, s, i) { var r = ve(e, t, n, s, i),
			a = pe(r.year, 0, r.dayOfYear); return this.year(a.getUTCFullYear()), this.month(a.getUTCMonth()), this.date(a.getUTCDate()), this }

	function Wn(e) { return null == e ? Math.ceil((this.month() + 1) / 3) : this.month(3 * (e - 1) + this.month() % 3) }

	function Rn(e) { var t = Math.round((this.clone().startOf("day") - this.clone().startOf("year")) / 864e5) + 1; return null == e ? t : this.add(e - t, "d") }

	function Un(e, t) { t[si] = w(1e3 * ("0." + e)) }

	function Cn() { return this._isUTC ? "UTC" : "" }

	function Fn() { return this._isUTC ? "Coordinated Universal Time" : "" }

	function Hn(e) { return gt(1e3 * e) }

	function Ln() { return gt.apply(null, arguments).parseZone() }

	function Gn(e) { return e }

	function Vn(e, t, n, s) { var i = et(),
			r = d().set(s, t); return i[n](r, e) }

	function jn(e, t, n) { if("number" == typeof e && (t = e, e = void 0), e = e || "", null != t) return Vn(e, t, n, "month"); var s, i = []; for(s = 0; 12 > s; s++) i[s] = Vn(e, s, n, "month"); return i }

	function An(e, t, n, s) { "boolean" == typeof e ? ("number" == typeof t && (n = t, t = void 0), t = t || "") : (t = e, n = t, e = !1, "number" == typeof t && (n = t, t = void 0), t = t || ""); var i = et(),
			r = e ? i._week.dow : 0; if(null != n) return Vn(t, (n + r) % 7, s, "day"); var a, o = []; for(a = 0; 7 > a; a++) o[a] = Vn(t, (a + r) % 7, s, "day"); return o }

	function En(e, t) { return jn(e, t, "months") }

	function Nn(e, t) { return jn(e, t, "monthsShort") }

	function In(e, t, n) { return An(e, t, n, "weekdays") }

	function zn(e, t, n) { return An(e, t, n, "weekdaysShort") }

	function Zn(e, t, n) { return An(e, t, n, "weekdaysMin") }

	function qn() { var e = this._data; return this._milliseconds = qi(this._milliseconds), this._days = qi(this._days), this._months = qi(this._months), e.milliseconds = qi(e.milliseconds), e.seconds = qi(e.seconds), e.minutes = qi(e.minutes), e.hours = qi(e.hours), e.months = qi(e.months), e.years = qi(e.years), this }

	function $n(e, t, n, s) {
		var i = Gt(t, n);
		return e._milliseconds += s * i._milliseconds, e._days += s * i._days, e._months += s * i._months,
			e._bubble()
	}

	function Bn(e, t) { return $n(this, e, t, 1) }

	function Jn(e, t) { return $n(this, e, t, -1) }

	function Qn(e) { return 0 > e ? Math.floor(e) : Math.ceil(e) }

	function Xn() { var e, t, n, s, i, r = this._milliseconds,
			a = this._days,
			o = this._months,
			u = this._data; return r >= 0 && a >= 0 && o >= 0 || 0 >= r && 0 >= a && 0 >= o || (r += 864e5 * Qn(es(o) + a), a = 0, o = 0), u.milliseconds = r % 1e3, e = p(r / 1e3), u.seconds = e % 60, t = p(e / 60), u.minutes = t % 60, n = p(t / 60), u.hours = n % 24, a += p(n / 24), i = p(Kn(a)), o += i, a -= Qn(es(i)), s = p(o / 12), o %= 12, u.days = a, u.months = o, u.years = s, this }

	function Kn(e) { return 4800 * e / 146097 }

	function es(e) { return 146097 * e / 4800 }

	function ts(e) { var t, n, s = this._milliseconds; if(e = F(e), "month" === e || "year" === e) return t = this._days + s / 864e5, n = this._months + Kn(t), "month" === e ? n : n / 12; switch(t = this._days + Math.round(es(this._months)), e) {
			case "week":
				return t / 7 + s / 6048e5;
			case "day":
				return t + s / 864e5;
			case "hour":
				return 24 * t + s / 36e5;
			case "minute":
				return 1440 * t + s / 6e4;
			case "second":
				return 86400 * t + s / 1e3;
			case "millisecond":
				return Math.floor(864e5 * t) + s;
			default:
				throw new Error("Unknown unit " + e) } }

	function ns() { return this._milliseconds + 864e5 * this._days + this._months % 12 * 2592e6 + 31536e6 * w(this._months / 12) }

	function ss(e) { return function() { return this.as(e) } }

	function is(e) { return e = F(e), this[e + "s"]() }

	function rs(e) { return function() { return this._data[e] } }

	function as() { return p(this.days() / 7) }

	function os(e, t, n, s, i) { return i.relativeTime(t || 1, !!n, e, s) }

	function us(e, t, n) { var s = Gt(e).abs(),
			i = dr(s.as("s")),
			r = dr(s.as("m")),
			a = dr(s.as("h")),
			o = dr(s.as("d")),
			u = dr(s.as("M")),
			d = dr(s.as("y")),
			l = i < lr.s && ["s", i] || 1 >= r && ["m"] || r < lr.m && ["mm", r] || 1 >= a && ["h"] || a < lr.h && ["hh", a] || 1 >= o && ["d"] || o < lr.d && ["dd", o] || 1 >= u && ["M"] || u < lr.M && ["MM", u] || 1 >= d && ["y"] || ["yy", d]; return l[2] = t, l[3] = +e > 0, l[4] = n, os.apply(null, l) }

	function ds(e) { return void 0 === e ? dr : "function" == typeof e ? (dr = e, !0) : !1 }

	function ls(e, t) { return void 0 === lr[e] ? !1 : void 0 === t ? lr[e] : (lr[e] = t, !0) }

	function hs(e) { var t = this.localeData(),
			n = us(this, !e, t); return e && (n = t.pastFuture(+this, n)), t.postformat(n) }

	function cs() { var e, t, n, s = hr(this._milliseconds) / 1e3,
			i = hr(this._days),
			r = hr(this._months);
		e = p(s / 60), t = p(e / 60), s %= 60, e %= 60, n = p(r / 12), r %= 12; var a = n,
			o = r,
			u = i,
			d = t,
			l = e,
			h = s,
			c = this.asSeconds(); return c ? (0 > c ? "-" : "") + "P" + (a ? a + "Y" : "") + (o ? o + "M" : "") + (u ? u + "D" : "") + (d || l || h ? "T" : "") + (d ? d + "H" : "") + (l ? l + "M" : "") + (h ? h + "S" : "") : "P0D" }
	var fs, ms;
	ms = Array.prototype.some ? Array.prototype.some : function(e) { for(var t = Object(this), n = t.length >>> 0, s = 0; n > s; s++)
			if(s in t && e.call(this, t[s], s, t)) return !0; return !1 };
	var _s = e.momentProperties = [],
		ys = !1,
		gs = {};
	e.suppressDeprecationWarnings = !1, e.deprecationHandler = null;
	var ps;
	ps = Object.keys ? Object.keys : function(e) { var t, n = []; for(t in e) o(e, t) && n.push(t); return n };
	var ws, vs = { sameDay: "[Today at] LT", nextDay: "[Tomorrow at] LT", nextWeek: "dddd [at] LT", lastDay: "[Yesterday at] LT", lastWeek: "[Last] dddd [at] LT", sameElse: "L" },
		Ms = { LTS: "h:mm:ss A", LT: "h:mm A", L: "MM/DD/YYYY", LL: "MMMM D, YYYY", LLL: "MMMM D, YYYY h:mm A", LLLL: "dddd, MMMM D, YYYY h:mm A" },
		Ss = "Invalid date",
		ks = "%d",
		Ds = /\d{1,2}/,
		Ys = { future: "in %s", past: "%s ago", s: "a few seconds", m: "a minute", mm: "%d minutes", h: "an hour", hh: "%d hours", d: "a day", dd: "%d days", M: "a month", MM: "%d months", y: "a year", yy: "%d years" },
		xs = {},
		Os = {},
		Ts = /(\[[^\[]*\])|(\\)?([Hh]mm(ss)?|Mo|MM?M?M?|Do|DDDo|DD?D?D?|ddd?d?|do?|w[o|w]?|W[o|W]?|Qo?|YYYYYY|YYYYY|YYYY|YY|gg(ggg?)?|GG(GGG?)?|e|E|a|A|hh?|HH?|kk?|mm?|ss?|S{1,9}|x|X|zz?|ZZ?|.)/g,
		bs = /(\[[^\[]*\])|(\\)?(LTS|LT|LL?L?L?|l{1,4})/g,
		Ps = {},
		Ws = {},
		Rs = /\d/,
		Us = /\d\d/,
		Cs = /\d{3}/,
		Fs = /\d{4}/,
		Hs = /[+-]?\d{6}/,
		Ls = /\d\d?/,
		Gs = /\d\d\d\d?/,
		Vs = /\d\d\d\d\d\d?/,
		js = /\d{1,3}/,
		As = /\d{1,4}/,
		Es = /[+-]?\d{1,6}/,
		Ns = /\d+/,
		Is = /[+-]?\d+/,
		zs = /Z|[+-]\d\d:?\d\d/gi,
		Zs = /Z|[+-]\d\d(?::?\d\d)?/gi,
		qs = /[+-]?\d+(\.\d{1,3})?/,
		$s = /[0-9]*['a-z\u00A0-\u05FF\u0700-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+|[\u0600-\u06FF\/]+(\s*?[\u0600-\u06FF]+){1,2}/i,
		Bs = {},
		Js = {},
		Qs = 0,
		Xs = 1,
		Ks = 2,
		ei = 3,
		ti = 4,
		ni = 5,
		si = 6,
		ii = 7,
		ri = 8;
	ws = Array.prototype.indexOf ? Array.prototype.indexOf : function(e) { var t; for(t = 0; t < this.length; ++t)
			if(this[t] === e) return t; return -1 }, z("M", ["MM", 2], "Mo", function() { return this.month() + 1 }), z("MMM", 0, 0, function(e) { return this.localeData().monthsShort(this, e) }), z("MMMM", 0, 0, function(e) { return this.localeData().months(this, e) }), C("month", "M"), L("month", 8), J("M", Ls), J("MM", Ls, Us), J("MMM", function(e, t) { return t.monthsShortRegex(e) }), J("MMMM", function(e, t) { return t.monthsRegex(e) }), ee(["M", "MM"], function(e, t) { t[Xs] = w(e) - 1 }), ee(["MMM", "MMMM"], function(e, t, n, s) { var i = n._locale.monthsParse(e, s, n._strict);
		null != i ? t[Xs] = i : h(n).invalidMonth = e });
	var ai = /D[oD]?(\[[^\[\]]*\]|\s+)+MMMM?/,
		oi = "January_February_March_April_May_June_July_August_September_October_November_December".split("_"),
		ui = "Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"),
		di = $s,
		li = $s;
	z("Y", 0, 0, function() { var e = this.year(); return 9999 >= e ? "" + e : "+" + e }), z(0, ["YY", 2], 0, function() { return this.year() % 100 }), z(0, ["YYYY", 4], 0, "year"), z(0, ["YYYYY", 5], 0, "year"), z(0, ["YYYYYY", 6, !0], 0, "year"), C("year", "y"), L("year", 1), J("Y", Is), J("YY", Ls, Us), J("YYYY", As, Fs), J("YYYYY", Es, Hs), J("YYYYYY", Es, Hs), ee(["YYYYY", "YYYYYY"], Qs), ee("YYYY", function(t, n) { n[Qs] = 2 === t.length ? e.parseTwoDigitYear(t) : w(t) }), ee("YY", function(t, n) { n[Qs] = e.parseTwoDigitYear(t) }), ee("Y", function(e, t) { t[Qs] = parseInt(e, 10) }), e.parseTwoDigitYear = function(e) { return w(e) + (w(e) > 68 ? 1900 : 2e3) };
	var hi = V("FullYear", !0);
	z("w", ["ww", 2], "wo", "week"), z("W", ["WW", 2], "Wo", "isoWeek"), C("week", "w"), C("isoWeek", "W"), L("week", 5), L("isoWeek", 5), J("w", Ls), J("ww", Ls, Us), J("W", Ls), J("WW", Ls, Us), te(["w", "ww", "W", "WW"], function(e, t, n, s) { t[s.substr(0, 1)] = w(e) });
	var ci = { dow: 0, doy: 6 };
	z("d", 0, "do", "day"), z("dd", 0, 0, function(e) { return this.localeData().weekdaysMin(this, e) }), z("ddd", 0, 0, function(e) { return this.localeData().weekdaysShort(this, e) }), z("dddd", 0, 0, function(e) { return this.localeData().weekdays(this, e) }), z("e", 0, 0, "weekday"), z("E", 0, 0, "isoWeekday"), C("day", "d"), C("weekday", "e"), C("isoWeekday", "E"), L("day", 11), L("weekday", 11), L("isoWeekday", 11), J("d", Ls), J("e", Ls), J("E", Ls), J("dd", function(e, t) { return t.weekdaysMinRegex(e) }), J("ddd", function(e, t) { return t.weekdaysShortRegex(e) }), J("dddd", function(e, t) { return t.weekdaysRegex(e) }), te(["dd", "ddd", "dddd"], function(e, t, n, s) { var i = n._locale.weekdaysParse(e, s, n._strict);
		null != i ? t.d = i : h(n).invalidWeekday = e }), te(["d", "e", "E"], function(e, t, n, s) { t[s] = w(e) });
	var fi = "Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),
		mi = "Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"),
		_i = "Su_Mo_Tu_We_Th_Fr_Sa".split("_"),
		yi = $s,
		gi = $s,
		pi = $s;
	z("H", ["HH", 2], 0, "hour"), z("h", ["hh", 2], 0, Ee), z("k", ["kk", 2], 0, Ne), z("hmm", 0, 0, function() { return "" + Ee.apply(this) + I(this.minutes(), 2) }), z("hmmss", 0, 0, function() { return "" + Ee.apply(this) + I(this.minutes(), 2) + I(this.seconds(), 2) }), z("Hmm", 0, 0, function() { return "" + this.hours() + I(this.minutes(), 2) }), z("Hmmss", 0, 0, function() { return "" + this.hours() + I(this.minutes(), 2) + I(this.seconds(), 2) }), Ie("a", !0), Ie("A", !1), C("hour", "h"), L("hour", 13), J("a", ze), J("A", ze), J("H", Ls), J("h", Ls), J("HH", Ls, Us), J("hh", Ls, Us), J("hmm", Gs), J("hmmss", Vs), J("Hmm", Gs), J("Hmmss", Vs), ee(["H", "HH"], ei), ee(["a", "A"], function(e, t, n) { n._isPm = n._locale.isPM(e), n._meridiem = e }), ee(["h", "hh"], function(e, t, n) { t[ei] = w(e), h(n).bigHour = !0 }), ee("hmm", function(e, t, n) { var s = e.length - 2;
		t[ei] = w(e.substr(0, s)), t[ti] = w(e.substr(s)), h(n).bigHour = !0 }), ee("hmmss", function(e, t, n) { var s = e.length - 4,
			i = e.length - 2;
		t[ei] = w(e.substr(0, s)), t[ti] = w(e.substr(s, 2)), t[ni] = w(e.substr(i)), h(n).bigHour = !0 }), ee("Hmm", function(e, t, n) { var s = e.length - 2;
		t[ei] = w(e.substr(0, s)), t[ti] = w(e.substr(s)) }), ee("Hmmss", function(e, t, n) { var s = e.length - 4,
			i = e.length - 2;
		t[ei] = w(e.substr(0, s)), t[ti] = w(e.substr(s, 2)), t[ni] = w(e.substr(i)) });
	var wi, vi = /[ap]\.?m?\.?/i,
		Mi = V("Hours", !0),
		Si = { calendar: vs, longDateFormat: Ms, invalidDate: Ss, ordinal: ks, ordinalParse: Ds, relativeTime: Ys, months: oi, monthsShort: ui, week: ci, weekdays: fi, weekdaysMin: _i, weekdaysShort: mi, meridiemParse: vi },
		ki = {},
		Di = /^\s*((?:[+-]\d{6}|\d{4})-(?:\d\d-\d\d|W\d\d-\d|W\d\d|\d\d\d|\d\d))(?:(T| )(\d\d(?::\d\d(?::\d\d(?:[.,]\d+)?)?)?)([\+\-]\d\d(?::?\d\d)?|\s*Z)?)?/,
		Yi = /^\s*((?:[+-]\d{6}|\d{4})(?:\d\d\d\d|W\d\d\d|W\d\d|\d\d\d|\d\d))(?:(T| )(\d\d(?:\d\d(?:\d\d(?:[.,]\d+)?)?)?)([\+\-]\d\d(?::?\d\d)?|\s*Z)?)?/,
		xi = /Z|[+-]\d\d(?::?\d\d)?/,
		Oi = [
			["YYYYYY-MM-DD", /[+-]\d{6}-\d\d-\d\d/],
			["YYYY-MM-DD", /\d{4}-\d\d-\d\d/],
			["GGGG-[W]WW-E", /\d{4}-W\d\d-\d/],
			["GGGG-[W]WW", /\d{4}-W\d\d/, !1],
			["YYYY-DDD", /\d{4}-\d{3}/],
			["YYYY-MM", /\d{4}-\d\d/, !1],
			["YYYYYYMMDD", /[+-]\d{10}/],
			["YYYYMMDD", /\d{8}/],
			["GGGG[W]WWE", /\d{4}W\d{3}/],
			["GGGG[W]WW", /\d{4}W\d{2}/, !1],
			["YYYYDDD", /\d{7}/]
		],
		Ti = [
			["HH:mm:ss.SSSS", /\d\d:\d\d:\d\d\.\d+/],
			["HH:mm:ss,SSSS", /\d\d:\d\d:\d\d,\d+/],
			["HH:mm:ss", /\d\d:\d\d:\d\d/],
			["HH:mm", /\d\d:\d\d/],
			["HHmmss.SSSS", /\d\d\d\d\d\d\.\d+/],
			["HHmmss,SSSS", /\d\d\d\d\d\d,\d+/],
			["HHmmss", /\d\d\d\d\d\d/],
			["HHmm", /\d\d\d\d/],
			["HH", /\d\d/]
		],
		bi = /^\/?Date\((\-?\d+)/i;
	e.createFromInputFallback = S("moment construction falls back to js Date. This is discouraged and will be removed in upcoming major release. Please refer to http://momentjs.com/guides/#/warnings/js-date/ for more info.", function(e) { e._d = new Date(e._i + (e._useUTC ? " UTC" : "")) }), e.ISO_8601 = function() {};
	var Pi = S("moment().min is deprecated, use moment.max instead. http://momentjs.com/guides/#/warnings/min-max/", function() { var e = gt.apply(null, arguments); return this.isValid() && e.isValid() ? this > e ? this : e : f() }),
		Wi = S("moment().max is deprecated, use moment.min instead. http://momentjs.com/guides/#/warnings/min-max/", function() { var e = gt.apply(null, arguments); return this.isValid() && e.isValid() ? e > this ? this : e : f() }),
		Ri = function() { return Date.now ? Date.now() : +new Date };
	kt("Z", ":"), kt("ZZ", ""), J("Z", Zs), J("ZZ", Zs), ee(["Z", "ZZ"], function(e, t, n) { n._useUTC = !0, n._tzm = Dt(Zs, e) });
	var Ui = /([\+\-]|\d\d)/gi;
	e.updateOffset = function() {};
	var Ci = /^(\-)?(?:(\d*)[. ])?(\d+)\:(\d+)(?:\:(\d+)\.?(\d{3})?\d*)?$/,
		Fi = /^(-)?P(?:(-?[0-9,.]*)Y)?(?:(-?[0-9,.]*)M)?(?:(-?[0-9,.]*)W)?(?:(-?[0-9,.]*)D)?(?:T(?:(-?[0-9,.]*)H)?(?:(-?[0-9,.]*)M)?(?:(-?[0-9,.]*)S)?)?$/;
	Gt.fn = Mt.prototype;
	var Hi = Nt(1, "add"),
		Li = Nt(-1, "subtract");
	e.defaultFormat = "YYYY-MM-DDTHH:mm:ssZ", e.defaultFormatUtc = "YYYY-MM-DDTHH:mm:ss[Z]";
	var Gi = S("moment().lang() is deprecated. Instead, use moment().localeData() to get the language configuration. Use moment().locale() to change languages.", function(e) { return void 0 === e ? this.localeData() : this.locale(e) });
	z(0, ["gg", 2], 0, function() { return this.weekYear() % 100 }), z(0, ["GG", 2], 0, function() { return this.isoWeekYear() % 100 }), Dn("gggg", "weekYear"), Dn("ggggg", "weekYear"), Dn("GGGG", "isoWeekYear"), Dn("GGGGG", "isoWeekYear"), C("weekYear", "gg"), C("isoWeekYear", "GG"), L("weekYear", 1), L("isoWeekYear", 1), J("G", Is), J("g", Is), J("GG", Ls, Us), J("gg", Ls, Us), J("GGGG", As, Fs), J("gggg", As, Fs), J("GGGGG", Es, Hs), J("ggggg", Es, Hs), te(["gggg", "ggggg", "GGGG", "GGGGG"], function(e, t, n, s) { t[s.substr(0, 2)] = w(e) }), te(["gg", "GG"], function(t, n, s, i) { n[i] = e.parseTwoDigitYear(t) }), z("Q", 0, "Qo", "quarter"), C("quarter", "Q"), L("quarter", 7), J("Q", Rs), ee("Q", function(e, t) { t[Xs] = 3 * (w(e) - 1) }), z("D", ["DD", 2], "Do", "date"), C("date", "D"), L("date", 9), J("D", Ls), J("DD", Ls, Us), J("Do", function(e, t) { return e ? t._ordinalParse : t._ordinalParseLenient }), ee(["D", "DD"], Ks), ee("Do", function(e, t) { t[Ks] = w(e.match(Ls)[0], 10) });
	var Vi = V("Date", !0);
	z("DDD", ["DDDD", 3], "DDDo", "dayOfYear"), C("dayOfYear", "DDD"), L("dayOfYear", 4), J("DDD", js), J("DDDD", Cs), ee(["DDD", "DDDD"], function(e, t, n) { n._dayOfYear = w(e) }), z("m", ["mm", 2], 0, "minute"), C("minute", "m"), L("minute", 14), J("m", Ls), J("mm", Ls, Us), ee(["m", "mm"], ti);
	var ji = V("Minutes", !1);
	z("s", ["ss", 2], 0, "second"), C("second", "s"), L("second", 15), J("s", Ls), J("ss", Ls, Us), ee(["s", "ss"], ni);
	var Ai = V("Seconds", !1);
	z("S", 0, 0, function() { return ~~(this.millisecond() / 100) }), z(0, ["SS", 2], 0, function() { return ~~(this.millisecond() / 10) }), z(0, ["SSS", 3], 0, "millisecond"), z(0, ["SSSS", 4], 0, function() { return 10 * this.millisecond() }), z(0, ["SSSSS", 5], 0, function() { return 100 * this.millisecond() }), z(0, ["SSSSSS", 6], 0, function() { return 1e3 * this.millisecond() }), z(0, ["SSSSSSS", 7], 0, function() { return 1e4 * this.millisecond() }), z(0, ["SSSSSSSS", 8], 0, function() { return 1e5 * this.millisecond() }), z(0, ["SSSSSSSSS", 9], 0, function() { return 1e6 * this.millisecond() }), C("millisecond", "ms"), L("millisecond", 16), J("S", js, Rs), J("SS", js, Us), J("SSS", js, Cs);
	var Ei;
	for(Ei = "SSSS"; Ei.length <= 9; Ei += "S") J(Ei, Ns);
	for(Ei = "S"; Ei.length <= 9; Ei += "S") ee(Ei, Un);
	var Ni = V("Milliseconds", !1);
	z("z", 0, 0, "zoneAbbr"), z("zz", 0, 0, "zoneName");
	var Ii = y.prototype;
	Ii.add = Hi, Ii.calendar = Zt, Ii.clone = qt, Ii.diff = en, Ii.endOf = fn, Ii.format = rn, Ii.from = an, Ii.fromNow = on, Ii.to = un, Ii.toNow = dn, Ii.get = E, Ii.invalidAt = Sn, Ii.isAfter = $t, Ii.isBefore = Bt, Ii.isBetween = Jt, Ii.isSame = Qt, Ii.isSameOrAfter = Xt, Ii.isSameOrBefore = Kt, Ii.isValid = vn, Ii.lang = Gi, Ii.locale = ln, Ii.localeData = hn, Ii.max = Wi, Ii.min = Pi, Ii.parsingFlags = Mn, Ii.set = N, Ii.startOf = cn, Ii.subtract = Li, Ii.toArray = gn, Ii.toObject = pn, Ii.toDate = yn, Ii.toISOString = sn, Ii.toJSON = wn, Ii.toString = nn, Ii.unix = _n, Ii.valueOf = mn, Ii.creationData = kn, Ii.year = hi, Ii.isLeapYear = ye, Ii.weekYear = Yn, Ii.isoWeekYear = xn, Ii.quarter = Ii.quarters = Wn, Ii.month = de, Ii.daysInMonth = le, Ii.week = Ii.weeks = xe, Ii.isoWeek = Ii.isoWeeks = Oe, Ii.weeksInYear = Tn, Ii.isoWeeksInYear = On, Ii.date = Vi, Ii.day = Ii.days = Fe, Ii.weekday = He, Ii.isoWeekday = Le, Ii.dayOfYear = Rn, Ii.hour = Ii.hours = Mi, Ii.minute = Ii.minutes = ji, Ii.second = Ii.seconds = Ai, Ii.millisecond = Ii.milliseconds = Ni, Ii.utcOffset = Ot, Ii.utc = bt, Ii.local = Pt, Ii.parseZone = Wt, Ii.hasAlignedHourOffset = Rt, Ii.isDST = Ut, Ii.isLocal = Ft, Ii.isUtcOffset = Ht, Ii.isUtc = Lt, Ii.isUTC = Lt, Ii.zoneAbbr = Cn, Ii.zoneName = Fn, Ii.dates = S("dates accessor is deprecated. Use date instead.", Vi), Ii.months = S("months accessor is deprecated. Use month instead", de), Ii.years = S("years accessor is deprecated. Use year instead", hi), Ii.zone = S("moment().zone is deprecated, use moment().utcOffset instead. http://momentjs.com/guides/#/warnings/zone/", Tt), Ii.isDSTShifted = S("isDSTShifted is deprecated. See http://momentjs.com/guides/#/warnings/dst-shifted/ for more information", Ct);
	var zi = Ii,
		Zi = O.prototype;
	Zi.calendar = T, Zi.longDateFormat = b, Zi.invalidDate = P, Zi.ordinal = W, Zi.preparse = Gn, Zi.postformat = Gn, Zi.relativeTime = R, Zi.pastFuture = U, Zi.set = Y, Zi.months = ie, Zi.monthsShort = re, Zi.monthsParse = oe, Zi.monthsRegex = ce, Zi.monthsShortRegex = he, Zi.week = ke, Zi.firstDayOfYear = Ye, Zi.firstDayOfWeek = De, Zi.weekdays = Pe, Zi.weekdaysMin = Re, Zi.weekdaysShort = We, Zi.weekdaysParse = Ce, Zi.weekdaysRegex = Ge, Zi.weekdaysShortRegex = Ve, Zi.weekdaysMinRegex = je, Zi.isPM = Ze, Zi.meridiem = qe, Qe("en", { ordinalParse: /\d{1,2}(th|st|nd|rd)/, ordinal: function(e) { var t = e % 10,
				n = 1 === w(e % 100 / 10) ? "th" : 1 === t ? "st" : 2 === t ? "nd" : 3 === t ? "rd" : "th"; return e + n } }), e.lang = S("moment.lang is deprecated. Use moment.locale instead.", Qe), e.langData = S("moment.langData is deprecated. Use moment.localeData instead.", et);
	var qi = Math.abs,
		$i = ss("ms"),
		Bi = ss("s"),
		Ji = ss("m"),
		Qi = ss("h"),
		Xi = ss("d"),
		Ki = ss("w"),
		er = ss("M"),
		tr = ss("y"),
		nr = rs("milliseconds"),
		sr = rs("seconds"),
		ir = rs("minutes"),
		rr = rs("hours"),
		ar = rs("days"),
		or = rs("months"),
		ur = rs("years"),
		dr = Math.round,
		lr = { s: 45, m: 45, h: 22, d: 26, M: 11 },
		hr = Math.abs,
		cr = Mt.prototype;
	cr.abs = qn, cr.add = Bn, cr.subtract = Jn, cr.as = ts, cr.asMilliseconds = $i, cr.asSeconds = Bi, cr.asMinutes = Ji, cr.asHours = Qi, cr.asDays = Xi, cr.asWeeks = Ki, cr.asMonths = er, cr.asYears = tr, cr.valueOf = ns, cr._bubble = Xn, cr.get = is, cr.milliseconds = nr, cr.seconds = sr, cr.minutes = ir, cr.hours = rr, cr.days = ar, cr.weeks = as, cr.months = or, cr.years = ur, cr.humanize = hs, cr.toISOString = cs, cr.toString = cs, cr.toJSON = cs, cr.locale = ln, cr.localeData = hn, cr.toIsoString = S("toIsoString() is deprecated. Please use toISOString() instead (notice the capitals)", cs), cr.lang = Gi, z("X", 0, 0, "unix"), z("x", 0, 0, "valueOf"), J("x", Is), J("X", qs), ee("X", function(e, t, n) { n._d = new Date(1e3 * parseFloat(e, 10)) }), ee("x", function(e, t, n) { n._d = new Date(w(e)) }), e.version = "2.14.1", t(gt), e.fn = zi, e.min = wt, e.max = vt, e.now = Ri, e.utc = d, e.unix = Hn, e.months = En, e.isDate = r, e.locale = Qe, e.invalid = f, e.duration = Gt, e.isMoment = g, e.weekdays = In, e.parseZone = Ln, e.localeData = et, e.isDuration = St, e.monthsShort = Nn, e.weekdaysMin = Zn, e.defineLocale = Xe, e.updateLocale = Ke, e.locales = tt, e.weekdaysShort = zn, e.normalizeUnits = F, e.relativeTimeRounding = ds, e.relativeTimeThreshold = ls, e.calendarFormat = zt, e.prototype = zi;
	var fr = e;
	return fr
});

/*!
 * FullCalendar v3.0.0 + Google Calendar Plugin
 * Docs & License: http://fullcalendar.io/
 * (c) 2015 Adam Shaw
 */
! function(t) { "function" == typeof define && define.amd ? define(["jquery", "moment"], t) : "object" == typeof exports ? module.exports = t(require("jquery"), require("moment")) : t(jQuery, moment) }(function(t, e) {
	function n(t) { return q(t, qt) }

	function i(t, e) { e.left && t.css({ "border-left-width": 1, "margin-left": e.left - 1 }), e.right && t.css({ "border-right-width": 1, "margin-right": e.right - 1 }) }

	function r(t) { t.css({ "margin-left": "", "margin-right": "", "border-left-width": "", "border-right-width": "" }) }

	function s() { t("body").addClass("fc-not-allowed") }

	function o() { t("body").removeClass("fc-not-allowed") }

	function l(e, n, i) { var r = Math.floor(n / e.length),
			s = Math.floor(n - r * (e.length - 1)),
			o = [],
			l = [],
			u = [],
			c = 0;
		a(e), e.each(function(n, i) { var a = n === e.length - 1 ? s : r,
				d = t(i).outerHeight(!0);
			d < a ? (o.push(i), l.push(d), u.push(t(i).height())) : c += d }), i && (n -= c, r = Math.floor(n / o.length), s = Math.floor(n - r * (o.length - 1))), t(o).each(function(e, n) { var i = e === o.length - 1 ? s : r,
				a = l[e],
				c = u[e],
				d = i - (a - c);
			a < i && t(n).height(d) }) }

	function a(t) { t.height("") }

	function u(e) { var n = 0; return e.find("> *").each(function(e, i) { var r = t(i).outerWidth();
			r > n && (n = r) }), n++, e.width(n), n }

	function c(t, e) { var n, i = t.add(e); return i.css({ position: "relative", left: -1 }), n = t.outerHeight() - e.outerHeight(), i.css({ position: "", left: "" }), n }

	function d(e) { var n = e.css("position"),
			i = e.parents().filter(function() { var e = t(this); return /(auto|scroll)/.test(e.css("overflow") + e.css("overflow-y") + e.css("overflow-x")) }).eq(0); return "fixed" !== n && i.length ? i : t(e[0].ownerDocument || document) }

	function h(t, e) { var n = t.offset(),
			i = n.left - (e ? e.left : 0),
			r = n.top - (e ? e.top : 0); return { left: i, right: i + t.outerWidth(), top: r, bottom: r + t.outerHeight() } }

	function f(t, e) { var n = t.offset(),
			i = p(t),
			r = n.left + y(t, "border-left-width") + i.left - (e ? e.left : 0),
			s = n.top + y(t, "border-top-width") + i.top - (e ? e.top : 0); return { left: r, right: r + t[0].clientWidth, top: s, bottom: s + t[0].clientHeight } }

	function g(t, e) { var n = t.offset(),
			i = n.left + y(t, "border-left-width") + y(t, "padding-left") - (e ? e.left : 0),
			r = n.top + y(t, "border-top-width") + y(t, "padding-top") - (e ? e.top : 0); return { left: i, right: i + t.width(), top: r, bottom: r + t.height() } }

	function p(t) { var e = t.innerWidth() - t[0].clientWidth,
			n = { left: 0, right: 0, top: 0, bottom: t.innerHeight() - t[0].clientHeight }; return v() && "rtl" == t.css("direction") ? n.left = e : n.right = e, n }

	function v() { return null === Zt && (Zt = m()), Zt }

	function m() { var e = t("<div><div/></div>").css({ position: "absolute", top: -1e3, left: 0, border: 0, padding: 0, overflow: "scroll", direction: "rtl" }).appendTo("body"),
			n = e.children(),
			i = n.offset().left > e.offset().left; return e.remove(), i }

	function y(t, e) { return parseFloat(t.css(e)) || 0 }

	function S(t) { return 1 == t.which && !t.ctrlKey }

	function w(t) { if(void 0 !== t.pageX) return t.pageX; var e = t.originalEvent.touches; return e ? e[0].pageX : void 0 }

	function E(t) { if(void 0 !== t.pageY) return t.pageY; var e = t.originalEvent.touches; return e ? e[0].pageY : void 0 }

	function b(t) { return /^touch/.test(t.type) }

	function D(t) { t.addClass("fc-unselectable").on("selectstart", C) }

	function C(t) { t.preventDefault() }

	function H(t) { return !!window.addEventListener && (window.addEventListener("scroll", t, !0), !0) }

	function T(t) { return !!window.removeEventListener && (window.removeEventListener("scroll", t, !0), !0) }

	function x(t, e) { var n = { left: Math.max(t.left, e.left), right: Math.min(t.right, e.right), top: Math.max(t.top, e.top), bottom: Math.min(t.bottom, e.bottom) }; return n.left < n.right && n.top < n.bottom && n }

	function R(t, e) { return { left: Math.min(Math.max(t.left, e.left), e.right), top: Math.min(Math.max(t.top, e.top), e.bottom) } }

	function I(t) { return { left: (t.left + t.right) / 2, top: (t.top + t.bottom) / 2 } }

	function k(t, e) { return { left: t.left - e.left, top: t.top - e.top } }

	function L(e) { var n, i, r = [],
			s = []; for("string" == typeof e ? s = e.split(/\s*,\s*/) : "function" == typeof e ? s = [e] : t.isArray(e) && (s = e), n = 0; n < s.length; n++) i = s[n], "string" == typeof i ? r.push("-" == i.charAt(0) ? { field: i.substring(1), order: -1 } : { field: i, order: 1 }) : "function" == typeof i && r.push({ func: i }); return r }

	function M(t, e, n) { var i, r; for(i = 0; i < n.length; i++)
			if(r = z(t, e, n[i])) return r; return 0 }

	function z(t, e, n) { return n.func ? n.func(t, e) : B(t[n.field], e[n.field]) * (n.order || 1) }

	function B(e, n) { return e || n ? null == n ? -1 : null == e ? 1 : "string" === t.type(e) || "string" === t.type(n) ? String(e).localeCompare(String(n)) : e - n : 0 }

	function F(t, e) { var n, i, r, s, o = t.start,
			l = t.end,
			a = e.start,
			u = e.end; if(l > a && o < u) return o >= a ? (n = o.clone(), r = !0) : (n = a.clone(), r = !1), l <= u ? (i = l.clone(), s = !0) : (i = u.clone(), s = !1), { start: n, end: i, isStart: r, isEnd: s } }

	function N(t, n) { return e.duration({ days: t.clone().stripTime().diff(n.clone().stripTime(), "days"), ms: t.time() - n.time() }) }

	function G(t, n) { return e.duration({ days: t.clone().stripTime().diff(n.clone().stripTime(), "days") }) }

	function O(t, n, i) { return e.duration(Math.round(t.diff(n, i, !0)), i) }

	function A(t, e) { var n, i, r; for(n = 0; n < Xt.length && (i = Xt[n], r = V(i, t, e), !(r >= 1 && ot(r))); n++); return i }

	function V(t, n, i) { return null != i ? i.diff(n, t, !0) : e.isDuration(n) ? n.as(t) : n.end.diff(n.start, t, !0) }

	function P(t, e, n) { var i; return W(n) ? (e - t) / n : (i = n.asMonths(), Math.abs(i) >= 1 && ot(i) ? e.diff(t, "months", !0) / i : e.diff(t, "days", !0) / n.asDays()) }

	function _(t, e) { var n, i; return W(t) || W(e) ? t / e : (n = t.asMonths(), i = e.asMonths(), Math.abs(n) >= 1 && ot(n) && Math.abs(i) >= 1 && ot(i) ? n / i : t.asDays() / e.asDays()) }

	function Y(t, n) { var i; return W(t) ? e.duration(t * n) : (i = t.asMonths(), Math.abs(i) >= 1 && ot(i) ? e.duration({ months: i * n }) : e.duration({ days: t.asDays() * n })) }

	function W(t) { return Boolean(t.hours() || t.minutes() || t.seconds() || t.milliseconds()) }

	function j(t) { return "[object Date]" === Object.prototype.toString.call(t) || t instanceof Date }

	function U(t) { return /^\d+\:\d+(?:\:\d+\.?(?:\d{3})?)?$/.test(t) }

	function q(t, e) { var n, i, r, s, o, l, a = {}; if(e)
			for(n = 0; n < e.length; n++) { for(i = e[n], r = [], s = t.length - 1; s >= 0; s--)
					if(o = t[s][i], "object" == typeof o) r.unshift(o);
					else if(void 0 !== o) { a[i] = o; break } r.length && (a[i] = q(r)) }
		for(n = t.length - 1; n >= 0; n--) { l = t[n]; for(i in l) i in a || (a[i] = l[i]) } return a }

	function Z(t) { var e = function() {}; return e.prototype = t, new e }

	function $(t, e) { for(var n in t) X(t, n) && (e[n] = t[n]) }

	function X(t, e) { return Kt.call(t, e) }

	function K(e) { return /undefined|null|boolean|number|string/.test(t.type(e)) }

	function Q(e, n, i) { if(t.isFunction(e) && (e = [e]), e) { var r, s; for(r = 0; r < e.length; r++) s = e[r].apply(n, i) || s; return s } }

	function J() { for(var t = 0; t < arguments.length; t++)
			if(void 0 !== arguments[t]) return arguments[t] }

	function tt(t) { return(t + "").replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/'/g, "&#039;").replace(/"/g, "&quot;").replace(/\n/g, "<br />") }

	function et(t) { return t.replace(/&.*?;/g, "") }

	function nt(e) { var n = []; return t.each(e, function(t, e) { null != e && n.push(t + ":" + e) }), n.join(";") }

	function it(e) { var n = []; return t.each(e, function(t, e) { null != e && n.push(t + '="' + tt(e) + '"') }), n.join(" ") }

	function rt(t) { return t.charAt(0).toUpperCase() + t.slice(1) }

	function st(t, e) { return t - e }

	function ot(t) { return t % 1 === 0 }

	function lt(t, e) { var n = t[e]; return function() { return n.apply(t, arguments) } }

	function at(t, e, n) { var i, r, s, o, l, a = function() { var u = +new Date - o;
			u < e ? i = setTimeout(a, e - u) : (i = null, n || (l = t.apply(s, r), s = r = null)) }; return function() { s = this, r = arguments, o = +new Date; var u = n && !i; return i || (i = setTimeout(a, e)), u && (l = t.apply(s, r), s = r = null), l } }

	function ut(e, n) { return e && e.then && "resolved" !== e.state() ? n ? e.then(n) : void 0 : t.when(n()) }

	function ct(n, i, r) { var s, o, l, a, u = n[0],
			c = 1 == n.length && "string" == typeof u; return e.isMoment(u) || j(u) || void 0 === u ? a = e.apply(null, n) : (s = !1, o = !1, c ? Qt.test(u) ? (u += "-01", n = [u], s = !0, o = !0) : (l = Jt.exec(u)) && (s = !l[5], o = !0) : t.isArray(u) && (o = !0), a = i || s ? e.utc.apply(e, n) : e.apply(null, n), s ? (a._ambigTime = !0, a._ambigZone = !0) : r && (o ? a._ambigZone = !0 : c && a.utcOffset(u))), a._fullCalendar = !0, a }

	function dt(t, e) { return ee.format.call(t, e) }

	function ht(t, e) { return ft(t, yt(e)) }

	function ft(t, e) { var n, i = ""; for(n = 0; n < e.length; n++) i += gt(t, e[n]); return i }

	function gt(t, e) { var n, i; return "string" == typeof e ? e : (n = e.token) ? ie[n] ? ie[n](t) : dt(t, n) : e.maybe && (i = ft(t, e.maybe), i.match(/[1-9]/)) ? i : "" }

	function pt(t, e, n, i, r) { var s; return t = jt.moment.parseZone(t), e = jt.moment.parseZone(e), s = t.localeData(), n = s.longDateFormat(n) || n, i = i || " - ", vt(t, e, yt(n), i, r) }

	function vt(t, e, n, i, r) { var s, o, l, a, u = t.clone().stripZone(),
			c = e.clone().stripZone(),
			d = "",
			h = "",
			f = "",
			g = "",
			p = ""; for(o = 0; o < n.length && (s = mt(t, e, u, c, n[o]), s !== !1); o++) d += s; for(l = n.length - 1; l > o && (s = mt(t, e, u, c, n[l]), s !== !1); l--) h = s + h; for(a = o; a <= l; a++) f += gt(t, n[a]), g += gt(e, n[a]); return(f || g) && (p = r ? g + i + f : f + i + g), d + p + h }

	function mt(t, e, n, i, r) { var s, o; return "string" == typeof r ? r : !!((s = r.token) && (o = re[s.charAt(0)], o && n.isSame(i, o))) && dt(t, s) }

	function yt(t) { return t in se ? se[t] : se[t] = St(t) }

	function St(t) { for(var e, n = [], i = /\[([^\]]*)\]|\(([^\)]*)\)|(LTS|LT|(\w)\4*o?)|([^\w\[\(]+)/g; e = i.exec(t);) e[1] ? n.push(e[1]) : e[2] ? n.push({ maybe: St(e[2]) }) : e[3] ? n.push({ token: e[3] }) : e[5] && n.push(e[5]); return n }

	function wt() {}

	function Et(t, e) { var n; return X(e, "constructor") && (n = e.constructor), "function" != typeof n && (n = e.constructor = function() { t.apply(this, arguments) }), n.prototype = Z(t.prototype), $(e, n.prototype), $(t, n), n }

	function bt(t, e) { $(e, t.prototype) }

	function Dt(t, e) { return !t && !e || !(!t || !e) && (t.component === e.component && Ct(t, e) && Ct(e, t)) }

	function Ct(t, e) { for(var n in t)
			if(!/^(component|left|right|top|bottom)$/.test(n) && t[n] !== e[n]) return !1; return !0 }

	function Ht(t) { return { start: t.start.clone(), end: t.end ? t.end.clone() : null, allDay: t.allDay } }

	function Tt(t) { var e = Rt(t); return "background" === e || "inverse-background" === e }

	function xt(t) { return "inverse-background" === Rt(t) }

	function Rt(t) { return J((t.source || {}).rendering, t.rendering) }

	function It(t) { var e, n, i = {}; for(e = 0; e < t.length; e++) n = t[e], (i[n._id] || (i[n._id] = [])).push(n); return i }

	function kt(t, e) { return t.start - e.start }

	function Lt(n) { var i, r, s, o, l = jt.dataAttrPrefix; return l && (l += "-"), i = n.data(l + "event") || null, i && (i = "object" == typeof i ? t.extend({}, i) : {}, r = i.start, null == r && (r = i.time), s = i.duration, o = i.stick, delete i.start, delete i.time, delete i.duration, delete i.stick), null == r && (r = n.data(l + "start")), null == r && (r = n.data(l + "time")), null == s && (s = n.data(l + "duration")), null == o && (o = n.data(l + "stick")), r = null != r ? e.duration(r) : null, s = null != s ? e.duration(s) : null, o = Boolean(o), { eventProps: i, startTime: r, duration: s, stick: o } }

	function Mt(t, e) { var n, i; for(n = 0; n < e.length; n++)
			if(i = e[n], i.leftCol <= t.rightCol && i.rightCol >= t.leftCol) return !0; return !1 }

	function zt(t, e) { return t.leftCol - e.leftCol }

	function Bt(t) { var e, n, i, r = []; for(e = 0; e < t.length; e++) { for(n = t[e], i = 0; i < r.length && Gt(n, r[i]).length; i++);
			n.level = i, (r[i] || (r[i] = [])).push(n) } return r }

	function Ft(t) { var e, n, i, r, s; for(e = 0; e < t.length; e++)
			for(n = t[e], i = 0; i < n.length; i++)
				for(r = n[i], r.forwardSegs = [], s = e + 1; s < t.length; s++) Gt(r, t[s], r.forwardSegs) }

	function Nt(t) { var e, n, i = t.forwardSegs,
			r = 0; if(void 0 === t.forwardPressure) { for(e = 0; e < i.length; e++) n = i[e], Nt(n), r = Math.max(r, 1 + n.forwardPressure);
			t.forwardPressure = r } }

	function Gt(t, e, n) { n = n || []; for(var i = 0; i < e.length; i++) Ot(t, e[i]) && n.push(e[i]); return n }

	function Ot(t, e) { return t.bottom > e.top && t.top < e.bottom }

	function At(n, i) {
		function r(t) { t._locale = U }

		function s() { $ ? u() && (g(), c()) : o() }

		function o() { n.addClass("fc"), n.on("click.fc", "a[data-goto]", function(e) { var n = t(this),
					i = n.data("goto"),
					r = j.moment(i.date),
					s = i.type,
					o = K.opt("navLink" + rt(s) + "Click"); "function" == typeof o ? o(r, e) : ("string" == typeof o && (s = o), N(r, s)) }), j.bindOption("theme", function(t) { X = t ? "ui" : "fc", n.toggleClass("ui-widget", t), n.toggleClass("fc-unthemed", !t) }), j.bindOptions(["isRTL", "locale"], function(t) { n.toggleClass("fc-ltr", !t), n.toggleClass("fc-rtl", t) }), $ = t("<div class='fc-view-container'/>").prependTo(n), q = j.header = new _t(j), l(), c(j.options.defaultView), j.options.handleWindowResize && (J = at(m, j.options.windowResizeDelay), t(window).resize(J)) }

		function l() { q.render(), q.el && n.prepend(q.el) }

		function a() { K && K.removeElement(), q.removeElement(), $.remove(), n.removeClass("fc fc-ltr fc-rtl fc-unthemed ui-widget"), n.off(".fc"), J && t(window).unbind("resize", J) }

		function u() { return n.is(":visible") }

		function c(e, n) { lt++, K && e && K.type !== e && (O(), d()), !K && e && (K = j.view = ot[e] || (ot[e] = j.instantiateView(e)), K.setElement(t("<div class='fc-view fc-" + e + "-view' />").appendTo($)), q.activateButton(e)), K && (tt = K.massageCurrentDate(tt), K.displaying && tt >= K.intervalStart && tt < K.intervalEnd || u() && (K.display(tt, n), A(), H(), T(), E())), A(), lt-- }

		function d() { q.deactivateButton(K.type), K.removeElement(), K = j.view = null }

		function h() { lt++, O(); var t = K.type,
				e = K.queryScroll();
			d(), c(t, e), A(), lt-- }

		function f(t) { if(u()) return t && p(), lt++, K.updateSize(!0), lt--, !0 }

		function g() { u() && p() }

		function p() { var t = j.options.contentHeight,
				e = j.options.height;
			Q = "number" == typeof t ? t : "function" == typeof t ? t() : "number" == typeof e ? e - v() : "function" == typeof e ? e() - v() : "parent" === e ? n.parent().height() - v() : Math.round($.width() / Math.max(j.options.aspectRatio, .5)) }

		function v() { return q.el ? q.el.outerHeight(!0) : 0 }

		function m(t) {!lt && t.target === window && K.start && f(!0) && K.trigger("windowResize", st) }

		function y() { b() }

		function S(t) { it(j.getEventSourcesByMatchArray(t)) }

		function w() { u() && (O(), K.displayEvents(ut), A()) }

		function E() {!j.options.lazyFetching || et(K.start, K.end) ? b() : w() }

		function b() { nt(K.start, K.end) }

		function D(t) { ut = t, w() }

		function C() { w() }

		function H() { q.updateTitle(K.title) }

		function T() { var t = j.getNow();
			t >= K.intervalStart && t < K.intervalEnd ? q.disableButton("today") : q.enableButton("today") }

		function x(t, e) { K.select(j.buildSelectSpan.apply(j, arguments)) }

		function R() { K && K.unselect() }

		function I() { tt = K.computePrevDate(tt), c() }

		function k() { tt = K.computeNextDate(tt), c() }

		function L() { tt.add(-1, "years"), c() }

		function M() { tt.add(1, "years"), c() }

		function z() { tt = j.getNow(), c() }

		function B(t) { tt = j.moment(t).stripZone(), c() }

		function F(t) { tt.add(e.duration(t)), c() }

		function N(t, e) { var n;
			e = e || "day", n = j.getViewSpec(e) || j.getUnitViewSpec(e), tt = t.clone(), c(n ? n.type : null) }

		function G() { return j.applyTimezone(tt) }

		function O() { $.css({ width: "100%", height: $.height(), overflow: "hidden" }) }

		function A() { $.css({ width: "", height: "", overflow: "" }) }

		function V() { return j }

		function P() { return K }

		function _(t, e) { var n; if("string" == typeof t) { if(void 0 === e) return j.options[t];
				n = {}, n[t] = e, Y(n) } else "object" == typeof t && Y(t) }

		function Y(t) { var e, n = 0; for(e in t) j.dynamicOverrides[e] = t[e];
			j.viewSpecCache = {}, j.populateOptionsHash(); for(e in t) j.triggerOptionHandlers(e), n++; if(1 === n) { if("height" === e || "contentHeight" === e || "aspectRatio" === e) return void f(!0); if("defaultDate" === e) return; if("businessHours" === e) return void(K && (K.unrenderBusinessHours(), K.renderBusinessHours())); if("timezone" === e) return j.rezoneArrayEventSources(), void y() } l(), ot = {}, h() }

		function W(t, e) { var n = Array.prototype.slice.call(arguments, 2); if(e = e || st, this.triggerWith(t, e, n), j.options[t]) return j.options[t].apply(e, n) } var j = this;
		j.render = s, j.destroy = a, j.refetchEvents = y, j.refetchEventSources = S, j.reportEvents = D, j.reportEventChange = C, j.rerenderEvents = w, j.changeView = c, j.select = x, j.unselect = R, j.prev = I, j.next = k, j.prevYear = L, j.nextYear = M, j.today = z, j.gotoDate = B, j.incrementDate = F, j.zoomTo = N, j.getDate = G, j.getCalendar = V, j.getView = P, j.option = _, j.trigger = W, j.dynamicOverrides = {}, j.viewSpecCache = {}, j.optionHandlers = {}, j.overrides = t.extend({}, i), j.populateOptionsHash(); var U;
		j.bindOptions(["locale", "monthNames", "monthNamesShort", "dayNames", "dayNamesShort", "firstDay", "weekNumberCalculation"], function(t, e, n, i, s, o, l) { if("iso" === l && (l = "ISO"), U = Z(Pt(t)), e && (U._months = e), n && (U._monthsShort = n), i && (U._weekdays = i), s && (U._weekdaysShort = s), null == o && "ISO" === l && (o = 1), null != o) { var a = Z(U._week);
				a.dow = o, U._week = a } "ISO" !== l && "local" !== l && "function" != typeof l || (U._fullCalendar_weekCalc = l), tt && r(tt) }), j.defaultAllDayEventDuration = e.duration(j.options.defaultAllDayEventDuration), j.defaultTimedEventDuration = e.duration(j.options.defaultTimedEventDuration), j.moment = function() { var t; return "local" === j.options.timezone ? (t = jt.moment.apply(null, arguments), t.hasTime() && t.local()) : t = "UTC" === j.options.timezone ? jt.moment.utc.apply(null, arguments) : jt.moment.parseZone.apply(null, arguments), r(t), t }, j.localizeMoment = r, j.getIsAmbigTimezone = function() { return "local" !== j.options.timezone && "UTC" !== j.options.timezone }, j.applyTimezone = function(t) { if(!t.hasTime()) return t.clone(); var e, n = j.moment(t.toArray()),
				i = t.time() - n.time(); return i && (e = n.clone().add(i), t.time() - e.time() === 0 && (n = e)), n }, j.getNow = function() { var t = j.options.now; return "function" == typeof t && (t = t()), j.moment(t).stripZone() }, j.getEventEnd = function(t) { return t.end ? t.end.clone() : j.getDefaultEventEnd(t.allDay, t.start) }, j.getDefaultEventEnd = function(t, e) { var n = e.clone(); return t ? n.stripTime().add(j.defaultAllDayEventDuration) : n.add(j.defaultTimedEventDuration), j.getIsAmbigTimezone() && n.stripZone(), n }, j.humanizeDuration = function(t) { return t.locale(j.options.locale).humanize() }, Yt.call(j); var q, $, X, K, Q, J, tt, et = j.isFetchNeeded,
			nt = j.fetchEvents,
			it = j.fetchEventSources,
			st = n[0],
			ot = {},
			lt = 0,
			ut = [];
		tt = null != j.options.defaultDate ? j.moment(j.options.defaultDate).stripZone() : j.getNow(), j.getSuggestedViewHeight = function() { return void 0 === Q && g(), Q }, j.isHeightAuto = function() { return "auto" === j.options.contentHeight || "auto" === j.options.height }, j.freezeContentHeight = O, j.unfreezeContentHeight = A, j.initialize() }

	function Vt(e) { t.each(Ce, function(t, n) { null == e[t] && (e[t] = n(e)) }) }

	function Pt(t) { return e.localeData(t) || e.localeData("en") }

	function _t(e) {
		function n() { var n = e.options,
				s = n.header;
			f = n.theme ? "ui" : "fc", s ? (h ? h.empty() : h = this.el = t("<div class='fc-toolbar'/>"), h.append(r("left")).append(r("right")).append(r("center")).append('<div class="fc-clear"/>')) : i() }

		function i() { h && (h.remove(), h = d.el = null) }

		function r(n) { var i = t('<div class="fc-' + n + '"/>'),
				r = e.options,
				s = r.header[n]; return s && t.each(s.split(" "), function(n) { var s, o = t(),
					l = !0;
				t.each(this.split(","), function(n, i) { var s, a, u, c, d, h, p, v, m, y; "title" == i ? (o = o.add(t("<h2>&nbsp;</h2>")), l = !1) : ((s = (r.customButtons || {})[i]) ? (u = function(t) { s.click && s.click.call(y[0], t) }, c = "", d = s.text) : (a = e.getViewSpec(i)) ? (u = function() { e.changeView(i) }, g.push(i), c = a.buttonTextOverride, d = a.buttonTextDefault) : e[i] && (u = function() { e[i]() }, c = (e.overrides.buttonText || {})[i], d = r.buttonText[i]), u && (h = s ? s.themeIcon : r.themeButtonIcons[i], p = s ? s.icon : r.buttonIcons[i], v = c ? tt(c) : h && r.theme ? "<span class='ui-icon ui-icon-" + h + "'></span>" : p && !r.theme ? "<span class='fc-icon fc-icon-" + p + "'></span>" : tt(d), m = ["fc-" + i + "-button", f + "-button", f + "-state-default"], y = t('<button type="button" class="' + m.join(" ") + '">' + v + "</button>").click(function(t) { y.hasClass(f + "-state-disabled") || (u(t), (y.hasClass(f + "-state-active") || y.hasClass(f + "-state-disabled")) && y.removeClass(f + "-state-hover")) }).mousedown(function() { y.not("." + f + "-state-active").not("." + f + "-state-disabled").addClass(f + "-state-down") }).mouseup(function() { y.removeClass(f + "-state-down") }).hover(function() { y.not("." + f + "-state-active").not("." + f + "-state-disabled").addClass(f + "-state-hover") }, function() { y.removeClass(f + "-state-hover").removeClass(f + "-state-down") }), o = o.add(y))) }), l && o.first().addClass(f + "-corner-left").end().last().addClass(f + "-corner-right").end(), o.length > 1 ? (s = t("<div/>"), l && s.addClass("fc-button-group"), s.append(o), i.append(s)) : i.append(o) }), i }

		function s(t) { h && h.find("h2").text(t) }

		function o(t) { h && h.find(".fc-" + t + "-button").addClass(f + "-state-active") }

		function l(t) { h && h.find(".fc-" + t + "-button").removeClass(f + "-state-active") }

		function a(t) { h && h.find(".fc-" + t + "-button").prop("disabled", !0).addClass(f + "-state-disabled") }

		function u(t) { h && h.find(".fc-" + t + "-button").prop("disabled", !1).removeClass(f + "-state-disabled") }

		function c() { return g } var d = this;
		d.render = n, d.removeElement = i, d.updateTitle = s, d.activateButton = o, d.deactivateButton = l, d.disableButton = a, d.enableButton = u, d.getViewsWithButtons = c, d.el = null; var h, f, g = [] }

	function Yt() {
		function n(t, e) { return !A || t < A || e > V }

		function i(t, e) { A = t, V = e, r(Y, "reset") }

		function r(t, e) { var n, i; for("reset" === e ? j = [] : "add" !== e && (j = w(j, t)), n = 0; n < t.length; n++) i = t[n], "pending" !== i._status && W++, i._fetchId = (i._fetchId || 0) + 1, i._status = "pending"; for(n = 0; n < t.length; n++) i = t[n], s(i, i._fetchId) }

		function s(e, n) { a(e, function(i) { var r, s, o, a = t.isArray(e.events); if(n === e._fetchId && "rejected" !== e._status) { if(e._status = "resolved", i)
						for(r = 0; r < i.length; r++) s = i[r], o = a ? s : R(s, e), o && j.push.apply(j, M(o));
					l() } }) }

		function o(t) { var e = "pending" === t._status;
			t._status = "rejected", e && l() }

		function l() { W--, W || P(j) }

		function a(e, n) { var i, r, s = jt.sourceFetchers; for(i = 0; i < s.length; i++) { if(r = s[i].call(F, e, A.clone(), V.clone(), F.options.timezone, n), r === !0) return; if("object" == typeof r) return void a(r, n) } var o = e.events; if(o) t.isFunction(o) ? (F.pushLoading(), o.call(F, A.clone(), V.clone(), F.options.timezone, function(t) { n(t), F.popLoading() })) : t.isArray(o) ? n(o) : n();
			else { var l = e.url; if(l) { var u, c = e.success,
						d = e.error,
						h = e.complete;
					u = t.isFunction(e.data) ? e.data() : e.data; var f = t.extend({}, u || {}),
						g = J(e.startParam, F.options.startParam),
						p = J(e.endParam, F.options.endParam),
						v = J(e.timezoneParam, F.options.timezoneParam);
					g && (f[g] = A.format()), p && (f[p] = V.format()), F.options.timezone && "local" != F.options.timezone && (f[v] = F.options.timezone), F.pushLoading(), t.ajax(t.extend({}, He, e, { data: f, success: function(e) { e = e || []; var i = Q(c, this, arguments);
							t.isArray(i) && (e = i), n(e) }, error: function() { Q(d, this, arguments), n() }, complete: function() { Q(h, this, arguments), F.popLoading() } })) } else n() } }

		function u(t) { var e = c(t);
			e && (Y.push(e), r([e], "add")) }

		function c(e) { var n, i, r = jt.sourceNormalizers; if(t.isFunction(e) || t.isArray(e) ? n = { events: e } : "string" == typeof e ? n = { url: e } : "object" == typeof e && (n = t.extend({}, e)), n) { for(n.className ? "string" == typeof n.className && (n.className = n.className.split(/\s+/)) : n.className = [], t.isArray(n.events) && (n.origArray = n.events, n.events = t.map(n.events, function(t) { return R(t, n) })), i = 0; i < r.length; i++) r[i].call(F, n); return n } }

		function d(t) { f(m(t)) }

		function h(t) { null == t ? f(Y, !0) : f(v(t)) }

		function f(e, n) { var i; for(i = 0; i < e.length; i++) o(e[i]);
			n ? (Y = [], j = []) : (Y = t.grep(Y, function(t) { for(i = 0; i < e.length; i++)
					if(t === e[i]) return !1; return !0 }), j = w(j, e)), P(j) }

		function g() { return Y.slice(1) }

		function p(e) { return t.grep(Y, function(t) { return t.id && t.id === e })[0] }

		function v(e) { e ? t.isArray(e) || (e = [e]) : e = []; var n, i = []; for(n = 0; n < e.length; n++) i.push.apply(i, m(e[n])); return i }

		function m(e) { var n, i; for(n = 0; n < Y.length; n++)
				if(i = Y[n], i === e) return [i]; return i = p(e), i ? [i] : t.grep(Y, function(t) { return y(e, t) }) }

		function y(t, e) { return t && e && S(t) == S(e) }

		function S(t) { return("object" == typeof t ? t.origArray || t.googleCalendarId || t.url || t.events : null) || t }

		function w(e, n) { return t.grep(e, function(t) { for(var e = 0; e < n.length; e++)
					if(t.source === n[e]) return !1; return !0 }) }

		function E(t) { t.start = F.moment(t.start), t.end ? t.end = F.moment(t.end) : t.end = null, z(t, b(t)), P(j) }

		function b(e) { var n = {}; return t.each(e, function(t, e) { D(t) && void 0 !== e && K(e) && (n[t] = e) }), n }

		function D(t) { return !/^_|^(id|allDay|start|end)$/.test(t) }

		function C(t, e) { var n, i, r, s = R(t); if(s) { for(n = M(s), i = 0; i < n.length; i++) r = n[i], r.source || (e && (_.events.push(r), r.source = _), j.push(r)); return P(j), n } return [] }

		function H(e) { var n, i; for(null == e ? e = function() { return !0 } : t.isFunction(e) || (n = e + "", e = function(t) { return t._id == n }), j = t.grep(j, e, !0), i = 0; i < Y.length; i++) t.isArray(Y[i].events) && (Y[i].events = t.grep(Y[i].events, e, !0));
			P(j) }

		function T(e) { return t.isFunction(e) ? t.grep(j, e) : null != e ? (e += "", t.grep(j, function(t) { return t._id == e })) : j }

		function x(t) { t.start = F.moment(t.start), t.end && (t.end = F.moment(t.end)), Wt(t) }

		function R(n, i) { var r, s, o, l = {}; if(F.options.eventDataTransform && (n = F.options.eventDataTransform(n)), i && i.eventDataTransform && (n = i.eventDataTransform(n)), t.extend(l, n), i && (l.source = i), l._id = n._id || (void 0 === n.id ? "_fc" + Te++ : n.id + ""), n.className ? "string" == typeof n.className ? l.className = n.className.split(/\s+/) : l.className = n.className : l.className = [], r = n.start || n.date, s = n.end, U(r) && (r = e.duration(r)), U(s) && (s = e.duration(s)), n.dow || e.isDuration(r) || e.isDuration(s)) l.start = r ? e.duration(r) : null, l.end = s ? e.duration(s) : null, l._recurring = !0;
			else { if(r && (r = F.moment(r), !r.isValid())) return !1;
				s && (s = F.moment(s), s.isValid() || (s = null)), o = n.allDay, void 0 === o && (o = J(i ? i.allDayDefault : void 0, F.options.allDayDefault)), I(r, s, o, l) } return F.normalizeEvent(l), l }

		function I(t, e, n, i) { i.start = t, i.end = e, i.allDay = n, k(i), Wt(i) }

		function k(t) { L(t), t.end && !t.end.isAfter(t.start) && (t.end = null), t.end || (F.options.forceEventDuration ? t.end = F.getDefaultEventEnd(t.allDay, t.start) : t.end = null) }

		function L(t) { null == t.allDay && (t.allDay = !(t.start.hasTime() || t.end && t.end.hasTime())), t.allDay ? (t.start.stripTime(), t.end && t.end.stripTime()) : (t.start.hasTime() || (t.start = F.applyTimezone(t.start.time(0))), t.end && !t.end.hasTime() && (t.end = F.applyTimezone(t.end.time(0)))) }

		function M(e, n, i) { var r, s, o, l, a, u, c, d, h, f = []; if(n = n || A, i = i || V, e)
				if(e._recurring) { if(s = e.dow)
						for(r = {}, o = 0; o < s.length; o++) r[s[o]] = !0; for(l = n.clone().stripTime(); l.isBefore(i);) r && !r[l.day()] || (a = e.start, u = e.end, c = l.clone(), d = null, a && (c = c.time(a)), u && (d = l.clone().time(u)), h = t.extend({}, e), I(c, d, !a && !u, h), f.push(h)), l.add(1, "days") } else f.push(e); return f }

		function z(e, n, i) {
			function r(t, e) { return i ? O(t, e, i) : n.allDay ? G(t, e) : N(t, e) } var s, o, l, a, u, c, d = {}; return n = n || {}, n.start || (n.start = e.start.clone()), void 0 === n.end && (n.end = e.end ? e.end.clone() : null), null == n.allDay && (n.allDay = e.allDay), k(n), s = { start: e._start.clone(), end: e._end ? e._end.clone() : F.getDefaultEventEnd(e._allDay, e._start), allDay: n.allDay }, k(s), o = null !== e._end && null === n.end, l = r(n.start, s.start), n.end ? (a = r(n.end, s.end), u = a.subtract(l)) : u = null, t.each(n, function(t, e) { D(t) && void 0 !== e && (d[t] = e) }), c = B(T(e._id), o, n.allDay, l, u, d), { dateDelta: l, durationDelta: u, undo: c } }

		function B(e, n, i, r, s, o) { var l = F.getIsAmbigTimezone(),
				a = []; return r && !r.valueOf() && (r = null), s && !s.valueOf() && (s = null), t.each(e, function(e, u) { var c, d;
					c = { start: u.start.clone(), end: u.end ? u.end.clone() : null, allDay: u.allDay }, t.each(o, function(t) { c[t] = u[t] }), d = { start: u._start, end: u._end, allDay: i }, k(d), n ? d.end = null : s && !d.end && (d.end = F.getDefaultEventEnd(d.allDay, d.start)), r && (d.start.add(r), d.end && d.end.add(r)), s && d.end.add(s), l && !d.allDay && (r || s) && (d.start.stripZone(), d.end && d.end.stripZone()), t.extend(u, o, d), Wt(u), a.push(function() { t.extend(u, c), Wt(u) }) }),
				function() { for(var t = 0; t < a.length; t++) a[t]() } } var F = this;
		F.isFetchNeeded = n, F.fetchEvents = i, F.fetchEventSources = r, F.getEventSources = g, F.getEventSourceById = p, F.getEventSourcesByMatchArray = v, F.getEventSourcesByMatch = m, F.addEventSource = u, F.removeEventSource = d, F.removeEventSources = h, F.updateEvent = E, F.renderEvent = C, F.removeEvents = H, F.clientEvents = T, F.mutateEvent = z, F.normalizeEventDates = k, F.normalizeEventTimes = L; var A, V, P = F.reportEvents,
			_ = { events: [] },
			Y = [_],
			W = 0,
			j = [];
		t.each((F.options.events ? [F.options.events] : []).concat(F.options.eventSources || []), function(t, e) { var n = c(e);
			n && Y.push(n) }), F.rezoneArrayEventSources = function() { var e, n, i; for(e = 0; e < Y.length; e++)
				if(n = Y[e].events, t.isArray(n))
					for(i = 0; i < n.length; i++) x(n[i]) }, F.buildEventFromInput = R, F.expandEvent = M, F.getEventCache = function() { return j } }

	function Wt(t) { t._allDay = t.allDay, t._start = t.start.clone(), t._end = t.end ? t.end.clone() : null }
	var jt = t.fullCalendar = { version: "3.0.0", internalApiVersion: 6 },
		Ut = jt.views = {};
	t.fn.fullCalendar = function(e) { var n = Array.prototype.slice.call(arguments, 1),
			i = this; return this.each(function(r, s) { var o, l = t(s),
				a = l.data("fullCalendar"); "string" == typeof e ? a && t.isFunction(a[e]) && (o = a[e].apply(a, n), r || (i = o), "destroy" === e && l.removeData("fullCalendar")) : a || (a = new we(l, e), l.data("fullCalendar", a), a.render()) }), i };
	var qt = ["header", "buttonText", "buttonIcons", "themeButtonIcons"];
	jt.intersectRanges = F, jt.applyAll = Q, jt.debounce = at, jt.isInt = ot, jt.htmlEscape = tt, jt.cssToStr = nt, jt.proxy = lt, jt.capitaliseFirstLetter = rt, jt.getOuterRect = h, jt.getClientRect = f, jt.getContentRect = g, jt.getScrollbarWidths = p;
	var Zt = null;
	jt.preventDefault = C, jt.intersectRects = x, jt.parseFieldSpecs = L, jt.compareByFieldSpecs = M, jt.compareByFieldSpec = z, jt.flexibleCompare = B, jt.computeIntervalUnit = A, jt.divideRangeByDuration = P, jt.divideDurationByDuration = _, jt.multiplyDuration = Y, jt.durationHasTime = W;
	var $t = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"],
		Xt = ["year", "month", "week", "day", "hour", "minute", "second", "millisecond"];
	jt.log = function() { var t = window.console; if(t && t.log) return t.log.apply(t, arguments) }, jt.warn = function() { var t = window.console; return t && t.warn ? t.warn.apply(t, arguments) : jt.log.apply(jt, arguments) };
	var Kt = {}.hasOwnProperty,
		Qt = /^\s*\d{4}-\d\d$/,
		Jt = /^\s*\d{4}-(?:(\d\d-\d\d)|(W\d\d$)|(W\d\d-\d)|(\d\d\d))((T| )(\d\d(:\d\d(:\d\d(\.\d+)?)?)?)?)?$/,
		te = e.fn,
		ee = t.extend({}, te),
		ne = e.momentProperties;
	ne.push("_fullCalendar"), ne.push("_ambigTime"), ne.push("_ambigZone"), jt.moment = function() { return ct(arguments) }, jt.moment.utc = function() { var t = ct(arguments, !0); return t.hasTime() && t.utc(), t }, jt.moment.parseZone = function() { return ct(arguments, !0, !0) }, te.week = te.weeks = function(t) { var e = this._locale._fullCalendar_weekCalc; return null == t && "function" == typeof e ? e(this) : "ISO" === e ? ee.isoWeek.apply(this, arguments) : ee.week.apply(this, arguments) }, te.time = function(t) { if(!this._fullCalendar) return ee.time.apply(this, arguments); if(null == t) return e.duration({ hours: this.hours(), minutes: this.minutes(), seconds: this.seconds(), milliseconds: this.milliseconds() });
		this._ambigTime = !1, e.isDuration(t) || e.isMoment(t) || (t = e.duration(t)); var n = 0; return e.isDuration(t) && (n = 24 * Math.floor(t.asDays())), this.hours(n + t.hours()).minutes(t.minutes()).seconds(t.seconds()).milliseconds(t.milliseconds()) }, te.stripTime = function() { return this._ambigTime || (this.utc(!0), this.set({ hours: 0, minutes: 0, seconds: 0, ms: 0 }), this._ambigTime = !0, this._ambigZone = !0), this }, te.hasTime = function() { return !this._ambigTime }, te.stripZone = function() { var t; return this._ambigZone || (t = this._ambigTime, this.utc(!0), this._ambigTime = t || !1, this._ambigZone = !0), this }, te.hasZone = function() { return !this._ambigZone }, te.local = function(t) { return ee.local.call(this, this._ambigZone || t), this._ambigTime = !1, this._ambigZone = !1, this }, te.utc = function(t) { return ee.utc.call(this, t), this._ambigTime = !1, this._ambigZone = !1, this }, te.utcOffset = function(t) { return null != t && (this._ambigTime = !1, this._ambigZone = !1), ee.utcOffset.apply(this, arguments) }, te.format = function() { return this._fullCalendar && arguments[0] ? ht(this, arguments[0]) : this._ambigTime ? dt(this, "YYYY-MM-DD") : this._ambigZone ? dt(this, "YYYY-MM-DD[T]HH:mm:ss") : ee.format.apply(this, arguments) }, te.toISOString = function() { return this._ambigTime ? dt(this, "YYYY-MM-DD") : this._ambigZone ? dt(this, "YYYY-MM-DD[T]HH:mm:ss") : ee.toISOString.apply(this, arguments) };
	var ie = { t: function(t) { return dt(t, "a").charAt(0) }, T: function(t) { return dt(t, "A").charAt(0) } };
	jt.formatRange = pt;
	var re = { Y: "year", M: "month", D: "day", d: "day", A: "second", a: "second", T: "second", t: "second", H: "second", h: "second", m: "second", s: "second" },
		se = {};
	jt.Class = wt, wt.extend = function() { var t, e, n = arguments.length; for(t = 0; t < n; t++) e = arguments[t], t < n - 1 && bt(this, e); return Et(this, e || {}) }, wt.mixin = function(t) { bt(this, t) };
	var oe = jt.EmitterMixin = { on: function(e, n) { var i = function(t, e) { return n.apply(e.context || this, e.args || []) }; return n.guid || (n.guid = t.guid++), i.guid = n.guid, t(this).on(e, i), this }, off: function(e, n) { return t(this).off(e, n), this }, trigger: function(e) { var n = Array.prototype.slice.call(arguments, 1); return t(this).triggerHandler(e, { args: n }), this }, triggerWith: function(e, n, i) { return t(this).triggerHandler(e, { context: n, args: i }), this } },
		le = jt.ListenerMixin = function() { var e = 0,
				n = { listenerId: null, listenTo: function(e, n, i) { if("object" == typeof n)
							for(var r in n) n.hasOwnProperty(r) && this.listenTo(e, r, n[r]);
						else "string" == typeof n && e.on(n + "." + this.getListenerNamespace(), t.proxy(i, this)) }, stopListeningTo: function(t, e) { t.off((e || "") + "." + this.getListenerNamespace()) }, getListenerNamespace: function() { return null == this.listenerId && (this.listenerId = e++), "_listener" + this.listenerId } }; return n }(),
		ae = { isIgnoringMouse: !1, delayUnignoreMouse: null, initMouseIgnoring: function(t) { this.delayUnignoreMouse = at(lt(this, "unignoreMouse"), t || 1e3) }, tempIgnoreMouse: function() { this.isIgnoringMouse = !0, this.delayUnignoreMouse() }, unignoreMouse: function() { this.isIgnoringMouse = !1 } },
		ue = wt.extend(le, {
			isHidden: !0,
			options: null,
			el: null,
			margin: 10,
			constructor: function(t) { this.options = t || {} },
			show: function() { this.isHidden && (this.el || this.render(), this.el.show(), this.position(), this.isHidden = !1, this.trigger("show")) },
			hide: function() { this.isHidden || (this.el.hide(), this.isHidden = !0, this.trigger("hide")) },
			render: function() {
				var e = this,
					n = this.options;
				this.el = t('<div class="fc-popover"/>').addClass(n.className || "").css({ top: 0, left: 0 }).append(n.content).appendTo(n.parentEl),
					this.el.on("click", ".fc-close", function() { e.hide() }), n.autoHide && this.listenTo(t(document), "mousedown", this.documentMousedown)
			},
			documentMousedown: function(e) { this.el && !t(e.target).closest(this.el).length && this.hide() },
			removeElement: function() { this.hide(), this.el && (this.el.remove(), this.el = null), this.stopListeningTo(t(document), "mousedown") },
			position: function() { var e, n, i, r, s, o = this.options,
					l = this.el.offsetParent().offset(),
					a = this.el.outerWidth(),
					u = this.el.outerHeight(),
					c = t(window),
					h = d(this.el);
				r = o.top || 0, s = void 0 !== o.left ? o.left : void 0 !== o.right ? o.right - a : 0, h.is(window) || h.is(document) ? (h = c, e = 0, n = 0) : (i = h.offset(), e = i.top, n = i.left), e += c.scrollTop(), n += c.scrollLeft(), o.viewportConstrain !== !1 && (r = Math.min(r, e + h.outerHeight() - u - this.margin), r = Math.max(r, e + this.margin), s = Math.min(s, n + h.outerWidth() - a - this.margin), s = Math.max(s, n + this.margin)), this.el.css({ top: r - l.top, left: s - l.left }) },
			trigger: function(t) { this.options[t] && this.options[t].apply(this, Array.prototype.slice.call(arguments, 1)) }
		}),
		ce = jt.CoordCache = wt.extend({ els: null, forcedOffsetParentEl: null, origin: null, boundingRect: null, isHorizontal: !1, isVertical: !1, lefts: null, rights: null, tops: null, bottoms: null, constructor: function(e) { this.els = t(e.els), this.isHorizontal = e.isHorizontal, this.isVertical = e.isVertical, this.forcedOffsetParentEl = e.offsetParent ? t(e.offsetParent) : null }, build: function() { var t = this.forcedOffsetParentEl || this.els.eq(0).offsetParent();
				this.origin = t.offset(), this.boundingRect = this.queryBoundingRect(), this.isHorizontal && this.buildElHorizontals(), this.isVertical && this.buildElVerticals() }, clear: function() { this.origin = null, this.boundingRect = null, this.lefts = null, this.rights = null, this.tops = null, this.bottoms = null }, ensureBuilt: function() { this.origin || this.build() }, buildElHorizontals: function() { var e = [],
					n = [];
				this.els.each(function(i, r) { var s = t(r),
						o = s.offset().left,
						l = s.outerWidth();
					e.push(o), n.push(o + l) }), this.lefts = e, this.rights = n }, buildElVerticals: function() { var e = [],
					n = [];
				this.els.each(function(i, r) { var s = t(r),
						o = s.offset().top,
						l = s.outerHeight();
					e.push(o), n.push(o + l) }), this.tops = e, this.bottoms = n }, getHorizontalIndex: function(t) { this.ensureBuilt(); var e, n = this.lefts,
					i = this.rights,
					r = n.length; for(e = 0; e < r; e++)
					if(t >= n[e] && t < i[e]) return e }, getVerticalIndex: function(t) { this.ensureBuilt(); var e, n = this.tops,
					i = this.bottoms,
					r = n.length; for(e = 0; e < r; e++)
					if(t >= n[e] && t < i[e]) return e }, getLeftOffset: function(t) { return this.ensureBuilt(), this.lefts[t] }, getLeftPosition: function(t) { return this.ensureBuilt(), this.lefts[t] - this.origin.left }, getRightOffset: function(t) { return this.ensureBuilt(), this.rights[t] }, getRightPosition: function(t) { return this.ensureBuilt(), this.rights[t] - this.origin.left }, getWidth: function(t) { return this.ensureBuilt(), this.rights[t] - this.lefts[t] }, getTopOffset: function(t) { return this.ensureBuilt(), this.tops[t] }, getTopPosition: function(t) { return this.ensureBuilt(), this.tops[t] - this.origin.top }, getBottomOffset: function(t) { return this.ensureBuilt(), this.bottoms[t] }, getBottomPosition: function(t) { return this.ensureBuilt(), this.bottoms[t] - this.origin.top }, getHeight: function(t) { return this.ensureBuilt(), this.bottoms[t] - this.tops[t] }, queryBoundingRect: function() { var t = d(this.els.eq(0)); if(!t.is(document)) return f(t) }, isPointInBounds: function(t, e) { return this.isLeftInBounds(t) && this.isTopInBounds(e) }, isLeftInBounds: function(t) { return !this.boundingRect || t >= this.boundingRect.left && t < this.boundingRect.right }, isTopInBounds: function(t) { return !this.boundingRect || t >= this.boundingRect.top && t < this.boundingRect.bottom } }),
		de = jt.DragListener = wt.extend(le, ae, { options: null, subjectEl: null, originX: null, originY: null, scrollEl: null, isInteracting: !1, isDistanceSurpassed: !1, isDelayEnded: !1, isDragging: !1, isTouch: !1, delay: null, delayTimeoutId: null, minDistance: null, handleTouchScrollProxy: null, constructor: function(t) { this.options = t || {}, this.handleTouchScrollProxy = lt(this, "handleTouchScroll"), this.initMouseIgnoring(500) }, startInteraction: function(e, n) { var i = b(e); if("mousedown" === e.type) { if(this.isIgnoringMouse) return; if(!S(e)) return;
					e.preventDefault() } this.isInteracting || (n = n || {}, this.delay = J(n.delay, this.options.delay, 0), this.minDistance = J(n.distance, this.options.distance, 0), this.subjectEl = this.options.subjectEl, this.isInteracting = !0, this.isTouch = i, this.isDelayEnded = !1, this.isDistanceSurpassed = !1, this.originX = w(e), this.originY = E(e), this.scrollEl = d(t(e.target)), this.bindHandlers(), this.initAutoScroll(), this.handleInteractionStart(e), this.startDelay(e), this.minDistance || this.handleDistanceSurpassed(e)) }, handleInteractionStart: function(t) { this.trigger("interactionStart", t) }, endInteraction: function(t, e) { this.isInteracting && (this.endDrag(t), this.delayTimeoutId && (clearTimeout(this.delayTimeoutId), this.delayTimeoutId = null), this.destroyAutoScroll(), this.unbindHandlers(), this.isInteracting = !1, this.handleInteractionEnd(t, e), this.isTouch && this.tempIgnoreMouse()) }, handleInteractionEnd: function(t, e) { this.trigger("interactionEnd", t, e || !1) }, bindHandlers: function() { var e = this,
					n = 1;
				this.isTouch ? (this.listenTo(t(document), { touchmove: this.handleTouchMove, touchend: this.endInteraction, touchcancel: this.endInteraction, touchstart: function(t) { n ? n-- : e.endInteraction(t, !0) } }), !H(this.handleTouchScrollProxy) && this.scrollEl && this.listenTo(this.scrollEl, "scroll", this.handleTouchScroll)) : this.listenTo(t(document), { mousemove: this.handleMouseMove, mouseup: this.endInteraction }), this.listenTo(t(document), { selectstart: C, contextmenu: C }) }, unbindHandlers: function() { this.stopListeningTo(t(document)), T(this.handleTouchScrollProxy), this.scrollEl && this.stopListeningTo(this.scrollEl, "scroll") }, startDrag: function(t, e) { this.startInteraction(t, e), this.isDragging || (this.isDragging = !0, this.handleDragStart(t)) }, handleDragStart: function(t) { this.trigger("dragStart", t) }, handleMove: function(t) { var e, n = w(t) - this.originX,
					i = E(t) - this.originY,
					r = this.minDistance;
				this.isDistanceSurpassed || (e = n * n + i * i, e >= r * r && this.handleDistanceSurpassed(t)), this.isDragging && this.handleDrag(n, i, t) }, handleDrag: function(t, e, n) { this.trigger("drag", t, e, n), this.updateAutoScroll(n) }, endDrag: function(t) { this.isDragging && (this.isDragging = !1, this.handleDragEnd(t)) }, handleDragEnd: function(t) { this.trigger("dragEnd", t) }, startDelay: function(t) { var e = this;
				this.delay ? this.delayTimeoutId = setTimeout(function() { e.handleDelayEnd(t) }, this.delay) : this.handleDelayEnd(t) }, handleDelayEnd: function(t) { this.isDelayEnded = !0, this.isDistanceSurpassed && this.startDrag(t) }, handleDistanceSurpassed: function(t) { this.isDistanceSurpassed = !0, this.isDelayEnded && this.startDrag(t) }, handleTouchMove: function(t) { this.isDragging && t.preventDefault(), this.handleMove(t) }, handleMouseMove: function(t) { this.handleMove(t) }, handleTouchScroll: function(t) { this.isDragging || this.endInteraction(t, !0) }, trigger: function(t) { this.options[t] && this.options[t].apply(this, Array.prototype.slice.call(arguments, 1)), this["_" + t] && this["_" + t].apply(this, Array.prototype.slice.call(arguments, 1)) } });
	de.mixin({ isAutoScroll: !1, scrollBounds: null, scrollTopVel: null, scrollLeftVel: null, scrollIntervalId: null, scrollSensitivity: 30, scrollSpeed: 200, scrollIntervalMs: 50, initAutoScroll: function() { var t = this.scrollEl;
			this.isAutoScroll = this.options.scroll && t && !t.is(window) && !t.is(document), this.isAutoScroll && this.listenTo(t, "scroll", at(this.handleDebouncedScroll, 100)) }, destroyAutoScroll: function() { this.endAutoScroll(), this.isAutoScroll && this.stopListeningTo(this.scrollEl, "scroll") }, computeScrollBounds: function() { this.isAutoScroll && (this.scrollBounds = h(this.scrollEl)) }, updateAutoScroll: function(t) { var e, n, i, r, s = this.scrollSensitivity,
				o = this.scrollBounds,
				l = 0,
				a = 0;
			o && (e = (s - (E(t) - o.top)) / s, n = (s - (o.bottom - E(t))) / s, i = (s - (w(t) - o.left)) / s, r = (s - (o.right - w(t))) / s, e >= 0 && e <= 1 ? l = e * this.scrollSpeed * -1 : n >= 0 && n <= 1 && (l = n * this.scrollSpeed), i >= 0 && i <= 1 ? a = i * this.scrollSpeed * -1 : r >= 0 && r <= 1 && (a = r * this.scrollSpeed)), this.setScrollVel(l, a) }, setScrollVel: function(t, e) { this.scrollTopVel = t, this.scrollLeftVel = e, this.constrainScrollVel(), !this.scrollTopVel && !this.scrollLeftVel || this.scrollIntervalId || (this.scrollIntervalId = setInterval(lt(this, "scrollIntervalFunc"), this.scrollIntervalMs)) }, constrainScrollVel: function() { var t = this.scrollEl;
			this.scrollTopVel < 0 ? t.scrollTop() <= 0 && (this.scrollTopVel = 0) : this.scrollTopVel > 0 && t.scrollTop() + t[0].clientHeight >= t[0].scrollHeight && (this.scrollTopVel = 0), this.scrollLeftVel < 0 ? t.scrollLeft() <= 0 && (this.scrollLeftVel = 0) : this.scrollLeftVel > 0 && t.scrollLeft() + t[0].clientWidth >= t[0].scrollWidth && (this.scrollLeftVel = 0) }, scrollIntervalFunc: function() { var t = this.scrollEl,
				e = this.scrollIntervalMs / 1e3;
			this.scrollTopVel && t.scrollTop(t.scrollTop() + this.scrollTopVel * e), this.scrollLeftVel && t.scrollLeft(t.scrollLeft() + this.scrollLeftVel * e), this.constrainScrollVel(), this.scrollTopVel || this.scrollLeftVel || this.endAutoScroll() }, endAutoScroll: function() { this.scrollIntervalId && (clearInterval(this.scrollIntervalId), this.scrollIntervalId = null, this.handleScrollEnd()) }, handleDebouncedScroll: function() { this.scrollIntervalId || this.handleScrollEnd() }, handleScrollEnd: function() {} });
	var he = de.extend({ component: null, origHit: null, hit: null, coordAdjust: null, constructor: function(t, e) { de.call(this, e), this.component = t }, handleInteractionStart: function(t) { var e, n, i, r = this.subjectEl;
				this.computeCoords(), t ? (n = { left: w(t), top: E(t) }, i = n, r && (e = h(r), i = R(i, e)), this.origHit = this.queryHit(i.left, i.top), r && this.options.subjectCenter && (this.origHit && (e = x(this.origHit, e) || e), i = I(e)), this.coordAdjust = k(i, n)) : (this.origHit = null, this.coordAdjust = null), de.prototype.handleInteractionStart.apply(this, arguments) }, computeCoords: function() { this.component.prepareHits(), this.computeScrollBounds() }, handleDragStart: function(t) { var e;
				de.prototype.handleDragStart.apply(this, arguments), e = this.queryHit(w(t), E(t)), e && this.handleHitOver(e) }, handleDrag: function(t, e, n) { var i;
				de.prototype.handleDrag.apply(this, arguments), i = this.queryHit(w(n), E(n)), Dt(i, this.hit) || (this.hit && this.handleHitOut(), i && this.handleHitOver(i)) }, handleDragEnd: function() { this.handleHitDone(), de.prototype.handleDragEnd.apply(this, arguments) }, handleHitOver: function(t) { var e = Dt(t, this.origHit);
				this.hit = t, this.trigger("hitOver", this.hit, e, this.origHit) }, handleHitOut: function() { this.hit && (this.trigger("hitOut", this.hit), this.handleHitDone(), this.hit = null) }, handleHitDone: function() { this.hit && this.trigger("hitDone", this.hit) }, handleInteractionEnd: function() { de.prototype.handleInteractionEnd.apply(this, arguments), this.origHit = null, this.hit = null, this.component.releaseHits() }, handleScrollEnd: function() { de.prototype.handleScrollEnd.apply(this, arguments), this.computeCoords() }, queryHit: function(t, e) { return this.coordAdjust && (t += this.coordAdjust.left, e += this.coordAdjust.top), this.component.queryHit(t, e) } }),
		fe = wt.extend(le, { options: null, sourceEl: null, el: null, parentEl: null, top0: null, left0: null, y0: null, x0: null, topDelta: null, leftDelta: null, isFollowing: !1, isHidden: !1, isAnimating: !1, constructor: function(e, n) { this.options = n = n || {}, this.sourceEl = e, this.parentEl = n.parentEl ? t(n.parentEl) : e.parent() }, start: function(e) { this.isFollowing || (this.isFollowing = !0, this.y0 = E(e), this.x0 = w(e), this.topDelta = 0, this.leftDelta = 0, this.isHidden || this.updatePosition(), b(e) ? this.listenTo(t(document), "touchmove", this.handleMove) : this.listenTo(t(document), "mousemove", this.handleMove)) }, stop: function(e, n) {
				function i() { r.isAnimating = !1, r.removeElement(), r.top0 = r.left0 = null, n && n() } var r = this,
					s = this.options.revertDuration;
				this.isFollowing && !this.isAnimating && (this.isFollowing = !1, this.stopListeningTo(t(document)), e && s && !this.isHidden ? (this.isAnimating = !0, this.el.animate({ top: this.top0, left: this.left0 }, { duration: s, complete: i })) : i()) }, getEl: function() { var t = this.el; return t || (t = this.el = this.sourceEl.clone().addClass(this.options.additionalClass || "").css({ position: "absolute", visibility: "", display: this.isHidden ? "none" : "", margin: 0, right: "auto", bottom: "auto", width: this.sourceEl.width(), height: this.sourceEl.height(), opacity: this.options.opacity || "", zIndex: this.options.zIndex }), t.addClass("fc-unselectable"), t.appendTo(this.parentEl)), t }, removeElement: function() { this.el && (this.el.remove(), this.el = null) }, updatePosition: function() { var t, e;
				this.getEl(), null === this.top0 && (t = this.sourceEl.offset(), e = this.el.offsetParent().offset(), this.top0 = t.top - e.top, this.left0 = t.left - e.left), this.el.css({ top: this.top0 + this.topDelta, left: this.left0 + this.leftDelta }) }, handleMove: function(t) { this.topDelta = E(t) - this.y0, this.leftDelta = w(t) - this.x0, this.isHidden || this.updatePosition() }, hide: function() { this.isHidden || (this.isHidden = !0, this.el && this.el.hide()) }, show: function() { this.isHidden && (this.isHidden = !1, this.updatePosition(), this.getEl().show()) } }),
		ge = jt.Grid = wt.extend(le, ae, { hasDayInteractions: !0, view: null, isRTL: null, start: null, end: null, el: null, elsByFill: null, eventTimeFormat: null, displayEventTime: null, displayEventEnd: null, minResizeDuration: null, largeUnit: null, dayDragListener: null, segDragListener: null, segResizeListener: null, externalDragListener: null, constructor: function(t) { this.view = t, this.isRTL = t.opt("isRTL"), this.elsByFill = {}, this.dayDragListener = this.buildDayDragListener(), this.initMouseIgnoring() }, computeEventTimeFormat: function() { return this.view.opt("smallTimeFormat") }, computeDisplayEventTime: function() { return !0 }, computeDisplayEventEnd: function() { return !0 }, setRange: function(t) { this.start = t.start.clone(), this.end = t.end.clone(), this.rangeUpdated(), this.processRangeOptions() }, rangeUpdated: function() {}, processRangeOptions: function() { var t, e, n = this.view;
				this.eventTimeFormat = n.opt("eventTimeFormat") || n.opt("timeFormat") || this.computeEventTimeFormat(), t = n.opt("displayEventTime"), null == t && (t = this.computeDisplayEventTime()), e = n.opt("displayEventEnd"), null == e && (e = this.computeDisplayEventEnd()), this.displayEventTime = t, this.displayEventEnd = e }, spanToSegs: function(t) {}, diffDates: function(t, e) { return this.largeUnit ? O(t, e, this.largeUnit) : N(t, e) }, prepareHits: function() {}, releaseHits: function() {}, queryHit: function(t, e) {}, getHitSpan: function(t) {}, getHitEl: function(t) {}, setElement: function(t) { this.el = t, this.hasDayInteractions && (D(t), this.bindDayHandler("touchstart", this.dayTouchStart), this.bindDayHandler("mousedown", this.dayMousedown)), this.bindSegHandlers(), this.bindGlobalHandlers() }, bindDayHandler: function(e, n) { var i = this;
				this.el.on(e, function(e) { if(!t(e.target).is(i.segSelector + "," + i.segSelector + " *,.fc-more,a[data-goto]")) return n.call(i, e) }) }, removeElement: function() { this.unbindGlobalHandlers(), this.clearDragListeners(), this.el.remove() }, renderSkeleton: function() {}, renderDates: function() {}, unrenderDates: function() {}, bindGlobalHandlers: function() { this.listenTo(t(document), { dragstart: this.externalDragStart, sortstart: this.externalDragStart }) }, unbindGlobalHandlers: function() { this.stopListeningTo(t(document)) }, dayMousedown: function(t) { this.isIgnoringMouse || this.dayDragListener.startInteraction(t, {}) }, dayTouchStart: function(t) { var e = this.view;
				(e.isSelected || e.selectedEvent) && this.tempIgnoreMouse(), this.dayDragListener.startInteraction(t, { delay: this.view.opt("longPressDelay") }) }, buildDayDragListener: function() { var t, e, n = this,
					i = this.view,
					r = i.opt("selectable"),
					l = new he(this, { scroll: i.opt("dragScroll"), interactionStart: function() { t = l.origHit, e = null }, dragStart: function() { i.unselect() }, hitOver: function(i, o, l) { l && (o || (t = null), r && (e = n.computeSelection(n.getHitSpan(l), n.getHitSpan(i)), e ? n.renderSelection(e) : e === !1 && s())) }, hitOut: function() { t = null, e = null, n.unrenderSelection() }, hitDone: function() { o() }, interactionEnd: function(r, s) { s || (t && !n.isIgnoringMouse && i.triggerDayClick(n.getHitSpan(t), n.getHitEl(t), r), e && i.reportSelection(e, r)) } }); return l }, clearDragListeners: function() { this.dayDragListener.endInteraction(), this.segDragListener && this.segDragListener.endInteraction(), this.segResizeListener && this.segResizeListener.endInteraction(), this.externalDragListener && this.externalDragListener.endInteraction() }, renderEventLocationHelper: function(t, e) { var n = this.fabricateHelperEvent(t, e); return this.renderHelper(n, e) }, fabricateHelperEvent: function(t, e) { var n = e ? Z(e.event) : {}; return n.start = t.start.clone(), n.end = t.end ? t.end.clone() : null, n.allDay = null, this.view.calendar.normalizeEventDates(n), n.className = (n.className || []).concat("fc-helper"), e || (n.editable = !1), n }, renderHelper: function(t, e) {}, unrenderHelper: function() {}, renderSelection: function(t) { this.renderHighlight(t) }, unrenderSelection: function() { this.unrenderHighlight() }, computeSelection: function(t, e) { var n = this.computeSelectionSpan(t, e); return !(n && !this.view.calendar.isSelectionSpanAllowed(n)) && n }, computeSelectionSpan: function(t, e) { var n = [t.start, t.end, e.start, e.end]; return n.sort(st), { start: n[0].clone(), end: n[3].clone() } }, renderHighlight: function(t) { this.renderFill("highlight", this.spanToSegs(t)) }, unrenderHighlight: function() { this.unrenderFill("highlight") }, highlightSegClasses: function() { return ["fc-highlight"] }, renderBusinessHours: function() {}, unrenderBusinessHours: function() {}, getNowIndicatorUnit: function() {}, renderNowIndicator: function(t) {}, unrenderNowIndicator: function() {}, renderFill: function(t, e) {}, unrenderFill: function(t) { var e = this.elsByFill[t];
				e && (e.remove(), delete this.elsByFill[t]) }, renderFillSegEls: function(e, n) { var i, r = this,
					s = this[e + "SegEl"],
					o = "",
					l = []; if(n.length) { for(i = 0; i < n.length; i++) o += this.fillSegHtml(e, n[i]);
					t(o).each(function(e, i) { var o = n[e],
							a = t(i);
						s && (a = s.call(r, o, a)), a && (a = t(a), a.is(r.fillSegTag) && (o.el = a, l.push(o))) }) } return l }, fillSegTag: "div", fillSegHtml: function(t, e) { var n = this[t + "SegClasses"],
					i = this[t + "SegCss"],
					r = n ? n.call(this, e) : [],
					s = nt(i ? i.call(this, e) : {}); return "<" + this.fillSegTag + (r.length ? ' class="' + r.join(" ") + '"' : "") + (s ? ' style="' + s + '"' : "") + " />" }, getDayClasses: function(t) { var e = this.view,
					n = e.calendar.getNow(),
					i = ["fc-" + $t[t.day()]]; return 1 == e.intervalDuration.as("months") && t.month() != e.intervalStart.month() && i.push("fc-other-month"), t.isSame(n, "day") ? i.push("fc-today", e.highlightStateClass) : t < n ? i.push("fc-past") : i.push("fc-future"), i } });
	ge.mixin({ segSelector: ".fc-event-container > *", mousedOverSeg: null, isDraggingSeg: !1, isResizingSeg: !1, isDraggingExternal: !1, segs: null, renderEvents: function(t) { var e, n = [],
				i = []; for(e = 0; e < t.length; e++)(Tt(t[e]) ? n : i).push(t[e]);
			this.segs = [].concat(this.renderBgEvents(n), this.renderFgEvents(i)) }, renderBgEvents: function(t) { var e = this.eventsToSegs(t); return this.renderBgSegs(e) || e }, renderFgEvents: function(t) { var e = this.eventsToSegs(t); return this.renderFgSegs(e) || e }, unrenderEvents: function() { this.handleSegMouseout(), this.clearDragListeners(), this.unrenderFgSegs(), this.unrenderBgSegs(), this.segs = null }, getEventSegs: function() { return this.segs || [] }, renderFgSegs: function(t) {}, unrenderFgSegs: function() {}, renderFgSegEls: function(e, n) { var i, r = this.view,
				s = "",
				o = []; if(e.length) { for(i = 0; i < e.length; i++) s += this.fgSegHtml(e[i], n);
				t(s).each(function(n, i) { var s = e[n],
						l = r.resolveEventEl(s.event, t(i));
					l && (l.data("fc-seg", s), s.el = l, o.push(s)) }) } return o }, fgSegHtml: function(t, e) {}, renderBgSegs: function(t) { return this.renderFill("bgEvent", t) }, unrenderBgSegs: function() { this.unrenderFill("bgEvent") }, bgEventSegEl: function(t, e) { return this.view.resolveEventEl(t.event, e) }, bgEventSegClasses: function(t) { var e = t.event,
				n = e.source || {}; return ["fc-bgevent"].concat(e.className, n.className || []) }, bgEventSegCss: function(t) { return { "background-color": this.getSegSkinCss(t)["background-color"] } }, businessHoursSegClasses: function(t) { return ["fc-nonbusiness", "fc-bgevent"] }, buildBusinessHourSegs: function(e) { var n = this.view.calendar.getCurrentBusinessHourEvents(e); return !n.length && this.view.calendar.options.businessHours && (n = [t.extend({}, xe, { start: this.view.end, end: this.view.end, dow: null })]), this.eventsToSegs(n) }, bindSegHandlers: function() { this.bindSegHandlersToEl(this.el) }, bindSegHandlersToEl: function(t) { this.bindSegHandlerToEl(t, "touchstart", this.handleSegTouchStart), this.bindSegHandlerToEl(t, "touchend", this.handleSegTouchEnd), this.bindSegHandlerToEl(t, "mouseenter", this.handleSegMouseover), this.bindSegHandlerToEl(t, "mouseleave", this.handleSegMouseout), this.bindSegHandlerToEl(t, "mousedown", this.handleSegMousedown), this.bindSegHandlerToEl(t, "click", this.handleSegClick) }, bindSegHandlerToEl: function(e, n, i) { var r = this;
			e.on(n, this.segSelector, function(e) { var n = t(this).data("fc-seg"); if(n && !r.isDraggingSeg && !r.isResizingSeg) return i.call(r, n, e) }) }, handleSegClick: function(t, e) { var n = this.view.trigger("eventClick", t.el[0], t.event, e);
			n === !1 && e.preventDefault() }, handleSegMouseover: function(t, e) { this.isIgnoringMouse || this.mousedOverSeg || (this.mousedOverSeg = t, this.view.isEventResizable(t.event) && t.el.addClass("fc-allow-mouse-resize"), this.view.trigger("eventMouseover", t.el[0], t.event, e)) }, handleSegMouseout: function(t, e) { e = e || {}, this.mousedOverSeg && (t = t || this.mousedOverSeg, this.mousedOverSeg = null, this.view.isEventResizable(t.event) && t.el.removeClass("fc-allow-mouse-resize"), this.view.trigger("eventMouseout", t.el[0], t.event, e)) }, handleSegMousedown: function(t, e) { var n = this.startSegResize(t, e, { distance: 5 });!n && this.view.isEventDraggable(t.event) && this.buildSegDragListener(t).startInteraction(e, { distance: 5 }) }, handleSegTouchStart: function(t, e) { var n, i = this.view,
				r = t.event,
				s = i.isEventSelected(r),
				o = i.isEventDraggable(r),
				l = i.isEventResizable(r),
				a = !1;
			s && l && (a = this.startSegResize(t, e)), a || !o && !l || (n = o ? this.buildSegDragListener(t) : this.buildSegSelectListener(t), n.startInteraction(e, { delay: s ? 0 : this.view.opt("longPressDelay") })), this.tempIgnoreMouse() }, handleSegTouchEnd: function(t, e) { this.tempIgnoreMouse() }, startSegResize: function(e, n, i) { return !!t(n.target).is(".fc-resizer") && (this.buildSegResizeListener(e, t(n.target).is(".fc-start-resizer")).startInteraction(n, i), !0) }, buildSegDragListener: function(t) { var e, n, i, r = this,
				l = this.view,
				a = l.calendar,
				u = t.el,
				c = t.event; if(this.segDragListener) return this.segDragListener; var d = this.segDragListener = new he(l, { scroll: l.opt("dragScroll"), subjectEl: u, subjectCenter: !0, interactionStart: function(i) { t.component = r, e = !1, n = new fe(t.el, { additionalClass: "fc-dragging", parentEl: l.el, opacity: d.isTouch ? null : l.opt("dragOpacity"), revertDuration: l.opt("dragRevertDuration"), zIndex: 2 }), n.hide(), n.start(i) }, dragStart: function(n) { d.isTouch && !l.isEventSelected(c) && l.selectEvent(c), e = !0, r.handleSegMouseout(t, n), r.segDragStart(t, n), l.hideEvent(c) }, hitOver: function(e, o, u) { var h;
					t.hit && (u = t.hit), i = r.computeEventDrop(u.component.getHitSpan(u), e.component.getHitSpan(e), c), i && !a.isEventSpanAllowed(r.eventToSpan(i), c) && (s(), i = null), i && (h = l.renderDrag(i, t)) ? (h.addClass("fc-dragging"), d.isTouch || r.applyDragOpacity(h), n.hide()) : n.show(), o && (i = null) }, hitOut: function() { l.unrenderDrag(), n.show(), i = null }, hitDone: function() { o() }, interactionEnd: function(s) { delete t.component, n.stop(!i, function() { e && (l.unrenderDrag(), l.showEvent(c), r.segDragStop(t, s)), i && l.reportEventDrop(c, i, this.largeUnit, u, s) }), r.segDragListener = null } }); return d }, buildSegSelectListener: function(t) { var e = this,
				n = this.view,
				i = t.event; if(this.segDragListener) return this.segDragListener; var r = this.segDragListener = new de({ dragStart: function(t) { r.isTouch && !n.isEventSelected(i) && n.selectEvent(i) }, interactionEnd: function(t) { e.segDragListener = null } }); return r }, segDragStart: function(t, e) { this.isDraggingSeg = !0, this.view.trigger("eventDragStart", t.el[0], t.event, e, {}) }, segDragStop: function(t, e) { this.isDraggingSeg = !1, this.view.trigger("eventDragStop", t.el[0], t.event, e, {}) }, computeEventDrop: function(t, e, n) { var i, r, s = this.view.calendar,
				o = t.start,
				l = e.start; return o.hasTime() === l.hasTime() ? (i = this.diffDates(l, o), n.allDay && W(i) ? (r = { start: n.start.clone(), end: s.getEventEnd(n), allDay: !1 }, s.normalizeEventTimes(r)) : r = Ht(n), r.start.add(i), r.end && r.end.add(i)) : r = { start: l.clone(), end: null, allDay: !l.hasTime() }, r }, applyDragOpacity: function(t) { var e = this.view.opt("dragOpacity");
			null != e && t.css("opacity", e) }, externalDragStart: function(e, n) { var i, r, s = this.view;
			s.opt("droppable") && (i = t((n ? n.item : null) || e.target), r = s.opt("dropAccept"), (t.isFunction(r) ? r.call(i[0], i) : i.is(r)) && (this.isDraggingExternal || this.listenToExternalDrag(i, e, n))) }, listenToExternalDrag: function(t, e, n) { var i, r = this,
				l = this.view.calendar,
				a = Lt(t),
				u = r.externalDragListener = new he(this, { interactionStart: function() { r.isDraggingExternal = !0 }, hitOver: function(t) { i = r.computeExternalDrop(t.component.getHitSpan(t), a), i && !l.isExternalSpanAllowed(r.eventToSpan(i), i, a.eventProps) && (s(), i = null), i && r.renderDrag(i) }, hitOut: function() { i = null }, hitDone: function() { o(), r.unrenderDrag() }, interactionEnd: function(e) { i && r.view.reportExternalDrop(a, i, t, e, n), r.isDraggingExternal = !1, r.externalDragListener = null } });
			u.startDrag(e) }, computeExternalDrop: function(t, e) { var n = this.view.calendar,
				i = { start: n.applyTimezone(t.start), end: null }; return e.startTime && !i.start.hasTime() && i.start.time(e.startTime), e.duration && (i.end = i.start.clone().add(e.duration)), i }, renderDrag: function(t, e) {}, unrenderDrag: function() {}, buildSegResizeListener: function(t, e) { var n, i, r = this,
				l = this.view,
				a = l.calendar,
				u = t.el,
				c = t.event,
				d = a.getEventEnd(c),
				h = this.segResizeListener = new he(this, { scroll: l.opt("dragScroll"), subjectEl: u, interactionStart: function() { n = !1 }, dragStart: function(e) { n = !0, r.handleSegMouseout(t, e), r.segResizeStart(t, e) }, hitOver: function(n, o, u) { var h = r.getHitSpan(u),
							f = r.getHitSpan(n);
						i = e ? r.computeEventStartResize(h, f, c) : r.computeEventEndResize(h, f, c), i && (a.isEventSpanAllowed(r.eventToSpan(i), c) ? i.start.isSame(c.start.clone().stripZone()) && i.end.isSame(d.clone().stripZone()) && (i = null) : (s(), i = null)), i && (l.hideEvent(c), r.renderEventResize(i, t)) }, hitOut: function() { i = null }, hitDone: function() { r.unrenderEventResize(), l.showEvent(c), o() }, interactionEnd: function(e) { n && r.segResizeStop(t, e), i && l.reportEventResize(c, i, this.largeUnit, u, e), r.segResizeListener = null } }); return h }, segResizeStart: function(t, e) { this.isResizingSeg = !0, this.view.trigger("eventResizeStart", t.el[0], t.event, e, {}) }, segResizeStop: function(t, e) { this.isResizingSeg = !1, this.view.trigger("eventResizeStop", t.el[0], t.event, e, {}) }, computeEventStartResize: function(t, e, n) { return this.computeEventResize("start", t, e, n) }, computeEventEndResize: function(t, e, n) { return this.computeEventResize("end", t, e, n) }, computeEventResize: function(t, e, n, i) { var r, s, o = this.view.calendar,
				l = this.diffDates(n[t], e[t]); return r = { start: i.start.clone(), end: o.getEventEnd(i), allDay: i.allDay }, r.allDay && W(l) && (r.allDay = !1, o.normalizeEventTimes(r)), r[t].add(l), r.start.isBefore(r.end) || (s = this.minResizeDuration || (i.allDay ? o.defaultAllDayEventDuration : o.defaultTimedEventDuration), "start" == t ? r.start = r.end.clone().subtract(s) : r.end = r.start.clone().add(s)), r }, renderEventResize: function(t, e) {}, unrenderEventResize: function() {}, getEventTimeText: function(t, e, n) { return null == e && (e = this.eventTimeFormat), null == n && (n = this.displayEventEnd), this.displayEventTime && t.start.hasTime() ? n && t.end ? this.view.formatRange(t, e) : t.start.format(e) : "" }, getSegClasses: function(t, e, n) { var i = this.view,
				r = ["fc-event", t.isStart ? "fc-start" : "fc-not-start", t.isEnd ? "fc-end" : "fc-not-end"].concat(this.getSegCustomClasses(t)); return e && r.push("fc-draggable"), n && r.push("fc-resizable"), i.isEventSelected(t.event) && r.push("fc-selected"), r }, getSegCustomClasses: function(t) { var e = t.event; return [].concat(e.className, e.source ? e.source.className : []) }, getSegSkinCss: function(t) { return { "background-color": this.getSegBackgroundColor(t), "border-color": this.getSegBorderColor(t), color: this.getSegTextColor(t) } }, getSegBackgroundColor: function(t) { return t.event.backgroundColor || t.event.color || this.getSegDefaultBackgroundColor(t) }, getSegDefaultBackgroundColor: function(t) { var e = t.event.source || {}; return e.backgroundColor || e.color || this.view.opt("eventBackgroundColor") || this.view.opt("eventColor") }, getSegBorderColor: function(t) { return t.event.borderColor || t.event.color || this.getSegDefaultBorderColor(t) }, getSegDefaultBorderColor: function(t) { var e = t.event.source || {}; return e.borderColor || e.color || this.view.opt("eventBorderColor") || this.view.opt("eventColor") }, getSegTextColor: function(t) { return t.event.textColor || this.getSegDefaultTextColor(t) }, getSegDefaultTextColor: function(t) { var e = t.event.source || {}; return e.textColor || this.view.opt("eventTextColor") }, eventToSegs: function(t) { return this.eventsToSegs([t]) }, eventToSpan: function(t) { return this.eventToSpans(t)[0] }, eventToSpans: function(t) { var e = this.eventToRange(t); return this.eventRangeToSpans(e, t) }, eventsToSegs: function(e, n) { var i = this,
				r = It(e),
				s = []; return t.each(r, function(t, e) { var r, o = []; for(r = 0; r < e.length; r++) o.push(i.eventToRange(e[r])); if(xt(e[0]))
					for(o = i.invertRanges(o), r = 0; r < o.length; r++) s.push.apply(s, i.eventRangeToSegs(o[r], e[0], n));
				else
					for(r = 0; r < o.length; r++) s.push.apply(s, i.eventRangeToSegs(o[r], e[r], n)) }), s }, eventToRange: function(t) { var e = this.view.calendar,
				n = t.start.clone().stripZone(),
				i = (t.end ? t.end.clone() : e.getDefaultEventEnd(null != t.allDay ? t.allDay : !t.start.hasTime(), t.start)).stripZone(); return e.localizeMoment(n), e.localizeMoment(i), { start: n, end: i } }, eventRangeToSegs: function(t, e, n) { var i, r = this.eventRangeToSpans(t, e),
				s = []; for(i = 0; i < r.length; i++) s.push.apply(s, this.eventSpanToSegs(r[i], e, n)); return s }, eventRangeToSpans: function(e, n) { return [t.extend({}, e)] }, eventSpanToSegs: function(t, e, n) { var i, r, s = n ? n(t) : this.spanToSegs(t); for(i = 0; i < s.length; i++) r = s[i], r.event = e, r.eventStartMS = +t.start, r.eventDurationMS = t.end - t.start; return s }, invertRanges: function(t) { var e, n, i = this.view,
				r = i.start.clone(),
				s = i.end.clone(),
				o = [],
				l = r; for(t.sort(kt), e = 0; e < t.length; e++) n = t[e], n.start > l && o.push({ start: l, end: n.start }), l = n.end; return l < s && o.push({ start: l, end: s }), o }, sortEventSegs: function(t) { t.sort(lt(this, "compareEventSegs")) }, compareEventSegs: function(t, e) { return t.eventStartMS - e.eventStartMS || e.eventDurationMS - t.eventDurationMS || e.event.allDay - t.event.allDay || M(t.event, e.event, this.view.eventOrderSpecs) } }), jt.pluckEventDateProps = Ht, jt.isBgEvent = Tt, jt.dataAttrPrefix = "";
	var pe = jt.DayTableMixin = {
			breakOnWeeks: !1,
			dayDates: null,
			dayIndices: null,
			daysPerRow: null,
			rowCnt: null,
			colCnt: null,
			colHeadFormat: null,
			updateDayTable: function() { for(var t, e, n, i = this.view, r = this.start.clone(), s = -1, o = [], l = []; r.isBefore(this.end);) i.isHiddenDay(r) ? o.push(s + .5) : (s++, o.push(s), l.push(r.clone())), r.add(1, "days"); if(this.breakOnWeeks) { for(e = l[0].day(), t = 1; t < l.length && l[t].day() != e; t++);
					n = Math.ceil(l.length / t) } else n = 1, t = l.length;
				this.dayDates = l, this.dayIndices = o, this.daysPerRow = t, this.rowCnt = n, this.updateDayTableCols() },
			updateDayTableCols: function() { this.colCnt = this.computeColCnt(), this.colHeadFormat = this.view.opt("columnFormat") || this.computeColHeadFormat() },
			computeColCnt: function() { return this.daysPerRow },
			getCellDate: function(t, e) { return this.dayDates[this.getCellDayIndex(t, e)].clone() },
			getCellRange: function(t, e) { var n = this.getCellDate(t, e),
					i = n.clone().add(1, "days"); return { start: n, end: i } },
			getCellDayIndex: function(t, e) { return t * this.daysPerRow + this.getColDayIndex(e) },
			getColDayIndex: function(t) { return this.isRTL ? this.colCnt - 1 - t : t },
			getDateDayIndex: function(t) { var e = this.dayIndices,
					n = t.diff(this.start, "days"); return n < 0 ? e[0] - 1 : n >= e.length ? e[e.length - 1] + 1 : e[n] },
			computeColHeadFormat: function() { return this.rowCnt > 1 || this.colCnt > 10 ? "ddd" : this.colCnt > 1 ? this.view.opt("dayOfMonthFormat") : "dddd" },
			sliceRangeByRow: function(t) { var e, n, i, r, s, o = this.daysPerRow,
					l = this.view.computeDayRange(t),
					a = this.getDateDayIndex(l.start),
					u = this.getDateDayIndex(l.end.clone().subtract(1, "days")),
					c = []; for(e = 0; e < this.rowCnt; e++) n = e * o, i = n + o - 1, r = Math.max(a, n), s = Math.min(u, i), r = Math.ceil(r), s = Math.floor(s), r <= s && c.push({ row: e, firstRowDayIndex: r - n, lastRowDayIndex: s - n, isStart: r === a, isEnd: s === u }); return c },
			sliceRangeByDay: function(t) { var e, n, i, r, s, o, l = this.daysPerRow,
					a = this.view.computeDayRange(t),
					u = this.getDateDayIndex(a.start),
					c = this.getDateDayIndex(a.end.clone().subtract(1, "days")),
					d = []; for(e = 0; e < this.rowCnt; e++)
					for(n = e * l, i = n + l - 1, r = n; r <= i; r++) s = Math.max(u, r), o = Math.min(c, r), s = Math.ceil(s), o = Math.floor(o), s <= o && d.push({ row: e, firstRowDayIndex: s - n, lastRowDayIndex: o - n, isStart: s === u, isEnd: o === c }); return d },
			renderHeadHtml: function() { var t = this.view; return '<div class="fc-row ' + t.widgetHeaderClass + '"><table><thead>' + this.renderHeadTrHtml() + "</thead></table></div>" },
			renderHeadIntroHtml: function() { return this.renderIntroHtml() },
			renderHeadTrHtml: function() {
				return "<tr>" + (this.isRTL ? "" : this.renderHeadIntroHtml()) + this.renderHeadDateCellsHtml() + (this.isRTL ? this.renderHeadIntroHtml() : "") + "</tr>";
			},
			renderHeadDateCellsHtml: function() { var t, e, n = []; for(t = 0; t < this.colCnt; t++) e = this.getCellDate(0, t), n.push(this.renderHeadDateCellHtml(e)); return n.join("") },
			renderHeadDateCellHtml: function(t, e, n) { var i = this.view; return '<th class="fc-day-header ' + i.widgetHeaderClass + " fc-" + $t[t.day()] + '"' + (1 === this.rowCnt ? ' data-date="' + t.format("YYYY-MM-DD") + '"' : "") + (e > 1 ? ' colspan="' + e + '"' : "") + (n ? " " + n : "") + ">" + i.buildGotoAnchorHtml({ date: t, forceOff: this.rowCnt > 1 || 1 === this.colCnt }, tt(t.format(this.colHeadFormat))) + "</th>" },
			renderBgTrHtml: function(t) { return "<tr>" + (this.isRTL ? "" : this.renderBgIntroHtml(t)) + this.renderBgCellsHtml(t) + (this.isRTL ? this.renderBgIntroHtml(t) : "") + "</tr>" },
			renderBgIntroHtml: function(t) { return this.renderIntroHtml() },
			renderBgCellsHtml: function(t) { var e, n, i = []; for(e = 0; e < this.colCnt; e++) n = this.getCellDate(t, e), i.push(this.renderBgCellHtml(n)); return i.join("") },
			renderBgCellHtml: function(t, e) { var n = this.view,
					i = this.getDayClasses(t); return i.unshift("fc-day", n.widgetContentClass), '<td class="' + i.join(" ") + '" data-date="' + t.format("YYYY-MM-DD") + '"' + (e ? " " + e : "") + "></td>" },
			renderIntroHtml: function() {},
			bookendCells: function(t) { var e = this.renderIntroHtml();
				e && (this.isRTL ? t.append(e) : t.prepend(e)) }
		},
		ve = jt.DayGrid = ge.extend(pe, { numbersVisible: !1, bottomCoordPadding: 0, rowEls: null, cellEls: null, helperEls: null, rowCoordCache: null, colCoordCache: null, renderDates: function(t) { var e, n, i = this.view,
					r = this.rowCnt,
					s = this.colCnt,
					o = ""; for(e = 0; e < r; e++) o += this.renderDayRowHtml(e, t); for(this.el.html(o), this.rowEls = this.el.find(".fc-row"), this.cellEls = this.el.find(".fc-day"), this.rowCoordCache = new ce({ els: this.rowEls, isVertical: !0 }), this.colCoordCache = new ce({ els: this.cellEls.slice(0, this.colCnt), isHorizontal: !0 }), e = 0; e < r; e++)
					for(n = 0; n < s; n++) i.trigger("dayRender", null, this.getCellDate(e, n), this.getCellEl(e, n)) }, unrenderDates: function() { this.removeSegPopover() }, renderBusinessHours: function() { var t = this.buildBusinessHourSegs(!0);
				this.renderFill("businessHours", t, "bgevent") }, unrenderBusinessHours: function() { this.unrenderFill("businessHours") }, renderDayRowHtml: function(t, e) { var n = this.view,
					i = ["fc-row", "fc-week", n.widgetContentClass]; return e && i.push("fc-rigid"), '<div class="' + i.join(" ") + '"><div class="fc-bg"><table>' + this.renderBgTrHtml(t) + '</table></div><div class="fc-content-skeleton"><table>' + (this.numbersVisible ? "<thead>" + this.renderNumberTrHtml(t) + "</thead>" : "") + "</table></div></div>" }, renderNumberTrHtml: function(t) { return "<tr>" + (this.isRTL ? "" : this.renderNumberIntroHtml(t)) + this.renderNumberCellsHtml(t) + (this.isRTL ? this.renderNumberIntroHtml(t) : "") + "</tr>" }, renderNumberIntroHtml: function(t) { return this.renderIntroHtml() }, renderNumberCellsHtml: function(t) { var e, n, i = []; for(e = 0; e < this.colCnt; e++) n = this.getCellDate(t, e), i.push(this.renderNumberCellHtml(n)); return i.join("") }, renderNumberCellHtml: function(t) { var e, n, i = ""; return this.view.dayNumbersVisible || this.view.cellWeekNumbersVisible ? (e = this.getDayClasses(t), e.unshift("fc-day-top"), this.view.cellWeekNumbersVisible && (n = "ISO" === t._locale._fullCalendar_weekCalc ? 1 : t._locale.firstDayOfWeek()), i += '<td class="' + e.join(" ") + '" data-date="' + t.format() + '">', this.view.cellWeekNumbersVisible && t.day() == n && (i += this.view.buildGotoAnchorHtml({ date: t, type: "week" }, { class: "fc-week-number" }, t.format("w"))), this.view.dayNumbersVisible && (i += this.view.buildGotoAnchorHtml(t, { class: "fc-day-number" }, t.date())), i += "</td>") : "<td/>" }, computeEventTimeFormat: function() { return this.view.opt("extraSmallTimeFormat") }, computeDisplayEventEnd: function() { return 1 == this.colCnt }, rangeUpdated: function() { this.updateDayTable() }, spanToSegs: function(t) { var e, n, i = this.sliceRangeByRow(t); for(e = 0; e < i.length; e++) n = i[e], this.isRTL ? (n.leftCol = this.daysPerRow - 1 - n.lastRowDayIndex, n.rightCol = this.daysPerRow - 1 - n.firstRowDayIndex) : (n.leftCol = n.firstRowDayIndex, n.rightCol = n.lastRowDayIndex); return i }, prepareHits: function() { this.colCoordCache.build(), this.rowCoordCache.build(), this.rowCoordCache.bottoms[this.rowCnt - 1] += this.bottomCoordPadding }, releaseHits: function() { this.colCoordCache.clear(), this.rowCoordCache.clear() }, queryHit: function(t, e) { if(this.colCoordCache.isLeftInBounds(t) && this.rowCoordCache.isTopInBounds(e)) { var n = this.colCoordCache.getHorizontalIndex(t),
						i = this.rowCoordCache.getVerticalIndex(e); if(null != i && null != n) return this.getCellHit(i, n) } }, getHitSpan: function(t) { return this.getCellRange(t.row, t.col) }, getHitEl: function(t) { return this.getCellEl(t.row, t.col) }, getCellHit: function(t, e) { return { row: t, col: e, component: this, left: this.colCoordCache.getLeftOffset(e), right: this.colCoordCache.getRightOffset(e), top: this.rowCoordCache.getTopOffset(t), bottom: this.rowCoordCache.getBottomOffset(t) } }, getCellEl: function(t, e) { return this.cellEls.eq(t * this.colCnt + e) }, renderDrag: function(t, e) { if(this.renderHighlight(this.eventToSpan(t)), e && e.component !== this) return this.renderEventLocationHelper(t, e) }, unrenderDrag: function() { this.unrenderHighlight(), this.unrenderHelper() }, renderEventResize: function(t, e) { return this.renderHighlight(this.eventToSpan(t)), this.renderEventLocationHelper(t, e) }, unrenderEventResize: function() { this.unrenderHighlight(), this.unrenderHelper() }, renderHelper: function(e, n) { var i, r = [],
					s = this.eventToSegs(e); return s = this.renderFgSegEls(s), i = this.renderSegRows(s), this.rowEls.each(function(e, s) { var o, l = t(s),
						a = t('<div class="fc-helper-skeleton"><table/></div>');
					o = n && n.row === e ? n.el.position().top : l.find(".fc-content-skeleton tbody").position().top, a.css("top", o).find("table").append(i[e].tbodyEl), l.append(a), r.push(a[0]) }), this.helperEls = t(r) }, unrenderHelper: function() { this.helperEls && (this.helperEls.remove(), this.helperEls = null) }, fillSegTag: "td", renderFill: function(e, n, i) { var r, s, o, l = []; for(n = this.renderFillSegEls(e, n), r = 0; r < n.length; r++) s = n[r], o = this.renderFillRow(e, s, i), this.rowEls.eq(s.row).append(o), l.push(o[0]); return this.elsByFill[e] = t(l), n }, renderFillRow: function(e, n, i) { var r, s, o = this.colCnt,
					l = n.leftCol,
					a = n.rightCol + 1; return i = i || e.toLowerCase(), r = t('<div class="fc-' + i + '-skeleton"><table><tr/></table></div>'), s = r.find("tr"), l > 0 && s.append('<td colspan="' + l + '"/>'), s.append(n.el.attr("colspan", a - l)), a < o && s.append('<td colspan="' + (o - a) + '"/>'), this.bookendCells(s), r } });
	ve.mixin({ rowStructs: null, unrenderEvents: function() { this.removeSegPopover(), ge.prototype.unrenderEvents.apply(this, arguments) }, getEventSegs: function() { return ge.prototype.getEventSegs.call(this).concat(this.popoverSegs || []) }, renderBgSegs: function(e) { var n = t.grep(e, function(t) { return t.event.allDay }); return ge.prototype.renderBgSegs.call(this, n) }, renderFgSegs: function(e) { var n; return e = this.renderFgSegEls(e), n = this.rowStructs = this.renderSegRows(e), this.rowEls.each(function(e, i) { t(i).find(".fc-content-skeleton > table").append(n[e].tbodyEl) }), e }, unrenderFgSegs: function() { for(var t, e = this.rowStructs || []; t = e.pop();) t.tbodyEl.remove();
			this.rowStructs = null }, renderSegRows: function(t) { var e, n, i = []; for(e = this.groupSegRows(t), n = 0; n < e.length; n++) i.push(this.renderSegRow(n, e[n])); return i }, fgSegHtml: function(t, e) { var n, i, r = this.view,
				s = t.event,
				o = r.isEventDraggable(s),
				l = !e && s.allDay && t.isStart && r.isEventResizableFromStart(s),
				a = !e && s.allDay && t.isEnd && r.isEventResizableFromEnd(s),
				u = this.getSegClasses(t, o, l || a),
				c = nt(this.getSegSkinCss(t)),
				d = ""; return u.unshift("fc-day-grid-event", "fc-h-event"), t.isStart && (n = this.getEventTimeText(s), n && (d = '<span class="fc-time">' + tt(n) + "</span>")), i = '<span class="fc-title">' + (tt(s.title || "") || "&nbsp;") + "</span>", '<a class="' + u.join(" ") + '"' + (s.url ? ' href="' + tt(s.url) + '"' : "") + (c ? ' style="' + c + '"' : "") + '><div class="fc-content">' + (this.isRTL ? i + " " + d : d + " " + i) + "</div>" + (l ? '<div class="fc-resizer fc-start-resizer" />' : "") + (a ? '<div class="fc-resizer fc-end-resizer" />' : "") + "</a>" }, renderSegRow: function(e, n) {
			function i(e) { for(; o < e;) c = (m[r - 1] || [])[o], c ? c.attr("rowspan", parseInt(c.attr("rowspan") || 1, 10) + 1) : (c = t("<td/>"), l.append(c)), v[r][o] = c, m[r][o] = c, o++ } var r, s, o, l, a, u, c, d = this.colCnt,
				h = this.buildSegLevels(n),
				f = Math.max(1, h.length),
				g = t("<tbody/>"),
				p = [],
				v = [],
				m = []; for(r = 0; r < f; r++) { if(s = h[r], o = 0, l = t("<tr/>"), p.push([]), v.push([]), m.push([]), s)
					for(a = 0; a < s.length; a++) { for(u = s[a], i(u.leftCol), c = t('<td class="fc-event-container"/>').append(u.el), u.leftCol != u.rightCol ? c.attr("colspan", u.rightCol - u.leftCol + 1) : m[r][o] = c; o <= u.rightCol;) v[r][o] = c, p[r][o] = u, o++;
						l.append(c) } i(d), this.bookendCells(l), g.append(l) } return { row: e, tbodyEl: g, cellMatrix: v, segMatrix: p, segLevels: h, segs: n } }, buildSegLevels: function(t) { var e, n, i, r = []; for(this.sortEventSegs(t), e = 0; e < t.length; e++) { for(n = t[e], i = 0; i < r.length && Mt(n, r[i]); i++);
				n.level = i, (r[i] || (r[i] = [])).push(n) } for(i = 0; i < r.length; i++) r[i].sort(zt); return r }, groupSegRows: function(t) { var e, n = []; for(e = 0; e < this.rowCnt; e++) n.push([]); for(e = 0; e < t.length; e++) n[t[e].row].push(t[e]); return n } }), ve.mixin({ segPopover: null, popoverSegs: null, removeSegPopover: function() { this.segPopover && this.segPopover.hide() }, limitRows: function(t) { var e, n, i = this.rowStructs || []; for(e = 0; e < i.length; e++) this.unlimitRow(e), n = !!t && ("number" == typeof t ? t : this.computeRowLevelLimit(e)), n !== !1 && this.limitRow(e, n) }, computeRowLevelLimit: function(e) {
			function n(e, n) { s = Math.max(s, t(n).outerHeight()) } var i, r, s, o = this.rowEls.eq(e),
				l = o.height(),
				a = this.rowStructs[e].tbodyEl.children(); for(i = 0; i < a.length; i++)
				if(r = a.eq(i).removeClass("fc-limited"), s = 0, r.find("> td > :first-child").each(n), r.position().top + s > l) return i; return !1 }, limitRow: function(e, n) {
			function i(i) { for(; b < i;) u = S.getCellSegs(e, b, n), u.length && (h = s[n - 1][b], y = S.renderMoreLink(e, b, u), m = t("<div/>").append(y), h.append(m), E.push(m[0])), b++ } var r, s, o, l, a, u, c, d, h, f, g, p, v, m, y, S = this,
				w = this.rowStructs[e],
				E = [],
				b = 0; if(n && n < w.segLevels.length) { for(r = w.segLevels[n - 1], s = w.cellMatrix, o = w.tbodyEl.children().slice(n).addClass("fc-limited").get(), l = 0; l < r.length; l++) { for(a = r[l], i(a.leftCol), d = [], c = 0; b <= a.rightCol;) u = this.getCellSegs(e, b, n), d.push(u), c += u.length, b++; if(c) { for(h = s[n - 1][a.leftCol], f = h.attr("rowspan") || 1, g = [], p = 0; p < d.length; p++) v = t('<td class="fc-more-cell"/>').attr("rowspan", f), u = d[p], y = this.renderMoreLink(e, a.leftCol + p, [a].concat(u)), m = t("<div/>").append(y), v.append(m), g.push(v[0]), E.push(v[0]);
						h.addClass("fc-limited").after(t(g)), o.push(h[0]) } } i(this.colCnt), w.moreEls = t(E), w.limitedEls = t(o) } }, unlimitRow: function(t) { var e = this.rowStructs[t];
			e.moreEls && (e.moreEls.remove(), e.moreEls = null), e.limitedEls && (e.limitedEls.removeClass("fc-limited"), e.limitedEls = null) }, renderMoreLink: function(e, n, i) { var r = this,
				s = this.view; return t('<a class="fc-more"/>').text(this.getMoreLinkText(i.length)).on("click", function(o) { var l = s.opt("eventLimitClick"),
					a = r.getCellDate(e, n),
					u = t(this),
					c = r.getCellEl(e, n),
					d = r.getCellSegs(e, n),
					h = r.resliceDaySegs(d, a),
					f = r.resliceDaySegs(i, a); "function" == typeof l && (l = s.trigger("eventLimitClick", null, { date: a, dayEl: c, moreEl: u, segs: h, hiddenSegs: f }, o)), "popover" === l ? r.showSegPopover(e, n, u, h) : "string" == typeof l && s.calendar.zoomTo(a, l) }) }, showSegPopover: function(t, e, n, i) { var r, s, o = this,
				l = this.view,
				a = n.parent();
			r = 1 == this.rowCnt ? l.el : this.rowEls.eq(t), s = { className: "fc-more-popover", content: this.renderSegPopoverContent(t, e, i), parentEl: this.view.el, top: r.offset().top, autoHide: !0, viewportConstrain: l.opt("popoverViewportConstrain"), hide: function() { o.segPopover.removeElement(), o.segPopover = null, o.popoverSegs = null } }, this.isRTL ? s.right = a.offset().left + a.outerWidth() + 1 : s.left = a.offset().left - 1, this.segPopover = new ue(s), this.segPopover.show(), this.bindSegHandlersToEl(this.segPopover.el) }, renderSegPopoverContent: function(e, n, i) { var r, s = this.view,
				o = s.opt("theme"),
				l = this.getCellDate(e, n).format(s.opt("dayPopoverFormat")),
				a = t('<div class="fc-header ' + s.widgetHeaderClass + '"><span class="fc-close ' + (o ? "ui-icon ui-icon-closethick" : "fc-icon fc-icon-x") + '"></span><span class="fc-title">' + tt(l) + '</span><div class="fc-clear"/></div><div class="fc-body ' + s.widgetContentClass + '"><div class="fc-event-container"></div></div>'),
				u = a.find(".fc-event-container"); for(i = this.renderFgSegEls(i, !0), this.popoverSegs = i, r = 0; r < i.length; r++) this.prepareHits(), i[r].hit = this.getCellHit(e, n), this.releaseHits(), u.append(i[r].el); return a }, resliceDaySegs: function(e, n) { var i = t.map(e, function(t) { return t.event }),
				r = n.clone(),
				s = r.clone().add(1, "days"),
				o = { start: r, end: s }; return e = this.eventsToSegs(i, function(t) { var e = F(t, o); return e ? [e] : [] }), this.sortEventSegs(e), e }, getMoreLinkText: function(t) { var e = this.view.opt("eventLimitText"); return "function" == typeof e ? e(t) : "+" + t + " " + e }, getCellSegs: function(t, e, n) { for(var i, r = this.rowStructs[t].segMatrix, s = n || 0, o = []; s < r.length;) i = r[s][e], i && o.push(i), s++; return o } });
	var me = jt.TimeGrid = ge.extend(pe, { slotDuration: null, snapDuration: null, snapsPerSlot: null, minTime: null, maxTime: null, labelFormat: null, labelInterval: null, colEls: null, slatContainerEl: null, slatEls: null, nowIndicatorEls: null, colCoordCache: null, slatCoordCache: null, constructor: function() { ge.apply(this, arguments), this.processOptions() }, renderDates: function() { this.el.html(this.renderHtml()), this.colEls = this.el.find(".fc-day"), this.slatContainerEl = this.el.find(".fc-slats"), this.slatEls = this.slatContainerEl.find("tr"), this.colCoordCache = new ce({ els: this.colEls, isHorizontal: !0 }), this.slatCoordCache = new ce({ els: this.slatEls, isVertical: !0 }), this.renderContentSkeleton() }, renderHtml: function() { return '<div class="fc-bg"><table>' + this.renderBgTrHtml(0) + '</table></div><div class="fc-slats"><table>' + this.renderSlatRowHtml() + "</table></div>" }, renderSlatRowHtml: function() { for(var t, n, i, r = this.view, s = this.isRTL, o = "", l = e.duration(+this.minTime); l < this.maxTime;) t = this.start.clone().time(l), n = ot(_(l, this.labelInterval)), i = '<td class="fc-axis fc-time ' + r.widgetContentClass + '" ' + r.axisStyleAttr() + ">" + (n ? "<span>" + tt(t.format(this.labelFormat)) + "</span>" : "") + "</td>", o += '<tr data-time="' + t.format("HH:mm:ss") + '"' + (n ? "" : ' class="fc-minor"') + ">" + (s ? "" : i) + '<td class="' + r.widgetContentClass + '"/>' + (s ? i : "") + "</tr>", l.add(this.slotDuration); return o }, processOptions: function() { var n, i = this.view,
				r = i.opt("slotDuration"),
				s = i.opt("snapDuration");
			r = e.duration(r), s = s ? e.duration(s) : r, this.slotDuration = r, this.snapDuration = s, this.snapsPerSlot = r / s, this.minResizeDuration = s, this.minTime = e.duration(i.opt("minTime")), this.maxTime = e.duration(i.opt("maxTime")), n = i.opt("slotLabelFormat"), t.isArray(n) && (n = n[n.length - 1]), this.labelFormat = n || i.opt("smallTimeFormat"), n = i.opt("slotLabelInterval"), this.labelInterval = n ? e.duration(n) : this.computeLabelInterval(r) }, computeLabelInterval: function(t) { var n, i, r; for(n = Fe.length - 1; n >= 0; n--)
				if(i = e.duration(Fe[n]), r = _(i, t), ot(r) && r > 1) return i; return e.duration(t) }, computeEventTimeFormat: function() { return this.view.opt("noMeridiemTimeFormat") }, computeDisplayEventEnd: function() { return !0 }, prepareHits: function() { this.colCoordCache.build(), this.slatCoordCache.build() }, releaseHits: function() { this.colCoordCache.clear() }, queryHit: function(t, e) { var n = this.snapsPerSlot,
				i = this.colCoordCache,
				r = this.slatCoordCache; if(i.isLeftInBounds(t) && r.isTopInBounds(e)) { var s = i.getHorizontalIndex(t),
					o = r.getVerticalIndex(e); if(null != s && null != o) { var l = r.getTopOffset(o),
						a = r.getHeight(o),
						u = (e - l) / a,
						c = Math.floor(u * n),
						d = o * n + c,
						h = l + c / n * a,
						f = l + (c + 1) / n * a; return { col: s, snap: d, component: this, left: i.getLeftOffset(s), right: i.getRightOffset(s), top: h, bottom: f } } } }, getHitSpan: function(t) { var e, n = this.getCellDate(0, t.col),
				i = this.computeSnapTime(t.snap); return n.time(i), e = n.clone().add(this.snapDuration), { start: n, end: e } }, getHitEl: function(t) { return this.colEls.eq(t.col) }, rangeUpdated: function() { this.updateDayTable() }, computeSnapTime: function(t) { return e.duration(this.minTime + this.snapDuration * t) }, spanToSegs: function(t) { var e, n = this.sliceRangeByTimes(t); for(e = 0; e < n.length; e++) this.isRTL ? n[e].col = this.daysPerRow - 1 - n[e].dayIndex : n[e].col = n[e].dayIndex; return n }, sliceRangeByTimes: function(t) { var e, n, i, r, s = []; for(n = 0; n < this.daysPerRow; n++) i = this.dayDates[n].clone(), r = { start: i.clone().time(this.minTime), end: i.clone().time(this.maxTime) }, e = F(t, r), e && (e.dayIndex = n, s.push(e)); return s }, updateSize: function(t) { this.slatCoordCache.build(), t && this.updateSegVerticals([].concat(this.fgSegs || [], this.bgSegs || [], this.businessSegs || [])) }, getTotalSlatHeight: function() { return this.slatContainerEl.outerHeight() }, computeDateTop: function(t, n) { return this.computeTimeTop(e.duration(t - n.clone().stripTime())) }, computeTimeTop: function(t) { var e, n, i = this.slatEls.length,
				r = (t - this.minTime) / this.slotDuration; return r = Math.max(0, r), r = Math.min(i, r), e = Math.floor(r), e = Math.min(e, i - 1), n = r - e, this.slatCoordCache.getTopPosition(e) + this.slatCoordCache.getHeight(e) * n }, renderDrag: function(t, e) { return e ? this.renderEventLocationHelper(t, e) : void this.renderHighlight(this.eventToSpan(t)) }, unrenderDrag: function() { this.unrenderHelper(), this.unrenderHighlight() }, renderEventResize: function(t, e) { return this.renderEventLocationHelper(t, e) }, unrenderEventResize: function() { this.unrenderHelper() }, renderHelper: function(t, e) { return this.renderHelperSegs(this.eventToSegs(t), e) }, unrenderHelper: function() { this.unrenderHelperSegs() }, renderBusinessHours: function() { this.renderBusinessSegs(this.buildBusinessHourSegs()) }, unrenderBusinessHours: function() { this.unrenderBusinessSegs() }, getNowIndicatorUnit: function() { return "minute" }, renderNowIndicator: function(e) { var n, i = this.spanToSegs({ start: e, end: e }),
				r = this.computeDateTop(e, e),
				s = []; for(n = 0; n < i.length; n++) s.push(t('<div class="fc-now-indicator fc-now-indicator-line"></div>').css("top", r).appendTo(this.colContainerEls.eq(i[n].col))[0]);
			i.length > 0 && s.push(t('<div class="fc-now-indicator fc-now-indicator-arrow"></div>').css("top", r).appendTo(this.el.find(".fc-content-skeleton"))[0]), this.nowIndicatorEls = t(s) }, unrenderNowIndicator: function() { this.nowIndicatorEls && (this.nowIndicatorEls.remove(), this.nowIndicatorEls = null) }, renderSelection: function(t) { this.view.opt("selectHelper") ? this.renderEventLocationHelper(t) : this.renderHighlight(t) }, unrenderSelection: function() { this.unrenderHelper(), this.unrenderHighlight() }, renderHighlight: function(t) { this.renderHighlightSegs(this.spanToSegs(t)) }, unrenderHighlight: function() { this.unrenderHighlightSegs() } });
	me.mixin({ colContainerEls: null, fgContainerEls: null, bgContainerEls: null, helperContainerEls: null, highlightContainerEls: null, businessContainerEls: null, fgSegs: null, bgSegs: null, helperSegs: null, highlightSegs: null, businessSegs: null, renderContentSkeleton: function() { var e, n, i = ""; for(e = 0; e < this.colCnt; e++) i += '<td><div class="fc-content-col"><div class="fc-event-container fc-helper-container"></div><div class="fc-event-container"></div><div class="fc-highlight-container"></div><div class="fc-bgevent-container"></div><div class="fc-business-container"></div></div></td>';
			n = t('<div class="fc-content-skeleton"><table><tr>' + i + "</tr></table></div>"), this.colContainerEls = n.find(".fc-content-col"), this.helperContainerEls = n.find(".fc-helper-container"), this.fgContainerEls = n.find(".fc-event-container:not(.fc-helper-container)"), this.bgContainerEls = n.find(".fc-bgevent-container"), this.highlightContainerEls = n.find(".fc-highlight-container"), this.businessContainerEls = n.find(".fc-business-container"), this.bookendCells(n.find("tr")), this.el.append(n) }, renderFgSegs: function(t) { return t = this.renderFgSegsIntoContainers(t, this.fgContainerEls), this.fgSegs = t, t }, unrenderFgSegs: function() { this.unrenderNamedSegs("fgSegs") }, renderHelperSegs: function(e, n) { var i, r, s, o = []; for(e = this.renderFgSegsIntoContainers(e, this.helperContainerEls), i = 0; i < e.length; i++) r = e[i], n && n.col === r.col && (s = n.el, r.el.css({ left: s.css("left"), right: s.css("right"), "margin-left": s.css("margin-left"), "margin-right": s.css("margin-right") })), o.push(r.el[0]); return this.helperSegs = e, t(o) }, unrenderHelperSegs: function() { this.unrenderNamedSegs("helperSegs") }, renderBgSegs: function(t) { return t = this.renderFillSegEls("bgEvent", t), this.updateSegVerticals(t), this.attachSegsByCol(this.groupSegsByCol(t), this.bgContainerEls), this.bgSegs = t, t }, unrenderBgSegs: function() { this.unrenderNamedSegs("bgSegs") }, renderHighlightSegs: function(t) { t = this.renderFillSegEls("highlight", t), this.updateSegVerticals(t), this.attachSegsByCol(this.groupSegsByCol(t), this.highlightContainerEls), this.highlightSegs = t }, unrenderHighlightSegs: function() { this.unrenderNamedSegs("highlightSegs") }, renderBusinessSegs: function(t) { t = this.renderFillSegEls("businessHours", t), this.updateSegVerticals(t), this.attachSegsByCol(this.groupSegsByCol(t), this.businessContainerEls), this.businessSegs = t }, unrenderBusinessSegs: function() { this.unrenderNamedSegs("businessSegs") }, groupSegsByCol: function(t) { var e, n = []; for(e = 0; e < this.colCnt; e++) n.push([]); for(e = 0; e < t.length; e++) n[t[e].col].push(t[e]); return n }, attachSegsByCol: function(t, e) { var n, i, r; for(n = 0; n < this.colCnt; n++)
				for(i = t[n], r = 0; r < i.length; r++) e.eq(n).append(i[r].el) }, unrenderNamedSegs: function(t) { var e, n = this[t]; if(n) { for(e = 0; e < n.length; e++) n[e].el.remove();
				this[t] = null } }, renderFgSegsIntoContainers: function(t, e) { var n, i; for(t = this.renderFgSegEls(t), n = this.groupSegsByCol(t), i = 0; i < this.colCnt; i++) this.updateFgSegCoords(n[i]); return this.attachSegsByCol(n, e), t }, fgSegHtml: function(t, e) { var n, i, r, s = this.view,
				o = t.event,
				l = s.isEventDraggable(o),
				a = !e && t.isStart && s.isEventResizableFromStart(o),
				u = !e && t.isEnd && s.isEventResizableFromEnd(o),
				c = this.getSegClasses(t, l, a || u),
				d = nt(this.getSegSkinCss(t)); return c.unshift("fc-time-grid-event", "fc-v-event"), s.isMultiDayEvent(o) ? (t.isStart || t.isEnd) && (n = this.getEventTimeText(t), i = this.getEventTimeText(t, "LT"), r = this.getEventTimeText(t, null, !1)) : (n = this.getEventTimeText(o), i = this.getEventTimeText(o, "LT"), r = this.getEventTimeText(o, null, !1)), '<a class="' + c.join(" ") + '"' + (o.url ? ' href="' + tt(o.url) + '"' : "") + (d ? ' style="' + d + '"' : "") + '><div class="fc-content">' + (n ? '<div class="fc-time" data-start="' + tt(r) + '" data-full="' + tt(i) + '"><span>' + tt(n) + "</span></div>" : "") + (o.title ? '<div class="fc-title">' + tt(o.title) + "</div>" : "") + '</div><div class="fc-bg"/>' + (u ? '<div class="fc-resizer fc-end-resizer" />' : "") + "</a>" }, updateSegVerticals: function(t) { this.computeSegVerticals(t), this.assignSegVerticals(t) }, computeSegVerticals: function(t) { var e, n; for(e = 0; e < t.length; e++) n = t[e], n.top = this.computeDateTop(n.start, n.start), n.bottom = this.computeDateTop(n.end, n.start) }, assignSegVerticals: function(t) { var e, n; for(e = 0; e < t.length; e++) n = t[e], n.el.css(this.generateSegVerticalCss(n)) }, generateSegVerticalCss: function(t) { return { top: t.top, bottom: -t.bottom } }, updateFgSegCoords: function(t) { this.computeSegVerticals(t), this.computeFgSegHorizontals(t), this.assignSegVerticals(t), this.assignFgSegHorizontals(t) }, computeFgSegHorizontals: function(t) { var e, n, i; if(this.sortEventSegs(t), e = Bt(t), Ft(e), n = e[0]) { for(i = 0; i < n.length; i++) Nt(n[i]); for(i = 0; i < n.length; i++) this.computeFgSegForwardBack(n[i], 0, 0) } }, computeFgSegForwardBack: function(t, e, n) { var i, r = t.forwardSegs; if(void 0 === t.forwardCoord)
				for(r.length ? (this.sortForwardSegs(r), this.computeFgSegForwardBack(r[0], e + 1, n), t.forwardCoord = r[0].backwardCoord) : t.forwardCoord = 1, t.backwardCoord = t.forwardCoord - (t.forwardCoord - n) / (e + 1), i = 0; i < r.length; i++) this.computeFgSegForwardBack(r[i], 0, t.forwardCoord) }, sortForwardSegs: function(t) { t.sort(lt(this, "compareForwardSegs")) }, compareForwardSegs: function(t, e) { return e.forwardPressure - t.forwardPressure || (t.backwardCoord || 0) - (e.backwardCoord || 0) || this.compareEventSegs(t, e) }, assignFgSegHorizontals: function(t) { var e, n; for(e = 0; e < t.length; e++) n = t[e], n.el.css(this.generateFgSegHorizontalCss(n)), n.bottom - n.top < 30 && n.el.addClass("fc-short") }, generateFgSegHorizontalCss: function(t) { var e, n, i = this.view.opt("slotEventOverlap"),
				r = t.backwardCoord,
				s = t.forwardCoord,
				o = this.generateSegVerticalCss(t); return i && (s = Math.min(1, r + 2 * (s - r))), this.isRTL ? (e = 1 - s, n = r) : (e = r, n = 1 - s), o.zIndex = t.level + 1, o.left = 100 * e + "%", o.right = 100 * n + "%", i && t.forwardPressure && (o[this.isRTL ? "marginLeft" : "marginRight"] = 20), o } });
	var ye = jt.View = wt.extend(oe, le, {
			type: null,
			name: null,
			title: null,
			calendar: null,
			options: null,
			el: null,
			displaying: null,
			isSkeletonRendered: !1,
			isEventsRendered: !1,
			start: null,
			end: null,
			intervalStart: null,
			intervalEnd: null,
			intervalDuration: null,
			intervalUnit: null,
			isRTL: !1,
			isSelected: !1,
			selectedEvent: null,
			eventOrderSpecs: null,
			widgetHeaderClass: null,
			widgetContentClass: null,
			highlightStateClass: null,
			nextDayThreshold: null,
			isHiddenDayHash: null,
			isNowIndicatorRendered: null,
			initialNowDate: null,
			initialNowQueriedMs: null,
			nowIndicatorTimeoutID: null,
			nowIndicatorIntervalID: null,
			constructor: function(t, n, i, r) { this.calendar = t, this.type = this.name = n, this.options = i, this.intervalDuration = r || e.duration(1, "day"), this.nextDayThreshold = e.duration(this.opt("nextDayThreshold")), this.initThemingProps(), this.initHiddenDays(), this.isRTL = this.opt("isRTL"), this.eventOrderSpecs = L(this.opt("eventOrder")), this.initialize() },
			initialize: function() {},
			opt: function(t) { return this.options[t] },
			trigger: function(t, e) { var n = this.calendar; return n.trigger.apply(n, [t, e || this].concat(Array.prototype.slice.call(arguments, 2), [this])) },
			setDate: function(t) { this.setRange(this.computeRange(t)) },
			setRange: function(e) { t.extend(this, e), this.updateTitle() },
			computeRange: function(t) { var e, n, i = A(this.intervalDuration),
					r = t.clone().startOf(i),
					s = r.clone().add(this.intervalDuration); return /year|month|week|day/.test(i) ? (r.stripTime(), s.stripTime()) : (r.hasTime() || (r = this.calendar.time(0)), s.hasTime() || (s = this.calendar.time(0))), e = r.clone(), e = this.skipHiddenDays(e), n = s.clone(), n = this.skipHiddenDays(n, -1, !0), { intervalUnit: i, intervalStart: r, intervalEnd: s, start: e, end: n } },
			computePrevDate: function(t) { return this.massageCurrentDate(t.clone().startOf(this.intervalUnit).subtract(this.intervalDuration), -1) },
			computeNextDate: function(t) { return this.massageCurrentDate(t.clone().startOf(this.intervalUnit).add(this.intervalDuration)) },
			massageCurrentDate: function(t, e) { return this.intervalDuration.as("days") <= 1 && this.isHiddenDay(t) && (t = this.skipHiddenDays(t, e), t.startOf("day")), t },
			updateTitle: function() { this.title = this.computeTitle() },
			computeTitle: function() { return this.formatRange({ start: this.calendar.applyTimezone(this.intervalStart), end: this.calendar.applyTimezone(this.intervalEnd) }, this.opt("titleFormat") || this.computeTitleFormat(), this.opt("titleRangeSeparator")) },
			computeTitleFormat: function() { return "year" == this.intervalUnit ? "YYYY" : "month" == this.intervalUnit ? this.opt("monthYearFormat") : this.intervalDuration.as("days") > 1 ? "ll" : "LL" },
			formatRange: function(t, e, n) { var i = t.end; return i.hasTime() || (i = i.clone().subtract(1)), pt(t.start, i, e, n, this.opt("isRTL")) },
			getAllDayHtml: function() { return this.opt("allDayHtml") || tt(this.opt("allDayText")) },
			buildGotoAnchorHtml: function(e, n, i) { var r, s, o, l; return t.isPlainObject(e) ? (r = e.date, s = e.type, o = e.forceOff) : r = e, r = jt.moment(r), l = { date: r.format("YYYY-MM-DD"), type: s || "day" }, "string" == typeof n && (i = n, n = null), n = n ? " " + it(n) : "", i = i || "", !o && this.opt("navLinks") ? "<a" + n + ' data-goto="' + tt(JSON.stringify(l)) + '">' + i + "</a>" : "<span" + n + ">" + i + "</span>" },
			setElement: function(t) { this.el = t, this.bindGlobalHandlers() },
			removeElement: function() { this.clear(), this.isSkeletonRendered && (this.unrenderSkeleton(), this.isSkeletonRendered = !1), this.unbindGlobalHandlers(), this.el.remove() },
			display: function(t, e) { var n = this,
					i = null; return null != e && this.displaying && (i = this.queryScroll()), this.calendar.freezeContentHeight(), ut(this.clear(), function() { return n.displaying = ut(n.displayView(t), function() { null != e ? n.setScroll(e) : n.forceScroll(n.computeInitialScroll(i)), n.calendar.unfreezeContentHeight(), n.triggerRender() }) }) },
			clear: function() { var e = this,
					n = this.displaying; return n ? ut(n, function() { return e.displaying = null, e.clearEvents(), e.clearView() }) : t.when() },
			displayView: function(t) { this.isSkeletonRendered || (this.renderSkeleton(), this.isSkeletonRendered = !0), t && this.setDate(t), this.render && this.render(), this.renderDates(), this.updateSize(), this.renderBusinessHours(), this.startNowIndicator() },
			clearView: function() { this.unselect(), this.stopNowIndicator(), this.triggerUnrender(), this.unrenderBusinessHours(), this.unrenderDates(), this.destroy && this.destroy() },
			renderSkeleton: function() {},
			unrenderSkeleton: function() {},
			renderDates: function() {},
			unrenderDates: function() {},
			triggerRender: function() { this.trigger("viewRender", this, this, this.el) },
			triggerUnrender: function() { this.trigger("viewDestroy", this, this, this.el) },
			bindGlobalHandlers: function() { this.listenTo(t(document), "mousedown", this.handleDocumentMousedown), this.listenTo(t(document), "touchstart", this.processUnselect) },
			unbindGlobalHandlers: function() { this.stopListeningTo(t(document)) },
			initThemingProps: function() { var t = this.opt("theme") ? "ui" : "fc";
				this.widgetHeaderClass = t + "-widget-header", this.widgetContentClass = t + "-widget-content", this.highlightStateClass = t + "-state-highlight" },
			renderBusinessHours: function() {},
			unrenderBusinessHours: function() {},
			startNowIndicator: function() { var t, n, i, r = this;
				this.opt("nowIndicator") && (t = this.getNowIndicatorUnit(), t && (n = lt(this, "updateNowIndicator"), this.initialNowDate = this.calendar.getNow(), this.initialNowQueriedMs = +new Date, this.renderNowIndicator(this.initialNowDate), this.isNowIndicatorRendered = !0, i = this.initialNowDate.clone().startOf(t).add(1, t) - this.initialNowDate, this.nowIndicatorTimeoutID = setTimeout(function() { r.nowIndicatorTimeoutID = null, n(), i = +e.duration(1, t), i = Math.max(100, i), r.nowIndicatorIntervalID = setInterval(n, i) }, i))) },
			updateNowIndicator: function() { this.isNowIndicatorRendered && (this.unrenderNowIndicator(), this.renderNowIndicator(this.initialNowDate.clone().add(new Date - this.initialNowQueriedMs))) },
			stopNowIndicator: function() { this.isNowIndicatorRendered && (this.nowIndicatorTimeoutID && (clearTimeout(this.nowIndicatorTimeoutID), this.nowIndicatorTimeoutID = null), this.nowIndicatorIntervalID && (clearTimeout(this.nowIndicatorIntervalID), this.nowIndicatorIntervalID = null), this.unrenderNowIndicator(), this.isNowIndicatorRendered = !1) },
			getNowIndicatorUnit: function() {},
			renderNowIndicator: function(t) {},
			unrenderNowIndicator: function() {},
			updateSize: function(t) { var e;
				t && (e = this.queryScroll()), this.updateHeight(t), this.updateWidth(t), this.updateNowIndicator(), t && this.setScroll(e) },
			updateWidth: function(t) {},
			updateHeight: function(t) { var e = this.calendar;
				this.setHeight(e.getSuggestedViewHeight(), e.isHeightAuto()) },
			setHeight: function(t, e) {},
			computeInitialScroll: function(t) { return 0 },
			queryScroll: function() {},
			setScroll: function(t) {},
			forceScroll: function(t) { var e = this;
				this.setScroll(t), setTimeout(function() { e.setScroll(t) }, 0) },
			displayEvents: function(t) { var e = this.queryScroll();
				this.clearEvents(), this.renderEvents(t), this.isEventsRendered = !0, this.setScroll(e), this.triggerEventRender() },
			clearEvents: function() { var t;
				this.isEventsRendered && (t = this.queryScroll(), this.triggerEventUnrender(), this.destroyEvents && this.destroyEvents(), this.unrenderEvents(), this.setScroll(t), this.isEventsRendered = !1) },
			renderEvents: function(t) {},
			unrenderEvents: function() {},
			triggerEventRender: function() { this.renderedEventSegEach(function(t) { this.trigger("eventAfterRender", t.event, t.event, t.el) }), this.trigger("eventAfterAllRender") },
			triggerEventUnrender: function() { this.renderedEventSegEach(function(t) { this.trigger("eventDestroy", t.event, t.event, t.el) }) },
			resolveEventEl: function(e, n) { var i = this.trigger("eventRender", e, e, n); return i === !1 ? n = null : i && i !== !0 && (n = t(i)), n },
			showEvent: function(t) { this.renderedEventSegEach(function(t) { t.el.css("visibility", "") }, t) },
			hideEvent: function(t) { this.renderedEventSegEach(function(t) { t.el.css("visibility", "hidden") }, t) },
			renderedEventSegEach: function(t, e) { var n, i = this.getEventSegs(); for(n = 0; n < i.length; n++) e && i[n].event._id !== e._id || i[n].el && t.call(this, i[n]) },
			getEventSegs: function() { return [] },
			isEventDraggable: function(t) { return this.isEventStartEditable(t) },
			isEventStartEditable: function(t) { return J(t.startEditable, (t.source || {}).startEditable, this.opt("eventStartEditable"), this.isEventGenerallyEditable(t)) },
			isEventGenerallyEditable: function(t) { return J(t.editable, (t.source || {}).editable, this.opt("editable")) },
			reportEventDrop: function(t, e, n, i, r) { var s = this.calendar,
					o = s.mutateEvent(t, e, n),
					l = function() { o.undo(), s.reportEventChange() };
				this.triggerEventDrop(t, o.dateDelta, l, i, r), s.reportEventChange() },
			triggerEventDrop: function(t, e, n, i, r) { this.trigger("eventDrop", i[0], t, e, n, r, {}) },
			reportExternalDrop: function(e, n, i, r, s) {
				var o, l, a = e.eventProps;
				a && (o = t.extend({}, a, n), l = this.calendar.renderEvent(o, e.stick)[0]), this.triggerExternalDrop(l, n, i, r, s);
			},
			triggerExternalDrop: function(t, e, n, i, r) { this.trigger("drop", n[0], e.start, i, r), t && this.trigger("eventReceive", null, t) },
			renderDrag: function(t, e) {},
			unrenderDrag: function() {},
			isEventResizableFromStart: function(t) { return this.opt("eventResizableFromStart") && this.isEventResizable(t) },
			isEventResizableFromEnd: function(t) { return this.isEventResizable(t) },
			isEventResizable: function(t) { var e = t.source || {}; return J(t.durationEditable, e.durationEditable, this.opt("eventDurationEditable"), t.editable, e.editable, this.opt("editable")) },
			reportEventResize: function(t, e, n, i, r) { var s = this.calendar,
					o = s.mutateEvent(t, e, n),
					l = function() { o.undo(), s.reportEventChange() };
				this.triggerEventResize(t, o.durationDelta, l, i, r), s.reportEventChange() },
			triggerEventResize: function(t, e, n, i, r) { this.trigger("eventResize", i[0], t, e, n, r, {}) },
			select: function(t, e) { this.unselect(e), this.renderSelection(t), this.reportSelection(t, e) },
			renderSelection: function(t) {},
			reportSelection: function(t, e) { this.isSelected = !0, this.triggerSelect(t, e) },
			triggerSelect: function(t, e) { this.trigger("select", null, this.calendar.applyTimezone(t.start), this.calendar.applyTimezone(t.end), e) },
			unselect: function(t) { this.isSelected && (this.isSelected = !1, this.destroySelection && this.destroySelection(), this.unrenderSelection(), this.trigger("unselect", null, t)) },
			unrenderSelection: function() {},
			selectEvent: function(t) { this.selectedEvent && this.selectedEvent === t || (this.unselectEvent(), this.renderedEventSegEach(function(t) { t.el.addClass("fc-selected") }, t), this.selectedEvent = t) },
			unselectEvent: function() { this.selectedEvent && (this.renderedEventSegEach(function(t) { t.el.removeClass("fc-selected") }, this.selectedEvent), this.selectedEvent = null) },
			isEventSelected: function(t) { return this.selectedEvent && this.selectedEvent._id === t._id },
			handleDocumentMousedown: function(t) { S(t) && this.processUnselect(t) },
			processUnselect: function(t) { this.processRangeUnselect(t), this.processEventUnselect(t) },
			processRangeUnselect: function(e) { var n;
				this.isSelected && this.opt("unselectAuto") && (n = this.opt("unselectCancel"), n && t(e.target).closest(n).length || this.unselect(e)) },
			processEventUnselect: function(e) { this.selectedEvent && (t(e.target).closest(".fc-selected").length || this.unselectEvent()) },
			triggerDayClick: function(t, e, n) { this.trigger("dayClick", e, this.calendar.applyTimezone(t.start), n) },
			initHiddenDays: function() { var e, n = this.opt("hiddenDays") || [],
					i = [],
					r = 0; for(this.opt("weekends") === !1 && n.push(0, 6), e = 0; e < 7; e++)(i[e] = t.inArray(e, n) !== -1) || r++; if(!r) throw "invalid hiddenDays";
				this.isHiddenDayHash = i },
			isHiddenDay: function(t) { return e.isMoment(t) && (t = t.day()), this.isHiddenDayHash[t] },
			skipHiddenDays: function(t, e, n) { var i = t.clone(); for(e = e || 1; this.isHiddenDayHash[(i.day() + (n ? e : 0) + 7) % 7];) i.add(e, "days"); return i },
			computeDayRange: function(t) { var e, n = t.start.clone().stripTime(),
					i = t.end,
					r = null; return i && (r = i.clone().stripTime(), e = +i.time(), e && e >= this.nextDayThreshold && r.add(1, "days")), (!i || r <= n) && (r = n.clone().add(1, "days")), { start: n, end: r } },
			isMultiDayEvent: function(t) { var e = this.computeDayRange(t); return e.end.diff(e.start, "days") > 1 }
		}),
		Se = jt.Scroller = wt.extend({ el: null, scrollEl: null, overflowX: null, overflowY: null, constructor: function(t) { t = t || {}, this.overflowX = t.overflowX || t.overflow || "auto", this.overflowY = t.overflowY || t.overflow || "auto" }, render: function() { this.el = this.renderEl(), this.applyOverflow() }, renderEl: function() { return this.scrollEl = t('<div class="fc-scroller"></div>') }, clear: function() { this.setHeight("auto"), this.applyOverflow() }, destroy: function() { this.el.remove() }, applyOverflow: function() { this.scrollEl.css({ "overflow-x": this.overflowX, "overflow-y": this.overflowY }) }, lockOverflow: function(t) { var e = this.overflowX,
					n = this.overflowY;
				t = t || this.getScrollbarWidths(), "auto" === e && (e = t.top || t.bottom || this.scrollEl[0].scrollWidth - 1 > this.scrollEl[0].clientWidth ? "scroll" : "hidden"), "auto" === n && (n = t.left || t.right || this.scrollEl[0].scrollHeight - 1 > this.scrollEl[0].clientHeight ? "scroll" : "hidden"), this.scrollEl.css({ "overflow-x": e, "overflow-y": n }) }, setHeight: function(t) { this.scrollEl.height(t) }, getScrollTop: function() { return this.scrollEl.scrollTop() }, setScrollTop: function(t) { this.scrollEl.scrollTop(t) }, getClientWidth: function() { return this.scrollEl[0].clientWidth }, getClientHeight: function() { return this.scrollEl[0].clientHeight }, getScrollbarWidths: function() { return p(this.scrollEl) } }),
		we = jt.Calendar = wt.extend({ dirDefaults: null, localeDefaults: null, overrides: null, dynamicOverrides: null, options: null, viewSpecCache: null, view: null, header: null, loadingLevel: 0, constructor: At, initialize: function() {}, populateOptionsHash: function() { var t, e, i, r;
				t = J(this.dynamicOverrides.locale, this.overrides.locale), e = Ee[t], e || (t = we.defaults.locale, e = Ee[t] || {}), i = J(this.dynamicOverrides.isRTL, this.overrides.isRTL, e.isRTL, we.defaults.isRTL), r = i ? we.rtlDefaults : {}, this.dirDefaults = r, this.localeDefaults = e, this.options = n([we.defaults, r, e, this.overrides, this.dynamicOverrides]), Vt(this.options) }, getViewSpec: function(t) { var e = this.viewSpecCache; return e[t] || (e[t] = this.buildViewSpec(t)) }, getUnitViewSpec: function(e) { var n, i, r; if(t.inArray(e, Xt) != -1)
					for(n = this.header.getViewsWithButtons(), t.each(jt.views, function(t) { n.push(t) }), i = 0; i < n.length; i++)
						if(r = this.getViewSpec(n[i]), r && r.singleUnit == e) return r }, buildViewSpec: function(t) { for(var i, r, s, o, l = this.overrides.views || {}, a = [], u = [], c = [], d = t; d;) i = Ut[d], r = l[d], d = null, "function" == typeof i && (i = { class: i }), i && (a.unshift(i), u.unshift(i.defaults || {}), s = s || i.duration, d = d || i.type), r && (c.unshift(r), s = s || r.duration, d = d || r.type); return i = q(a), i.type = t, !!i.class && (s && (s = e.duration(s), s.valueOf() && (i.duration = s, o = A(s), 1 === s.as(o) && (i.singleUnit = o, c.unshift(l[o] || {})))), i.defaults = n(u), i.overrides = n(c), this.buildViewSpecOptions(i), this.buildViewSpecButtonText(i, t), i) }, buildViewSpecOptions: function(t) { t.options = n([we.defaults, t.defaults, this.dirDefaults, this.localeDefaults, this.overrides, t.overrides, this.dynamicOverrides]), Vt(t.options) }, buildViewSpecButtonText: function(t, e) {
				function n(n) { var i = n.buttonText || {}; return i[e] || (t.buttonTextKey ? i[t.buttonTextKey] : null) || (t.singleUnit ? i[t.singleUnit] : null) } t.buttonTextOverride = n(this.dynamicOverrides) || n(this.overrides) || t.overrides.buttonText, t.buttonTextDefault = n(this.localeDefaults) || n(this.dirDefaults) || t.defaults.buttonText || n(we.defaults) || (t.duration ? this.humanizeDuration(t.duration) : null) || e }, instantiateView: function(t) { var e = this.getViewSpec(t); return new e.class(this, t, e.options, e.duration) }, isValidViewType: function(t) { return Boolean(this.getViewSpec(t)) }, pushLoading: function() { this.loadingLevel++ || this.trigger("loading", null, !0, this.view) }, popLoading: function() {--this.loadingLevel || this.trigger("loading", null, !1, this.view) }, buildSelectSpan: function(t, e) { var n, i = this.moment(t).stripZone(); return n = e ? this.moment(e).stripZone() : i.hasTime() ? i.clone().add(this.defaultTimedEventDuration) : i.clone().add(this.defaultAllDayEventDuration), { start: i, end: n } } });
	we.mixin(oe), we.mixin({ optionHandlers: null, bindOption: function(t, e) { this.bindOptions([t], e) }, bindOptions: function(t, e) { var n, i = { func: e, names: t }; for(n = 0; n < t.length; n++) this.registerOptionHandlerObj(t[n], i);
			this.triggerOptionHandlerObj(i) }, registerOptionHandlerObj: function(t, e) {
			(this.optionHandlers[t] || (this.optionHandlers[t] = [])).push(e) }, triggerOptionHandlers: function(t) { var e, n = this.optionHandlers[t] || []; for(e = 0; e < n.length; e++) this.triggerOptionHandlerObj(n[e]) }, triggerOptionHandlerObj: function(t) { var e, n = t.names,
				i = []; for(e = 0; e < n.length; e++) i.push(this.options[n[e]]);
			t.func.apply(this, i) } }), we.defaults = { titleRangeSeparator: " – ", monthYearFormat: "MMMM YYYY", defaultTimedEventDuration: "02:00:00", defaultAllDayEventDuration: { days: 1 }, forceEventDuration: !1, nextDayThreshold: "09:00:00", defaultView: "month", aspectRatio: 1.35, header: { left: "title", center: "", right: "today prev,next" }, weekends: !0, weekNumbers: !1, weekNumberTitle: "W", weekNumberCalculation: "local", scrollTime: "06:00:00", lazyFetching: !0, startParam: "start", endParam: "end", timezoneParam: "timezone", timezone: !1, isRTL: !1, buttonText: { prev: "prev", next: "next", prevYear: "prev year", nextYear: "next year", year: "year", today: "today", month: "month", week: "week", day: "day" }, buttonIcons: { prev: "left-single-arrow", next: "right-single-arrow", prevYear: "left-double-arrow", nextYear: "right-double-arrow" }, allDayText: "all-day", theme: !1, themeButtonIcons: { prev: "circle-triangle-w", next: "circle-triangle-e", prevYear: "seek-prev", nextYear: "seek-next" }, dragOpacity: .75, dragRevertDuration: 500, dragScroll: !0, unselectAuto: !0, dropAccept: "*", eventOrder: "title", eventLimit: !1, eventLimitText: "more", eventLimitClick: "popover", dayPopoverFormat: "LL", handleWindowResize: !0, windowResizeDelay: 100, longPressDelay: 1e3 }, we.englishDefaults = { dayPopoverFormat: "dddd, MMMM D" }, we.rtlDefaults = { header: { left: "next,prev today", center: "", right: "title" }, buttonIcons: { prev: "right-single-arrow", next: "left-single-arrow", prevYear: "right-double-arrow", nextYear: "left-double-arrow" }, themeButtonIcons: { prev: "circle-triangle-e", next: "circle-triangle-w", nextYear: "seek-prev", prevYear: "seek-next" } };
	var Ee = jt.locales = {};
	jt.datepickerLocale = function(e, n, i) { var r = Ee[e] || (Ee[e] = {});
		r.isRTL = i.isRTL, r.weekNumberTitle = i.weekHeader, t.each(be, function(t, e) { r[t] = e(i) }), t.datepicker && (t.datepicker.regional[n] = t.datepicker.regional[e] = i, t.datepicker.regional.en = t.datepicker.regional[""], t.datepicker.setDefaults(i)) }, jt.locale = function(e, i) { var r, s;
		r = Ee[e] || (Ee[e] = {}), i && (r = Ee[e] = n([r, i])), s = Pt(e), t.each(De, function(t, e) { null == r[t] && (r[t] = e(s, r)) }), we.defaults.locale = e };
	var be = { buttonText: function(t) { return { prev: et(t.prevText), next: et(t.nextText), today: et(t.currentText) } }, monthYearFormat: function(t) { return t.showMonthAfterYear ? "YYYY[" + t.yearSuffix + "] MMMM" : "MMMM YYYY[" + t.yearSuffix + "]" } },
		De = { dayOfMonthFormat: function(t, e) { var n = t.longDateFormat("l"); return n = n.replace(/^Y+[^\w\s]*|[^\w\s]*Y+$/g, ""), e.isRTL ? n += " ddd" : n = "ddd " + n, n }, mediumTimeFormat: function(t) { return t.longDateFormat("LT").replace(/\s*a$/i, "a") }, smallTimeFormat: function(t) { return t.longDateFormat("LT").replace(":mm", "(:mm)").replace(/(\Wmm)$/, "($1)").replace(/\s*a$/i, "a") }, extraSmallTimeFormat: function(t) { return t.longDateFormat("LT").replace(":mm", "(:mm)").replace(/(\Wmm)$/, "($1)").replace(/\s*a$/i, "t") }, hourFormat: function(t) { return t.longDateFormat("LT").replace(":mm", "").replace(/(\Wmm)$/, "").replace(/\s*a$/i, "a") }, noMeridiemTimeFormat: function(t) { return t.longDateFormat("LT").replace(/\s*a$/i, "") } },
		Ce = { smallDayDateFormat: function(t) { return t.isRTL ? "D dd" : "dd D" }, weekFormat: function(t) { return t.isRTL ? "w[ " + t.weekNumberTitle + "]" : "[" + t.weekNumberTitle + " ]w" }, smallWeekFormat: function(t) { return t.isRTL ? "w[" + t.weekNumberTitle + "]" : "[" + t.weekNumberTitle + "]w" } };
	jt.locale("en", we.englishDefaults), jt.sourceNormalizers = [], jt.sourceFetchers = [];
	var He = { dataType: "json", cache: !1 },
		Te = 1;
	we.prototype.normalizeEvent = function(t) {}, we.prototype.spanContainsSpan = function(t, e) { var n = t.start.clone().stripZone(),
			i = this.getEventEnd(t).stripZone(); return e.start >= n && e.end <= i }, we.prototype.getPeerEvents = function(t, e) { var n, i, r = this.getEventCache(),
			s = []; for(n = 0; n < r.length; n++) i = r[n], e && e._id === i._id || s.push(i); return s }, we.prototype.isEventSpanAllowed = function(t, e) { var n = e.source || {},
			i = J(e.constraint, n.constraint, this.options.eventConstraint),
			r = J(e.overlap, n.overlap, this.options.eventOverlap); return this.isSpanAllowed(t, i, r, e) && (!this.options.eventAllow || this.options.eventAllow(t, e) !== !1) }, we.prototype.isExternalSpanAllowed = function(e, n, i) { var r, s; return i && (r = t.extend({}, i, n), s = this.expandEvent(this.buildEventFromInput(r))[0]), s ? this.isEventSpanAllowed(e, s) : this.isSelectionSpanAllowed(e) }, we.prototype.isSelectionSpanAllowed = function(t) { return this.isSpanAllowed(t, this.options.selectConstraint, this.options.selectOverlap) && (!this.options.selectAllow || this.options.selectAllow(t) !== !1) }, we.prototype.isSpanAllowed = function(t, e, n, i) { var r, s, o, l, a, u; if(null != e && (r = this.constraintToEvents(e))) { for(s = !1, l = 0; l < r.length; l++)
				if(this.spanContainsSpan(r[l], t)) { s = !0; break }
			if(!s) return !1 } for(o = this.getPeerEvents(t, i), l = 0; l < o.length; l++)
			if(a = o[l], this.eventIntersectsRange(a, t)) { if(n === !1) return !1; if("function" == typeof n && !n(a, i)) return !1; if(i) { if(u = J(a.overlap, (a.source || {}).overlap), u === !1) return !1; if("function" == typeof u && !u(i, a)) return !1 } }
		return !0 }, we.prototype.constraintToEvents = function(t) { return "businessHours" === t ? this.getCurrentBusinessHourEvents() : "object" == typeof t ? null != t.start ? this.expandEvent(this.buildEventFromInput(t)) : null : this.clientEvents(t) }, we.prototype.eventIntersectsRange = function(t, e) { var n = t.start.clone().stripZone(),
			i = this.getEventEnd(t).stripZone(); return e.start < i && e.end > n };
	var xe = { id: "_fcBusinessHours", start: "09:00", end: "17:00", dow: [1, 2, 3, 4, 5], rendering: "inverse-background" };
	we.prototype.getCurrentBusinessHourEvents = function(t) { return this.computeBusinessHourEvents(t, this.options.businessHours) }, we.prototype.computeBusinessHourEvents = function(e, n) { return n === !0 ? this.expandBusinessHourEvents(e, [{}]) : t.isPlainObject(n) ? this.expandBusinessHourEvents(e, [n]) : t.isArray(n) ? this.expandBusinessHourEvents(e, n, !0) : [] }, we.prototype.expandBusinessHourEvents = function(e, n, i) { var r, s, o = this.getView(),
			l = []; for(r = 0; r < n.length; r++) s = n[r], i && !s.dow || (s = t.extend({}, xe, s), e && (s.start = null, s.end = null), l.push.apply(l, this.expandEvent(this.buildEventFromInput(s), o.start, o.end))); return l };
	var Re = jt.BasicView = ye.extend({ scroller: null, dayGridClass: ve, dayGrid: null, dayNumbersVisible: !1, colWeekNumbersVisible: !1, cellWeekNumbersVisible: !1, weekNumberWidth: null, headContainerEl: null, headRowEl: null, initialize: function() { this.dayGrid = this.instantiateDayGrid(), this.scroller = new Se({ overflowX: "hidden", overflowY: "auto" }) }, instantiateDayGrid: function() { var t = this.dayGridClass.extend(Ie); return new t(this) }, setRange: function(t) { ye.prototype.setRange.call(this, t), this.dayGrid.breakOnWeeks = /year|month|week/.test(this.intervalUnit), this.dayGrid.setRange(t) }, computeRange: function(t) { var e = ye.prototype.computeRange.call(this, t); return /year|month/.test(e.intervalUnit) && (e.start.startOf("week"), e.start = this.skipHiddenDays(e.start), e.end.weekday() && (e.end.add(1, "week").startOf("week"), e.end = this.skipHiddenDays(e.end, -1, !0))), e }, renderDates: function() { this.dayNumbersVisible = this.dayGrid.rowCnt > 1, this.opt("weekNumbers") && (this.opt("weekNumbersWithinDays") ? (this.cellWeekNumbersVisible = !0, this.colWeekNumbersVisible = !1) : (this.cellWeekNumbersVisible = !1, this.colWeekNumbersVisible = !0)), this.dayGrid.numbersVisible = this.dayNumbersVisible || this.cellWeekNumbersVisible || this.colWeekNumbersVisible, this.el.addClass("fc-basic-view").html(this.renderSkeletonHtml()), this.renderHead(), this.scroller.render(); var e = this.scroller.el.addClass("fc-day-grid-container"),
					n = t('<div class="fc-day-grid" />').appendTo(e);
				this.el.find(".fc-body > tr > td").append(e), this.dayGrid.setElement(n), this.dayGrid.renderDates(this.hasRigidRows()) }, renderHead: function() { this.headContainerEl = this.el.find(".fc-head-container").html(this.dayGrid.renderHeadHtml()), this.headRowEl = this.headContainerEl.find(".fc-row") }, unrenderDates: function() { this.dayGrid.unrenderDates(), this.dayGrid.removeElement(), this.scroller.destroy() }, renderBusinessHours: function() { this.dayGrid.renderBusinessHours() }, unrenderBusinessHours: function() { this.dayGrid.unrenderBusinessHours() }, renderSkeletonHtml: function() { return '<table><thead class="fc-head"><tr><td class="fc-head-container ' + this.widgetHeaderClass + '"></td></tr></thead><tbody class="fc-body"><tr><td class="' + this.widgetContentClass + '"></td></tr></tbody></table>' }, weekNumberStyleAttr: function() { return null !== this.weekNumberWidth ? 'style="width:' + this.weekNumberWidth + 'px"' : "" }, hasRigidRows: function() { var t = this.opt("eventLimit"); return t && "number" != typeof t }, updateWidth: function() { this.colWeekNumbersVisible && (this.weekNumberWidth = u(this.el.find(".fc-week-number"))) }, setHeight: function(t, e) { var n, s, o = this.opt("eventLimit");
				this.scroller.clear(), r(this.headRowEl), this.dayGrid.removeSegPopover(), o && "number" == typeof o && this.dayGrid.limitRows(o), n = this.computeScrollerHeight(t), this.setGridHeight(n, e), o && "number" != typeof o && this.dayGrid.limitRows(o), e || (this.scroller.setHeight(n), s = this.scroller.getScrollbarWidths(), (s.left || s.right) && (i(this.headRowEl, s), n = this.computeScrollerHeight(t), this.scroller.setHeight(n)), this.scroller.lockOverflow(s)) }, computeScrollerHeight: function(t) { return t - c(this.el, this.scroller.el) }, setGridHeight: function(t, e) { e ? a(this.dayGrid.rowEls) : l(this.dayGrid.rowEls, t, !0) }, queryScroll: function() { return this.scroller.getScrollTop() }, setScroll: function(t) { this.scroller.setScrollTop(t) }, prepareHits: function() { this.dayGrid.prepareHits() }, releaseHits: function() { this.dayGrid.releaseHits() }, queryHit: function(t, e) { return this.dayGrid.queryHit(t, e) }, getHitSpan: function(t) { return this.dayGrid.getHitSpan(t) }, getHitEl: function(t) { return this.dayGrid.getHitEl(t) }, renderEvents: function(t) { this.dayGrid.renderEvents(t), this.updateHeight() }, getEventSegs: function() { return this.dayGrid.getEventSegs() }, unrenderEvents: function() { this.dayGrid.unrenderEvents() }, renderDrag: function(t, e) { return this.dayGrid.renderDrag(t, e) }, unrenderDrag: function() { this.dayGrid.unrenderDrag() }, renderSelection: function(t) { this.dayGrid.renderSelection(t) }, unrenderSelection: function() { this.dayGrid.unrenderSelection() } }),
		Ie = { renderHeadIntroHtml: function() { var t = this.view; return t.colWeekNumbersVisible ? '<th class="fc-week-number ' + t.widgetHeaderClass + '" ' + t.weekNumberStyleAttr() + "><span>" + tt(t.opt("weekNumberTitle")) + "</span></th>" : "" }, renderNumberIntroHtml: function(t) { var e = this.view,
					n = this.getCellDate(t, 0); return e.colWeekNumbersVisible ? '<td class="fc-week-number" ' + e.weekNumberStyleAttr() + ">" + e.buildGotoAnchorHtml({ date: n, type: "week", forceOff: 1 === this.colCnt }, n.format("w")) + "</td>" : "" }, renderBgIntroHtml: function() { var t = this.view; return t.colWeekNumbersVisible ? '<td class="fc-week-number ' + t.widgetContentClass + '" ' + t.weekNumberStyleAttr() + "></td>" : "" }, renderIntroHtml: function() { var t = this.view; return t.colWeekNumbersVisible ? '<td class="fc-week-number" ' + t.weekNumberStyleAttr() + "></td>" : "" } },
		ke = jt.MonthView = Re.extend({ computeRange: function(t) { var e, n = Re.prototype.computeRange.call(this, t); return this.isFixedWeeks() && (e = Math.ceil(n.end.diff(n.start, "weeks", !0)), n.end.add(6 - e, "weeks")), n }, setGridHeight: function(t, e) { e && (t *= this.rowCnt / 6), l(this.dayGrid.rowEls, t, !e) }, isFixedWeeks: function() { return this.opt("fixedWeekCount") } });
	Ut.basic = { class: Re }, Ut.basicDay = { type: "basic", duration: { days: 1 } }, Ut.basicWeek = { type: "basic", duration: { weeks: 1 } }, Ut.month = { class: ke, duration: { months: 1 }, defaults: { fixedWeekCount: !0 } };
	var Le = jt.AgendaView = ye.extend({ scroller: null, timeGridClass: me, timeGrid: null, dayGridClass: ve, dayGrid: null, axisWidth: null, headContainerEl: null, noScrollRowEls: null, bottomRuleEl: null, initialize: function() { this.timeGrid = this.instantiateTimeGrid(), this.opt("allDaySlot") && (this.dayGrid = this.instantiateDayGrid()), this.scroller = new Se({ overflowX: "hidden", overflowY: "auto" }) }, instantiateTimeGrid: function() { var t = this.timeGridClass.extend(Me); return new t(this) }, instantiateDayGrid: function() { var t = this.dayGridClass.extend(ze); return new t(this) }, setRange: function(t) { ye.prototype.setRange.call(this, t), this.timeGrid.setRange(t), this.dayGrid && this.dayGrid.setRange(t) }, renderDates: function() { this.el.addClass("fc-agenda-view").html(this.renderSkeletonHtml()), this.renderHead(), this.scroller.render(); var e = this.scroller.el.addClass("fc-time-grid-container"),
					n = t('<div class="fc-time-grid" />').appendTo(e);
				this.el.find(".fc-body > tr > td").append(e), this.timeGrid.setElement(n), this.timeGrid.renderDates(), this.bottomRuleEl = t('<hr class="fc-divider ' + this.widgetHeaderClass + '"/>').appendTo(this.timeGrid.el), this.dayGrid && (this.dayGrid.setElement(this.el.find(".fc-day-grid")), this.dayGrid.renderDates(), this.dayGrid.bottomCoordPadding = this.dayGrid.el.next("hr").outerHeight()), this.noScrollRowEls = this.el.find(".fc-row:not(.fc-scroller *)") }, renderHead: function() { this.headContainerEl = this.el.find(".fc-head-container").html(this.timeGrid.renderHeadHtml()) }, unrenderDates: function() { this.timeGrid.unrenderDates(), this.timeGrid.removeElement(), this.dayGrid && (this.dayGrid.unrenderDates(), this.dayGrid.removeElement()), this.scroller.destroy() }, renderSkeletonHtml: function() { return '<table><thead class="fc-head"><tr><td class="fc-head-container ' + this.widgetHeaderClass + '"></td></tr></thead><tbody class="fc-body"><tr><td class="' + this.widgetContentClass + '">' + (this.dayGrid ? '<div class="fc-day-grid"/><hr class="fc-divider ' + this.widgetHeaderClass + '"/>' : "") + "</td></tr></tbody></table>" }, axisStyleAttr: function() { return null !== this.axisWidth ? 'style="width:' + this.axisWidth + 'px"' : "" }, renderBusinessHours: function() { this.timeGrid.renderBusinessHours(), this.dayGrid && this.dayGrid.renderBusinessHours() }, unrenderBusinessHours: function() { this.timeGrid.unrenderBusinessHours(), this.dayGrid && this.dayGrid.unrenderBusinessHours() }, getNowIndicatorUnit: function() { return this.timeGrid.getNowIndicatorUnit() }, renderNowIndicator: function(t) { this.timeGrid.renderNowIndicator(t) }, unrenderNowIndicator: function() { this.timeGrid.unrenderNowIndicator() }, updateSize: function(t) { this.timeGrid.updateSize(t), ye.prototype.updateSize.call(this, t) }, updateWidth: function() { this.axisWidth = u(this.el.find(".fc-axis")) }, setHeight: function(t, e) { var n, s, o;
				this.bottomRuleEl.hide(), this.scroller.clear(), r(this.noScrollRowEls), this.dayGrid && (this.dayGrid.removeSegPopover(), n = this.opt("eventLimit"), n && "number" != typeof n && (n = Be), n && this.dayGrid.limitRows(n)), e || (s = this.computeScrollerHeight(t), this.scroller.setHeight(s), o = this.scroller.getScrollbarWidths(), (o.left || o.right) && (i(this.noScrollRowEls, o), s = this.computeScrollerHeight(t), this.scroller.setHeight(s)), this.scroller.lockOverflow(o), this.timeGrid.getTotalSlatHeight() < s && this.bottomRuleEl.show()) }, computeScrollerHeight: function(t) { return t - c(this.el, this.scroller.el) }, computeInitialScroll: function() { var t = e.duration(this.opt("scrollTime")),
					n = this.timeGrid.computeTimeTop(t); return n = Math.ceil(n), n && n++, n }, queryScroll: function() { return this.scroller.getScrollTop() }, setScroll: function(t) { this.scroller.setScrollTop(t) }, prepareHits: function() { this.timeGrid.prepareHits(), this.dayGrid && this.dayGrid.prepareHits() }, releaseHits: function() { this.timeGrid.releaseHits(), this.dayGrid && this.dayGrid.releaseHits() }, queryHit: function(t, e) { var n = this.timeGrid.queryHit(t, e); return !n && this.dayGrid && (n = this.dayGrid.queryHit(t, e)), n }, getHitSpan: function(t) { return t.component.getHitSpan(t) }, getHitEl: function(t) { return t.component.getHitEl(t) }, renderEvents: function(t) { var e, n, i = [],
					r = [],
					s = []; for(n = 0; n < t.length; n++) t[n].allDay ? i.push(t[n]) : r.push(t[n]);
				e = this.timeGrid.renderEvents(r), this.dayGrid && (s = this.dayGrid.renderEvents(i)), this.updateHeight() }, getEventSegs: function() { return this.timeGrid.getEventSegs().concat(this.dayGrid ? this.dayGrid.getEventSegs() : []) }, unrenderEvents: function() { this.timeGrid.unrenderEvents(), this.dayGrid && this.dayGrid.unrenderEvents() }, renderDrag: function(t, e) { return t.start.hasTime() ? this.timeGrid.renderDrag(t, e) : this.dayGrid ? this.dayGrid.renderDrag(t, e) : void 0 }, unrenderDrag: function() { this.timeGrid.unrenderDrag(), this.dayGrid && this.dayGrid.unrenderDrag() }, renderSelection: function(t) { t.start.hasTime() || t.end.hasTime() ? this.timeGrid.renderSelection(t) : this.dayGrid && this.dayGrid.renderSelection(t) }, unrenderSelection: function() { this.timeGrid.unrenderSelection(), this.dayGrid && this.dayGrid.unrenderSelection() } }),
		Me = { renderHeadIntroHtml: function() { var t, e = this.view; return e.opt("weekNumbers") ? (t = this.start.format(e.opt("smallWeekFormat")), '<th class="fc-axis fc-week-number ' + e.widgetHeaderClass + '" ' + e.axisStyleAttr() + ">" + e.buildGotoAnchorHtml({ date: this.start, type: "week", forceOff: this.colCnt > 1 }, tt(t)) + "</th>") : '<th class="fc-axis ' + e.widgetHeaderClass + '" ' + e.axisStyleAttr() + "></th>" }, renderBgIntroHtml: function() { var t = this.view; return '<td class="fc-axis ' + t.widgetContentClass + '" ' + t.axisStyleAttr() + "></td>" }, renderIntroHtml: function() { var t = this.view; return '<td class="fc-axis" ' + t.axisStyleAttr() + "></td>" } },
		ze = { renderBgIntroHtml: function() { var t = this.view; return '<td class="fc-axis ' + t.widgetContentClass + '" ' + t.axisStyleAttr() + "><span>" + t.getAllDayHtml() + "</span></td>" }, renderIntroHtml: function() { var t = this.view; return '<td class="fc-axis" ' + t.axisStyleAttr() + "></td>" } },
		Be = 5,
		Fe = [{ hours: 1 }, { minutes: 30 }, { minutes: 15 }, { seconds: 30 }, { seconds: 15 }];
	Ut.agenda = { class: Le, defaults: { allDaySlot: !0, slotDuration: "00:30:00", minTime: "00:00:00", maxTime: "24:00:00", slotEventOverlap: !0 } }, Ut.agendaDay = { type: "agenda", duration: { days: 1 } }, Ut.agendaWeek = { type: "agenda", duration: { weeks: 1 } };
	var Ne = ye.extend({ grid: null, scroller: null, initialize: function() { this.grid = new Ge(this), this.scroller = new Se({ overflowX: "hidden", overflowY: "auto" }) }, setRange: function(t) { ye.prototype.setRange.call(this, t), this.grid.setRange(t) }, renderSkeleton: function() { this.el.addClass("fc-list-view " + this.widgetContentClass), this.scroller.render(), this.scroller.el.appendTo(this.el), this.grid.setElement(this.scroller.scrollEl) }, unrenderSkeleton: function() { this.scroller.destroy() }, setHeight: function(t, e) { this.scroller.setHeight(this.computeScrollerHeight(t)) }, computeScrollerHeight: function(t) { return t - c(this.el, this.scroller.el) }, renderEvents: function(t) { this.grid.renderEvents(t) }, unrenderEvents: function() { this.grid.unrenderEvents() }, isEventResizable: function(t) { return !1 }, isEventDraggable: function(t) { return !1 } }),
		Ge = ge.extend({ segSelector: ".fc-list-item", hasDayInteractions: !1, spanToSegs: function(t) { for(var e, n, i = this.view, r = i.start.clone(), s = []; r < i.end;) e = r.clone().add(1, "day"), n = F(t, { start: r, end: e }), n && s.push(n), r = e; return s }, computeEventTimeFormat: function() { return this.view.opt("mediumTimeFormat") }, handleSegClick: function(e, n) { var i;
				ge.prototype.handleSegClick.apply(this, arguments), t(n.target).closest("a[href]").length || (i = e.event.url, i && !n.isDefaultPrevented() && (window.location.href = i)) }, renderFgSegs: function(t) { return t = this.renderFgSegEls(t), t.length ? this.renderSegList(t) : (this.renderEmptyMessage(), t) }, renderEmptyMessage: function() { this.el.html('<div class="fc-list-empty-wrap2"><div class="fc-list-empty-wrap1"><div class="fc-list-empty">' + tt(this.view.opt("noEventsMessage")) + "</div></div></div>") }, renderSegList: function(e) { var n, i, r, s = t('<table class="fc-list-table"><tbody/></table>'),
					o = s.find("tbody"); for(this.sortEventSegs(e), n = 0; n < e.length; n++) i = e[n], r && i.start.isSame(r, "day") || (r = i.start.clone().stripTime(), o.append(this.dayHeaderHtml(r))), o.append(i.el); return this.el.empty().append(s), e }, dayHeaderHtml: function(t) { var e = this.view,
					n = e.opt("listDayFormat"),
					i = e.opt("listDayAltFormat"); return '<tr class="fc-list-heading" data-date="' + t.format("YYYY-MM-DD") + '"><td class="' + e.widgetHeaderClass + '" colspan="3">' + (n ? e.buildGotoAnchorHtml(t, { class: "fc-list-heading-main" }, tt(t.format(n))) : "") + (i ? e.buildGotoAnchorHtml(t, { class: "fc-list-heading-alt" }, tt(t.format(i))) : "") + "</td></tr>" }, fgSegHtml: function(t) { var e, n = this.view,
					i = ["fc-list-item"].concat(this.getSegCustomClasses(t)),
					r = this.getSegBackgroundColor(t),
					s = t.event,
					o = s.url; return t.start.hasTime() ? e = tt(this.getEventTimeText(s)) : this.displayEventTime && (e = n.getAllDayHtml()), o && i.push("fc-has-url"), '<tr class="' + i.join(" ") + '">' + (e ? '<td class="fc-list-item-time ' + n.widgetContentClass + '">' + e + "</td>" : "") + '<td class="fc-list-item-marker ' + n.widgetContentClass + '"><span class="fc-event-dot"' + (r ? ' style="background-color:' + r + '"' : "") + '></span></td><td class="fc-list-item-title ' + n.widgetContentClass + '"><a' + (o ? ' href="' + tt(o) + '"' : "") + ">" + tt(t.event.title) + "</a></td></tr>" } });
	return Ut.list = { class: Ne, buttonTextKey: "list", defaults: { buttonText: "list", listTime: !0, listDayFormat: "LL", noEventsMessage: "No events to display" } }, Ut.listDay = { type: "list", duration: { days: 1 }, defaults: { listDayFormat: "dddd" } }, Ut.listWeek = { type: "list", duration: { weeks: 1 }, defaults: { listDayFormat: "dddd", listDayAltFormat: "LL" } }, Ut.listMonth = { type: "list", duration: { month: 1 }, defaults: { listDayAltFormat: "dddd" } }, Ut.listYear = { type: "list", duration: { year: 1 }, defaults: { listDayAltFormat: "dddd" } }, jt
});
! function(e) { "function" == typeof define && define.amd ? define(["jquery"], e) : "object" == typeof exports ? module.exports = e(require("jquery")) : e(jQuery) }(function(e) {
	function a(a, t, d, c, i) {
		function s(o, r) { var l = r || [{ message: o }];
			(a.googleCalendarError || e.noop).apply(i, l), (i.options.googleCalendarError || e.noop).apply(i, l), n.warn.apply(null, [o].concat(r || [])) } var u, g, p = r + "/" + encodeURIComponent(a.googleCalendarId) + "/events?callback=?",
			m = a.googleCalendarApiKey || i.options.googleCalendarApiKey,
			f = a.success; return m ? (t.hasZone() || (t = t.clone().utc().add(-1, "day")), d.hasZone() || (d = d.clone().utc().add(1, "day")), c && "local" != c && (g = c.replace(" ", "_")), u = e.extend({}, a.data || {}, { key: m, timeMin: t.format(), timeMax: d.format(), timeZone: g, singleEvents: !0, maxResults: 9999 }), e.extend({}, a, { googleCalendarId: null, url: p, data: u, startParam: !1, endParam: !1, timezoneParam: !1, success: function(a) { var r, n, t = []; if(a.error) s("Google Calendar API: " + a.error.message, a.error.errors);
				else if(a.items && (e.each(a.items, function(e, a) { var r = a.htmlLink || null;
						g && null !== r && (r = o(r, "ctz=" + g)), t.push({ id: a.id, title: a.summary, start: a.start.dateTime || a.start.date, end: a.end.dateTime || a.end.date, url: r, location: a.location, description: a.description }) }), r = [t].concat(Array.prototype.slice.call(arguments, 1)), n = l(f, this, r), e.isArray(n))) return n; return t } })) : (s("Specify a googleCalendarApiKey. See http://fullcalendar.io/docs/google_calendar/"), {}) }

	function o(e, a) { return e.replace(/(\?.*?)?(#|$)/, function(e, o, r) { return(o ? o + "&" : "?") + a + r }) } var r = "https://www.googleapis.com/calendar/v3/calendars",
		n = e.fullCalendar,
		l = n.applyAll;
	n.sourceNormalizers.push(function(e) { var a, o = e.googleCalendarId,
			r = e.url;!o && r && (/^[^\/]+@([^\/\.]+\.)*(google|googlemail|gmail)\.com$/.test(r) ? o = r : ((a = /^https:\/\/www.googleapis.com\/calendar\/v3\/calendars\/([^\/]*)/.exec(r)) || (a = /^https?:\/\/www.google.com\/calendar\/feeds\/([^\/]*)/.exec(r))) && (o = decodeURIComponent(a[1])), o && (e.googleCalendarId = o)), o && (null == e.editable && (e.editable = !1), e.url = o) }), n.sourceFetchers.push(function(e, o, r, n) { return e.googleCalendarId ? a(e, o, r, n, this) : void 0 }) });

/*!
 * Easy pie chart is a jquery plugin to display simple animated pie charts for only one value
 *
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php)
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * Built on top of the jQuery library (http://jquery.com)
 *
 * @source: http://github.com/rendro/easy-pie-chart/
 * @autor: Robert Fleischmann
 * @version: 1.2.5
 *
 * Inspired by: http://dribbble.com/shots/631074-Simple-Pie-Charts-II?list=popular&offset=210
 * Thanks to Philip Thrasher for the jquery plugin boilerplate for coffee script
 */
! function(e) { return e.easyPieChart = function(t, n) { var i, a, r, o, s, l, d, c, u = this; return this.el = t, this.$el = e(t), this.$el.data("easyPieChart", this), this.init = function() { var t, i; return u.options = e.extend({}, e.easyPieChart.defaultOptions, n), t = parseInt(u.$el.data("percent"), 10), u.percentage = 0, u.canvas = e("<canvas width='" + u.options.size + "' height='" + u.options.size + "'></canvas>").get(0), u.$el.append(u.canvas), "undefined" != typeof G_vmlCanvasManager && null !== G_vmlCanvasManager && G_vmlCanvasManager.initElement(u.canvas), u.ctx = u.canvas.getContext("2d"), window.devicePixelRatio > 1 && (i = window.devicePixelRatio, e(u.canvas).css({ width: u.options.size, height: u.options.size }), u.canvas.width *= i, u.canvas.height *= i, u.ctx.scale(i, i)), u.ctx.translate(u.options.size / 2, u.options.size / 2), u.ctx.rotate(u.options.rotate * Math.PI / 180), u.$el.addClass("easyPieChart"), u.$el.css({ width: u.options.size, height: u.options.size, lineHeight: "" + u.options.size + "px" }), u.update(t), u }, this.update = function(e) { return e = parseFloat(e) || 0, u.options.animate === !1 ? r(e) : u.options.delay ? (a(u.percentage, 0), setTimeout(function() { return a(u.percentage, e) }, u.options.delay)) : a(u.percentage, e), u }, d = function() { var e, t, n; for(u.ctx.fillStyle = u.options.scaleColor, u.ctx.lineWidth = 1, n = [], e = t = 0; 24 >= t; e = ++t) n.push(i(e)); return n }, i = function(e) { var t;
			t = 0 === e % 6 ? 0 : .017 * u.options.size, u.ctx.save(), u.ctx.rotate(e * Math.PI / 12), u.ctx.fillRect(u.options.size / 2 - t, 0, .05 * -u.options.size + t, 1), u.ctx.restore() }, c = function() { var e;
			e = u.options.size / 2 - u.options.lineWidth / 2, u.options.scaleColor !== !1 && (e -= .08 * u.options.size), u.ctx.beginPath(), u.ctx.arc(0, 0, e, 0, 2 * Math.PI, !0), u.ctx.closePath(), u.ctx.strokeStyle = u.options.trackColor, u.ctx.lineWidth = u.options.lineWidth, u.ctx.stroke() }, l = function() { u.options.scaleColor !== !1 && d(), u.options.trackColor !== !1 && c() }, r = function(t) { var n;
			l(), u.ctx.strokeStyle = e.isFunction(u.options.barColor) ? u.options.barColor(t) : u.options.barColor, u.ctx.lineCap = u.options.lineCap, u.ctx.lineWidth = u.options.lineWidth, n = u.options.size / 2 - u.options.lineWidth / 2, u.options.scaleColor !== !1 && (n -= .08 * u.options.size), u.ctx.save(), u.ctx.rotate(-Math.PI / 2), u.ctx.beginPath(), u.ctx.arc(0, 0, n, 0, 2 * Math.PI * t / 100, !1), u.ctx.stroke(), u.ctx.restore() }, s = function() { return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || function(e) { return window.setTimeout(e, 1e3 / 60) } }(), a = function(e, t) { var n, i;
			u.options.onStart.call(u), u.percentage = t, Date.now || (Date.now = function() { return +new Date }), i = Date.now(), n = function() { var a, d; return d = Math.min(Date.now() - i, u.options.animate), u.ctx.clearRect(-u.options.size / 2, -u.options.size / 2, u.options.size, u.options.size), l.call(u), a = [o(d, e, t - e, u.options.animate)], u.options.onStep.call(u, a), r.call(u, a), d >= u.options.animate ? u.options.onStop.call(u, a, t) : s(n) }, s(n) }, o = function(e, t, n, i) { var a, r; return a = function(e) { return Math.pow(e, 2) }, r = function(e) { return 1 > e ? a(e) : 2 - a(-2 * (e / 2) + 2) }, e /= i / 2, n / 2 * r(e) + t }, this.init() }, e.easyPieChart.defaultOptions = { barColor: "#ef1e25", trackColor: "#f2f2f2", scaleColor: "#dfe0e0", lineCap: "round", rotate: 0, size: 110, lineWidth: 3, animate: !1, delay: !1, onStart: e.noop, onStop: e.noop, onStep: e.noop }, e.fn.easyPieChart = function(t) { return e.each(this, function(n, i) { var a, r; return a = e(i), a.data("easyPieChart") ? void 0 : (r = e.extend({}, t, a.data()), a.data("easyPieChart", new e.easyPieChart(i, r))) }) }, void 0 }(jQuery);

/*!
 * Javascript plotting library for jQuery, version 0.8.3.
 * Copyright (c) 2007-2013 IOLA and Ole Laursen.
 * Licensed under the MIT license.
 *
 * Plugin for jQuery for working with colors. Version 1.1.
 * Inspiration from jQuery color animation plugin by John Resig.
 * Released under the MIT license by Ole Laursen, October 2009.
 */
(function($) { $.color = {};
	$.color.make = function(r, g, b, a) { var o = {};
		o.r = r || 0;
		o.g = g || 0;
		o.b = b || 0;
		o.a = a != null ? a : 1;
		o.add = function(c, d) { for(var i = 0; i < c.length; ++i) o[c.charAt(i)] += d; return o.normalize() };
		o.scale = function(c, f) { for(var i = 0; i < c.length; ++i) o[c.charAt(i)] *= f; return o.normalize() };
		o.toString = function() { if(o.a >= 1) { return "rgb(" + [o.r, o.g, o.b].join(",") + ")" } else { return "rgba(" + [o.r, o.g, o.b, o.a].join(",") + ")" } };
		o.normalize = function() {
			function clamp(min, value, max) { return value < min ? min : value > max ? max : value } o.r = clamp(0, parseInt(o.r), 255);
			o.g = clamp(0, parseInt(o.g), 255);
			o.b = clamp(0, parseInt(o.b), 255);
			o.a = clamp(0, o.a, 1); return o };
		o.clone = function() { return $.color.make(o.r, o.b, o.g, o.a) }; return o.normalize() };
	$.color.extract = function(elem, css) { var c;
		do { c = elem.css(css).toLowerCase(); if(c != "" && c != "transparent") break;
			elem = elem.parent() } while (elem.length && !$.nodeName(elem.get(0), "body")); if(c == "rgba(0, 0, 0, 0)") c = "transparent"; return $.color.parse(c) };
	$.color.parse = function(str) { var res, m = $.color.make; if(res = /rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/.exec(str)) return m(parseInt(res[1], 10), parseInt(res[2], 10), parseInt(res[3], 10)); if(res = /rgba\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]+(?:\.[0-9]+)?)\s*\)/.exec(str)) return m(parseInt(res[1], 10), parseInt(res[2], 10), parseInt(res[3], 10), parseFloat(res[4])); if(res = /rgb\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*\)/.exec(str)) return m(parseFloat(res[1]) * 2.55, parseFloat(res[2]) * 2.55, parseFloat(res[3]) * 2.55); if(res = /rgba\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\s*\)/.exec(str)) return m(parseFloat(res[1]) * 2.55, parseFloat(res[2]) * 2.55, parseFloat(res[3]) * 2.55, parseFloat(res[4])); if(res = /#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/.exec(str)) return m(parseInt(res[1], 16), parseInt(res[2], 16), parseInt(res[3], 16)); if(res = /#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/.exec(str)) return m(parseInt(res[1] + res[1], 16), parseInt(res[2] + res[2], 16), parseInt(res[3] + res[3], 16)); var name = $.trim(str).toLowerCase(); if(name == "transparent") return m(255, 255, 255, 0);
		else { res = lookupColors[name] || [0, 0, 0]; return m(res[0], res[1], res[2]) } }; var lookupColors = { aqua: [0, 255, 255], azure: [240, 255, 255], beige: [245, 245, 220], black: [0, 0, 0], blue: [0, 0, 255], brown: [165, 42, 42], cyan: [0, 255, 255], darkblue: [0, 0, 139], darkcyan: [0, 139, 139], darkgrey: [169, 169, 169], darkgreen: [0, 100, 0], darkkhaki: [189, 183, 107], darkmagenta: [139, 0, 139], darkolivegreen: [85, 107, 47], darkorange: [255, 140, 0], darkorchid: [153, 50, 204], darkred: [139, 0, 0], darksalmon: [233, 150, 122], darkviolet: [148, 0, 211], fuchsia: [255, 0, 255], gold: [255, 215, 0], green: [0, 128, 0], indigo: [75, 0, 130], khaki: [240, 230, 140], lightblue: [173, 216, 230], lightcyan: [224, 255, 255], lightgreen: [144, 238, 144], lightgrey: [211, 211, 211], lightpink: [255, 182, 193], lightyellow: [255, 255, 224], lime: [0, 255, 0], magenta: [255, 0, 255], maroon: [128, 0, 0], navy: [0, 0, 128], olive: [128, 128, 0], orange: [255, 165, 0], pink: [255, 192, 203], purple: [128, 0, 128], violet: [128, 0, 128], red: [255, 0, 0], silver: [192, 192, 192], white: [255, 255, 255], yellow: [255, 255, 0] } })(jQuery);
(function($) {
	var hasOwnProperty = Object.prototype.hasOwnProperty;
	if(!$.fn.detach) { $.fn.detach = function() { return this.each(function() { if(this.parentNode) { this.parentNode.removeChild(this) } }) } }

	function Canvas(cls, container) { var element = container.children("." + cls)[0]; if(element == null) { element = document.createElement("canvas");
			element.className = cls;
			$(element).css({ direction: "ltr", position: "absolute", left: 0, top: 0 }).appendTo(container); if(!element.getContext) { if(window.G_vmlCanvasManager) { element = window.G_vmlCanvasManager.initElement(element) } else { throw new Error("Canvas is not available. If you're using IE with a fall-back such as Excanvas, then there's either a mistake in your conditional include, or the page has no DOCTYPE and is rendering in Quirks Mode.") } } } this.element = element; var context = this.context = element.getContext("2d"); var devicePixelRatio = window.devicePixelRatio || 1,
			backingStoreRatio = context.webkitBackingStorePixelRatio || context.mozBackingStorePixelRatio || context.msBackingStorePixelRatio || context.oBackingStorePixelRatio || context.backingStorePixelRatio || 1;
		this.pixelRatio = devicePixelRatio / backingStoreRatio;
		this.resize(container.width(), container.height());
		this.textContainer = null;
		this.text = {};
		this._textCache = {} } Canvas.prototype.resize = function(width, height) { if(width <= 0 || height <= 0) { throw new Error("Invalid dimensions for plot, width = " + width + ", height = " + height) } var element = this.element,
			context = this.context,
			pixelRatio = this.pixelRatio; if(this.width != width) { element.width = width * pixelRatio;
			element.style.width = width + "px";
			this.width = width } if(this.height != height) { element.height = height * pixelRatio;
			element.style.height = height + "px";
			this.height = height } context.restore();
		context.save();
		context.scale(pixelRatio, pixelRatio) };
	Canvas.prototype.clear = function() { this.context.clearRect(0, 0, this.width, this.height) };
	Canvas.prototype.render = function() { var cache = this._textCache; for(var layerKey in cache) { if(hasOwnProperty.call(cache, layerKey)) { var layer = this.getTextLayer(layerKey),
					layerCache = cache[layerKey];
				layer.hide(); for(var styleKey in layerCache) { if(hasOwnProperty.call(layerCache, styleKey)) { var styleCache = layerCache[styleKey]; for(var key in styleCache) { if(hasOwnProperty.call(styleCache, key)) { var positions = styleCache[key].positions; for(var i = 0, position; position = positions[i]; i++) { if(position.active) { if(!position.rendered) { layer.append(position.element);
											position.rendered = true } } else { positions.splice(i--, 1); if(position.rendered) { position.element.detach() } } } if(positions.length == 0) { delete styleCache[key] } } } } } layer.show() } } };
	Canvas.prototype.getTextLayer = function(classes) { var layer = this.text[classes]; if(layer == null) { if(this.textContainer == null) { this.textContainer = $("<div class='flot-text'></div>").css({ position: "absolute", top: 0, left: 0, bottom: 0, right: 0, "font-size": "smaller", color: "#545454" }).insertAfter(this.element) } layer = this.text[classes] = $("<div></div>").addClass(classes).css({ position: "absolute", top: 0, left: 0, bottom: 0, right: 0 }).appendTo(this.textContainer) } return layer };
	Canvas.prototype.getTextInfo = function(layer, text, font, angle, width) { var textStyle, layerCache, styleCache, info;
		text = "" + text; if(typeof font === "object") { textStyle = font.style + " " + font.variant + " " + font.weight + " " + font.size + "px/" + font.lineHeight + "px " + font.family } else { textStyle = font } layerCache = this._textCache[layer]; if(layerCache == null) { layerCache = this._textCache[layer] = {} } styleCache = layerCache[textStyle]; if(styleCache == null) { styleCache = layerCache[textStyle] = {} } info = styleCache[text]; if(info == null) { var element = $("<div></div>").html(text).css({ position: "absolute", "max-width": width, top: -9999 }).appendTo(this.getTextLayer(layer)); if(typeof font === "object") { element.css({ font: textStyle, color: font.color }) } else if(typeof font === "string") { element.addClass(font) } info = styleCache[text] = { width: element.outerWidth(true), height: element.outerHeight(true), element: element, positions: [] };
			element.detach() } return info };
	Canvas.prototype.addText = function(layer, x, y, text, font, angle, width, halign, valign) { var info = this.getTextInfo(layer, text, font, angle, width),
			positions = info.positions; if(halign == "center") { x -= info.width / 2 } else if(halign == "right") { x -= info.width } if(valign == "middle") { y -= info.height / 2 } else if(valign == "bottom") { y -= info.height } for(var i = 0, position; position = positions[i]; i++) { if(position.x == x && position.y == y) { position.active = true; return } } position = { active: true, rendered: false, element: positions.length ? info.element.clone() : info.element, x: x, y: y };
		positions.push(position);
		position.element.css({ top: Math.round(y), left: Math.round(x), "text-align": halign }) };
	Canvas.prototype.removeText = function(layer, x, y, text, font, angle) { if(text == null) { var layerCache = this._textCache[layer]; if(layerCache != null) { for(var styleKey in layerCache) { if(hasOwnProperty.call(layerCache, styleKey)) { var styleCache = layerCache[styleKey]; for(var key in styleCache) { if(hasOwnProperty.call(styleCache, key)) { var positions = styleCache[key].positions; for(var i = 0, position; position = positions[i]; i++) { position.active = false } } } } } } } else { var positions = this.getTextInfo(layer, text, font, angle).positions; for(var i = 0, position; position = positions[i]; i++) { if(position.x == x && position.y == y) { position.active = false } } } };

	function Plot(placeholder, data_, options_, plugins) {
		var series = [],
			options = { colors: ["#edc240", "#afd8f8", "#cb4b4b", "#4da74d", "#9440ed"], legend: { show: true, noColumns: 1, labelFormatter: null, labelBoxBorderColor: "#ccc", container: null, position: "ne", margin: 5, backgroundColor: null, backgroundOpacity: .85, sorted: null }, xaxis: { show: null, position: "bottom", mode: null, font: null, color: null, tickColor: null, transform: null, inverseTransform: null, min: null, max: null, autoscaleMargin: null, ticks: null, tickFormatter: null, labelWidth: null, labelHeight: null, reserveSpace: null, tickLength: null, alignTicksWithAxis: null, tickDecimals: null, tickSize: null, minTickSize: null }, yaxis: { autoscaleMargin: .02, position: "left" }, xaxes: [], yaxes: [], series: { points: { show: false, radius: 3, lineWidth: 2, fill: true, fillColor: "#ffffff", symbol: "circle" }, lines: { lineWidth: 2, fill: false, fillColor: null, steps: false }, bars: { show: false, lineWidth: 2, barWidth: 1, fill: true, fillColor: null, align: "left", horizontal: false, zero: true }, shadowSize: 3, highlightColor: null }, grid: { show: true, aboveData: false, color: "#545454", backgroundColor: null, borderColor: null, tickColor: null, margin: 0, labelMargin: 5, axisMargin: 8, borderWidth: 2, minBorderMargin: null, markings: null, markingsColor: "#f4f4f4", markingsLineWidth: 2, clickable: false, hoverable: false, autoHighlight: true, mouseActiveRadius: 10 }, interaction: { redrawOverlayInterval: 1e3 / 60 }, hooks: {} },
			surface = null,
			overlay = null,
			eventHolder = null,
			ctx = null,
			octx = null,
			xaxes = [],
			yaxes = [],
			plotOffset = { left: 0, right: 0, top: 0, bottom: 0 },
			plotWidth = 0,
			plotHeight = 0,
			hooks = { processOptions: [], processRawData: [], processDatapoints: [], processOffset: [], drawBackground: [], drawSeries: [], draw: [], bindEvents: [], drawOverlay: [], shutdown: [] },
			plot = this;
		plot.setData = setData;
		plot.setupGrid = setupGrid;
		plot.draw = draw;
		plot.getPlaceholder = function() { return placeholder };
		plot.getCanvas = function() { return surface.element };
		plot.getPlotOffset = function() { return plotOffset };
		plot.width = function() { return plotWidth };
		plot.height = function() { return plotHeight };
		plot.offset = function() { var o = eventHolder.offset();
			o.left += plotOffset.left;
			o.top += plotOffset.top; return o };
		plot.getData = function() { return series };
		plot.getAxes = function() { var res = {},
				i;
			$.each(xaxes.concat(yaxes), function(_, axis) { if(axis) res[axis.direction + (axis.n != 1 ? axis.n : "") + "axis"] = axis }); return res };
		plot.getXAxes = function() { return xaxes };
		plot.getYAxes = function() { return yaxes };
		plot.c2p = canvasToAxisCoords;
		plot.p2c = axisToCanvasCoords;
		plot.getOptions = function() { return options };
		plot.highlight = highlight;
		plot.unhighlight = unhighlight;
		plot.triggerRedrawOverlay = triggerRedrawOverlay;
		plot.pointOffset = function(point) { return { left: parseInt(xaxes[axisNumber(point, "x") - 1].p2c(+point.x) + plotOffset.left, 10), top: parseInt(yaxes[axisNumber(point, "y") - 1].p2c(+point.y) + plotOffset.top, 10) } };
		plot.shutdown = shutdown;
		plot.destroy = function() { shutdown();
			placeholder.removeData("plot").empty();
			series = [];
			options = null;
			surface = null;
			overlay = null;
			eventHolder = null;
			ctx = null;
			octx = null;
			xaxes = [];
			yaxes = [];
			hooks = null;
			highlights = [];
			plot = null };
		plot.resize = function() { var width = placeholder.width(),
				height = placeholder.height();
			surface.resize(width, height);
			overlay.resize(width, height) };
		plot.hooks = hooks;
		initPlugins(plot);
		parseOptions(options_);
		setupCanvases();
		setData(data_);
		setupGrid();
		draw();
		bindEvents();

		function executeHooks(hook, args) { args = [plot].concat(args); for(var i = 0; i < hook.length; ++i) hook[i].apply(this, args) }

		function initPlugins() { var classes = { Canvas: Canvas }; for(var i = 0; i < plugins.length; ++i) { var p = plugins[i];
				p.init(plot, classes); if(p.options) $.extend(true, options, p.options) } }

		function parseOptions(opts) { $.extend(true, options, opts); if(opts && opts.colors) { options.colors = opts.colors } if(options.xaxis.color == null) options.xaxis.color = $.color.parse(options.grid.color).scale("a", .22).toString(); if(options.yaxis.color == null) options.yaxis.color = $.color.parse(options.grid.color).scale("a", .22).toString(); if(options.xaxis.tickColor == null) options.xaxis.tickColor = options.grid.tickColor || options.xaxis.color; if(options.yaxis.tickColor == null) options.yaxis.tickColor = options.grid.tickColor || options.yaxis.color; if(options.grid.borderColor == null) options.grid.borderColor = options.grid.color; if(options.grid.tickColor == null) options.grid.tickColor = $.color.parse(options.grid.color).scale("a", .22).toString(); var i, axisOptions, axisCount, fontSize = placeholder.css("font-size"),
				fontSizeDefault = fontSize ? +fontSize.replace("px", "") : 13,
				fontDefaults = { style: placeholder.css("font-style"), size: Math.round(.8 * fontSizeDefault), variant: placeholder.css("font-variant"), weight: placeholder.css("font-weight"), family: placeholder.css("font-family") };
			axisCount = options.xaxes.length || 1; for(i = 0; i < axisCount; ++i) { axisOptions = options.xaxes[i]; if(axisOptions && !axisOptions.tickColor) { axisOptions.tickColor = axisOptions.color } axisOptions = $.extend(true, {}, options.xaxis, axisOptions);
				options.xaxes[i] = axisOptions; if(axisOptions.font) { axisOptions.font = $.extend({}, fontDefaults, axisOptions.font); if(!axisOptions.font.color) { axisOptions.font.color = axisOptions.color } if(!axisOptions.font.lineHeight) { axisOptions.font.lineHeight = Math.round(axisOptions.font.size * 1.15) } } } axisCount = options.yaxes.length || 1; for(i = 0; i < axisCount; ++i) { axisOptions = options.yaxes[i]; if(axisOptions && !axisOptions.tickColor) { axisOptions.tickColor = axisOptions.color } axisOptions = $.extend(true, {}, options.yaxis, axisOptions);
				options.yaxes[i] = axisOptions; if(axisOptions.font) { axisOptions.font = $.extend({}, fontDefaults, axisOptions.font); if(!axisOptions.font.color) { axisOptions.font.color = axisOptions.color } if(!axisOptions.font.lineHeight) { axisOptions.font.lineHeight = Math.round(axisOptions.font.size * 1.15) } } } if(options.xaxis.noTicks && options.xaxis.ticks == null) options.xaxis.ticks = options.xaxis.noTicks; if(options.yaxis.noTicks && options.yaxis.ticks == null) options.yaxis.ticks = options.yaxis.noTicks; if(options.x2axis) { options.xaxes[1] = $.extend(true, {}, options.xaxis, options.x2axis);
				options.xaxes[1].position = "top"; if(options.x2axis.min == null) { options.xaxes[1].min = null } if(options.x2axis.max == null) { options.xaxes[1].max = null } } if(options.y2axis) { options.yaxes[1] = $.extend(true, {}, options.yaxis, options.y2axis);
				options.yaxes[1].position = "right"; if(options.y2axis.min == null) { options.yaxes[1].min = null } if(options.y2axis.max == null) { options.yaxes[1].max = null } } if(options.grid.coloredAreas) options.grid.markings = options.grid.coloredAreas; if(options.grid.coloredAreasColor) options.grid.markingsColor = options.grid.coloredAreasColor; if(options.lines) $.extend(true, options.series.lines, options.lines); if(options.points) $.extend(true, options.series.points, options.points); if(options.bars) $.extend(true, options.series.bars, options.bars); if(options.shadowSize != null) options.series.shadowSize = options.shadowSize; if(options.highlightColor != null) options.series.highlightColor = options.highlightColor; for(i = 0; i < options.xaxes.length; ++i) getOrCreateAxis(xaxes, i + 1).options = options.xaxes[i]; for(i = 0; i < options.yaxes.length; ++i) getOrCreateAxis(yaxes, i + 1).options = options.yaxes[i]; for(var n in hooks)
				if(options.hooks[n] && options.hooks[n].length) hooks[n] = hooks[n].concat(options.hooks[n]);
			executeHooks(hooks.processOptions, [options]) }

		function setData(d) { series = parseData(d);
			fillInSeriesOptions();
			processData() }

		function parseData(d) { var res = []; for(var i = 0; i < d.length; ++i) { var s = $.extend(true, {}, options.series); if(d[i].data != null) { s.data = d[i].data;
					delete d[i].data;
					$.extend(true, s, d[i]);
					d[i].data = s.data } else s.data = d[i];
				res.push(s) } return res }

		function axisNumber(obj, coord) { var a = obj[coord + "axis"]; if(typeof a == "object") a = a.n; if(typeof a != "number") a = 1; return a }

		function allAxes() { return $.grep(xaxes.concat(yaxes), function(a) { return a }) }

		function canvasToAxisCoords(pos) { var res = {},
				i, axis; for(i = 0; i < xaxes.length; ++i) { axis = xaxes[i]; if(axis && axis.used) res["x" + axis.n] = axis.c2p(pos.left) } for(i = 0; i < yaxes.length; ++i) { axis = yaxes[i]; if(axis && axis.used) res["y" + axis.n] = axis.c2p(pos.top) } if(res.x1 !== undefined) res.x = res.x1; if(res.y1 !== undefined) res.y = res.y1; return res }

		function axisToCanvasCoords(pos) { var res = {},
				i, axis, key; for(i = 0; i < xaxes.length; ++i) { axis = xaxes[i]; if(axis && axis.used) { key = "x" + axis.n; if(pos[key] == null && axis.n == 1) key = "x"; if(pos[key] != null) { res.left = axis.p2c(pos[key]); break } } } for(i = 0; i < yaxes.length; ++i) { axis = yaxes[i]; if(axis && axis.used) { key = "y" + axis.n; if(pos[key] == null && axis.n == 1) key = "y"; if(pos[key] != null) { res.top = axis.p2c(pos[key]); break } } } return res }

		function getOrCreateAxis(axes, number) { if(!axes[number - 1]) axes[number - 1] = { n: number, direction: axes == xaxes ? "x" : "y", options: $.extend(true, {}, axes == xaxes ? options.xaxis : options.yaxis) }; return axes[number - 1] }

		function fillInSeriesOptions() { var neededColors = series.length,
				maxIndex = -1,
				i; for(i = 0; i < series.length; ++i) { var sc = series[i].color; if(sc != null) { neededColors--; if(typeof sc == "number" && sc > maxIndex) { maxIndex = sc } } } if(neededColors <= maxIndex) { neededColors = maxIndex + 1 } var c, colors = [],
				colorPool = options.colors,
				colorPoolSize = colorPool.length,
				variation = 0; for(i = 0; i < neededColors; i++) { c = $.color.parse(colorPool[i % colorPoolSize] || "#666"); if(i % colorPoolSize == 0 && i) { if(variation >= 0) { if(variation < .5) { variation = -variation - .2 } else variation = 0 } else variation = -variation } colors[i] = c.scale("rgb", 1 + variation) } var colori = 0,
				s; for(i = 0; i < series.length; ++i) { s = series[i]; if(s.color == null) { s.color = colors[colori].toString();++colori } else if(typeof s.color == "number") s.color = colors[s.color].toString(); if(s.lines.show == null) { var v, show = true; for(v in s)
						if(s[v] && s[v].show) { show = false; break }
					if(show) s.lines.show = true } if(s.lines.zero == null) { s.lines.zero = !!s.lines.fill } s.xaxis = getOrCreateAxis(xaxes, axisNumber(s, "x"));
				s.yaxis = getOrCreateAxis(yaxes, axisNumber(s, "y")) } }

		function processData() { var topSentry = Number.POSITIVE_INFINITY,
				bottomSentry = Number.NEGATIVE_INFINITY,
				fakeInfinity = Number.MAX_VALUE,
				i, j, k, m, length, s, points, ps, x, y, axis, val, f, p, data, format;

			function updateAxis(axis, min, max) { if(min < axis.datamin && min != -fakeInfinity) axis.datamin = min; if(max > axis.datamax && max != fakeInfinity) axis.datamax = max } $.each(allAxes(), function(_, axis) { axis.datamin = topSentry;
				axis.datamax = bottomSentry;
				axis.used = false }); for(i = 0; i < series.length; ++i) { s = series[i];
				s.datapoints = { points: [] };
				executeHooks(hooks.processRawData, [s, s.data, s.datapoints]) } for(i = 0; i < series.length; ++i) { s = series[i];
				data = s.data;
				format = s.datapoints.format; if(!format) { format = [];
					format.push({ x: true, number: true, required: true });
					format.push({ y: true, number: true, required: true }); if(s.bars.show || s.lines.show && s.lines.fill) { var autoscale = !!(s.bars.show && s.bars.zero || s.lines.show && s.lines.zero);
						format.push({ y: true, number: true, required: false, defaultValue: 0, autoscale: autoscale }); if(s.bars.horizontal) { delete format[format.length - 1].y;
							format[format.length - 1].x = true } } s.datapoints.format = format } if(s.datapoints.pointsize != null) continue;
				s.datapoints.pointsize = format.length;
				ps = s.datapoints.pointsize;
				points = s.datapoints.points; var insertSteps = s.lines.show && s.lines.steps;
				s.xaxis.used = s.yaxis.used = true; for(j = k = 0; j < data.length; ++j, k += ps) { p = data[j]; var nullify = p == null; if(!nullify) { for(m = 0; m < ps; ++m) { val = p[m];
							f = format[m]; if(f) { if(f.number && val != null) { val = +val; if(isNaN(val)) val = null;
									else if(val == Infinity) val = fakeInfinity;
									else if(val == -Infinity) val = -fakeInfinity } if(val == null) { if(f.required) nullify = true; if(f.defaultValue != null) val = f.defaultValue } } points[k + m] = val } } if(nullify) { for(m = 0; m < ps; ++m) { val = points[k + m]; if(val != null) { f = format[m]; if(f.autoscale !== false) { if(f.x) { updateAxis(s.xaxis, val, val) } if(f.y) { updateAxis(s.yaxis, val, val) } } } points[k + m] = null } } else { if(insertSteps && k > 0 && points[k - ps] != null && points[k - ps] != points[k] && points[k - ps + 1] != points[k + 1]) { for(m = 0; m < ps; ++m) points[k + ps + m] = points[k + m];
							points[k + 1] = points[k - ps + 1];
							k += ps } } } } for(i = 0; i < series.length; ++i) { s = series[i];
				executeHooks(hooks.processDatapoints, [s, s.datapoints]) } for(i = 0; i < series.length; ++i) { s = series[i];
				points = s.datapoints.points;
				ps = s.datapoints.pointsize;
				format = s.datapoints.format; var xmin = topSentry,
					ymin = topSentry,
					xmax = bottomSentry,
					ymax = bottomSentry; for(j = 0; j < points.length; j += ps) { if(points[j] == null) continue; for(m = 0; m < ps; ++m) { val = points[j + m];
						f = format[m]; if(!f || f.autoscale === false || val == fakeInfinity || val == -fakeInfinity) continue; if(f.x) { if(val < xmin) xmin = val; if(val > xmax) xmax = val } if(f.y) { if(val < ymin) ymin = val; if(val > ymax) ymax = val } } } if(s.bars.show) { var delta; switch(s.bars.align) {
						case "left":
							delta = 0; break;
						case "right":
							delta = -s.bars.barWidth; break;
						default:
							delta = -s.bars.barWidth / 2 } if(s.bars.horizontal) { ymin += delta;
						ymax += delta + s.bars.barWidth } else { xmin += delta;
						xmax += delta + s.bars.barWidth } } updateAxis(s.xaxis, xmin, xmax);
				updateAxis(s.yaxis, ymin, ymax) } $.each(allAxes(), function(_, axis) { if(axis.datamin == topSentry) axis.datamin = null; if(axis.datamax == bottomSentry) axis.datamax = null }) }

		function setupCanvases() { placeholder.css("padding", 0).children().filter(function() { return !$(this).hasClass("flot-overlay") && !$(this).hasClass("flot-base") }).remove(); if(placeholder.css("position") == "static") placeholder.css("position", "relative");
			surface = new Canvas("flot-base", placeholder);
			overlay = new Canvas("flot-overlay", placeholder);
			ctx = surface.context;
			octx = overlay.context;
			eventHolder = $(overlay.element).unbind(); var existing = placeholder.data("plot"); if(existing) { existing.shutdown();
				overlay.clear() } placeholder.data("plot", plot) }

		function bindEvents() { if(options.grid.hoverable) { eventHolder.mousemove(onMouseMove);
				eventHolder.bind("mouseleave", onMouseLeave) } if(options.grid.clickable) eventHolder.click(onClick);
			executeHooks(hooks.bindEvents, [eventHolder]) }

		function shutdown() { if(redrawTimeout) clearTimeout(redrawTimeout);
			eventHolder.unbind("mousemove", onMouseMove);
			eventHolder.unbind("mouseleave", onMouseLeave);
			eventHolder.unbind("click", onClick);
			executeHooks(hooks.shutdown, [eventHolder]) }

		function setTransformationHelpers(axis) {
			function identity(x) { return x } var s, m, t = axis.options.transform || identity,
				it = axis.options.inverseTransform; if(axis.direction == "x") { s = axis.scale = plotWidth / Math.abs(t(axis.max) - t(axis.min));
				m = Math.min(t(axis.max), t(axis.min)) } else { s = axis.scale = plotHeight / Math.abs(t(axis.max) - t(axis.min));
				s = -s;
				m = Math.max(t(axis.max), t(axis.min)) } if(t == identity) axis.p2c = function(p) { return(p - m) * s };
			else axis.p2c = function(p) { return(t(p) - m) * s }; if(!it) axis.c2p = function(c) { return m + c / s };
			else axis.c2p = function(c) { return it(m + c / s) } }

		function measureTickLabels(axis) { var opts = axis.options,
				ticks = axis.ticks || [],
				labelWidth = opts.labelWidth || 0,
				labelHeight = opts.labelHeight || 0,
				maxWidth = labelWidth || (axis.direction == "x" ? Math.floor(surface.width / (ticks.length || 1)) : null),
				legacyStyles = axis.direction + "Axis " + axis.direction + axis.n + "Axis",
				layer = "flot-" + axis.direction + "-axis flot-" + axis.direction + axis.n + "-axis " + legacyStyles,
				font = opts.font || "flot-tick-label tickLabel"; for(var i = 0; i < ticks.length; ++i) { var t = ticks[i]; if(!t.label) continue; var info = surface.getTextInfo(layer, t.label, font, null, maxWidth);
				labelWidth = Math.max(labelWidth, info.width);
				labelHeight = Math.max(labelHeight, info.height) } axis.labelWidth = opts.labelWidth || labelWidth;
			axis.labelHeight = opts.labelHeight || labelHeight }

		function allocateAxisBoxFirstPhase(axis) { var lw = axis.labelWidth,
				lh = axis.labelHeight,
				pos = axis.options.position,
				isXAxis = axis.direction === "x",
				tickLength = axis.options.tickLength,
				axisMargin = options.grid.axisMargin,
				padding = options.grid.labelMargin,
				innermost = true,
				outermost = true,
				first = true,
				found = false;
			$.each(isXAxis ? xaxes : yaxes, function(i, a) { if(a && (a.show || a.reserveSpace)) { if(a === axis) { found = true } else if(a.options.position === pos) { if(found) { outermost = false } else { innermost = false } } if(!found) { first = false } } }); if(outermost) { axisMargin = 0 } if(tickLength == null) { tickLength = first ? "full" : 5 } if(!isNaN(+tickLength)) padding += +tickLength; if(isXAxis) { lh += padding; if(pos == "bottom") { plotOffset.bottom += lh + axisMargin;
					axis.box = { top: surface.height - plotOffset.bottom, height: lh } } else { axis.box = { top: plotOffset.top + axisMargin, height: lh };
					plotOffset.top += lh + axisMargin } } else { lw += padding; if(pos == "left") { axis.box = { left: plotOffset.left + axisMargin, width: lw };
					plotOffset.left += lw + axisMargin } else { plotOffset.right += lw + axisMargin;
					axis.box = { left: surface.width - plotOffset.right, width: lw } } } axis.position = pos;
			axis.tickLength = tickLength;
			axis.box.padding = padding;
			axis.innermost = innermost }

		function allocateAxisBoxSecondPhase(axis) { if(axis.direction == "x") { axis.box.left = plotOffset.left - axis.labelWidth / 2;
				axis.box.width = surface.width - plotOffset.left - plotOffset.right + axis.labelWidth } else { axis.box.top = plotOffset.top - axis.labelHeight / 2;
				axis.box.height = surface.height - plotOffset.bottom - plotOffset.top + axis.labelHeight } }

		function adjustLayoutForThingsStickingOut() { var minMargin = options.grid.minBorderMargin,
				axis, i; if(minMargin == null) { minMargin = 0; for(i = 0; i < series.length; ++i) minMargin = Math.max(minMargin, 2 * (series[i].points.radius + series[i].points.lineWidth / 2)) } var margins = { left: minMargin, right: minMargin, top: minMargin, bottom: minMargin };
			$.each(allAxes(), function(_, axis) { if(axis.reserveSpace && axis.ticks && axis.ticks.length) { if(axis.direction === "x") { margins.left = Math.max(margins.left, axis.labelWidth / 2);
						margins.right = Math.max(margins.right, axis.labelWidth / 2) } else { margins.bottom = Math.max(margins.bottom, axis.labelHeight / 2);
						margins.top = Math.max(margins.top, axis.labelHeight / 2) } } });
			plotOffset.left = Math.ceil(Math.max(margins.left, plotOffset.left));
			plotOffset.right = Math.ceil(Math.max(margins.right, plotOffset.right));
			plotOffset.top = Math.ceil(Math.max(margins.top, plotOffset.top));
			plotOffset.bottom = Math.ceil(Math.max(margins.bottom, plotOffset.bottom)) }

		function setupGrid() { var i, axes = allAxes(),
				showGrid = options.grid.show; for(var a in plotOffset) { var margin = options.grid.margin || 0;
				plotOffset[a] = typeof margin == "number" ? margin : margin[a] || 0 } executeHooks(hooks.processOffset, [plotOffset]); for(var a in plotOffset) { if(typeof options.grid.borderWidth == "object") { plotOffset[a] += showGrid ? options.grid.borderWidth[a] : 0 } else { plotOffset[a] += showGrid ? options.grid.borderWidth : 0 } } $.each(axes, function(_, axis) { var axisOpts = axis.options;
				axis.show = axisOpts.show == null ? axis.used : axisOpts.show;
				axis.reserveSpace = axisOpts.reserveSpace == null ? axis.show : axisOpts.reserveSpace;
				setRange(axis) }); if(showGrid) { var allocatedAxes = $.grep(axes, function(axis) { return axis.show || axis.reserveSpace });
				$.each(allocatedAxes, function(_, axis) { setupTickGeneration(axis);
					setTicks(axis);
					snapRangeToTicks(axis, axis.ticks);
					measureTickLabels(axis) }); for(i = allocatedAxes.length - 1; i >= 0; --i) allocateAxisBoxFirstPhase(allocatedAxes[i]);
				adjustLayoutForThingsStickingOut();
				$.each(allocatedAxes, function(_, axis) { allocateAxisBoxSecondPhase(axis) }) } plotWidth = surface.width - plotOffset.left - plotOffset.right;
			plotHeight = surface.height - plotOffset.bottom - plotOffset.top;
			$.each(axes, function(_, axis) { setTransformationHelpers(axis) }); if(showGrid) { drawAxisLabels() } insertLegend() }

		function setRange(axis) { var opts = axis.options,
				min = +(opts.min != null ? opts.min : axis.datamin),
				max = +(opts.max != null ? opts.max : axis.datamax),
				delta = max - min; if(delta == 0) { var widen = max == 0 ? 1 : .01; if(opts.min == null) min -= widen; if(opts.max == null || opts.min != null) max += widen } else { var margin = opts.autoscaleMargin; if(margin != null) { if(opts.min == null) { min -= delta * margin; if(min < 0 && axis.datamin != null && axis.datamin >= 0) min = 0 } if(opts.max == null) { max += delta * margin; if(max > 0 && axis.datamax != null && axis.datamax <= 0) max = 0 } } } axis.min = min;
			axis.max = max }

		function setupTickGeneration(axis) { var opts = axis.options; var noTicks; if(typeof opts.ticks == "number" && opts.ticks > 0) noTicks = opts.ticks;
			else noTicks = .3 * Math.sqrt(axis.direction == "x" ? surface.width : surface.height); var delta = (axis.max - axis.min) / noTicks,
				dec = -Math.floor(Math.log(delta) / Math.LN10),
				maxDec = opts.tickDecimals; if(maxDec != null && dec > maxDec) { dec = maxDec } var magn = Math.pow(10, -dec),
				norm = delta / magn,
				size; if(norm < 1.5) { size = 1 } else if(norm < 3) { size = 2; if(norm > 2.25 && (maxDec == null || dec + 1 <= maxDec)) { size = 2.5;++dec } } else if(norm < 7.5) { size = 5 } else { size = 10 } size *= magn; if(opts.minTickSize != null && size < opts.minTickSize) { size = opts.minTickSize } axis.delta = delta;
			axis.tickDecimals = Math.max(0, maxDec != null ? maxDec : dec);
			axis.tickSize = opts.tickSize || size; if(opts.mode == "time" && !axis.tickGenerator) { throw new Error("Time mode requires the flot.time plugin.") } if(!axis.tickGenerator) { axis.tickGenerator = function(axis) { var ticks = [],
						start = floorInBase(axis.min, axis.tickSize),
						i = 0,
						v = Number.NaN,
						prev;
					do { prev = v;
						v = start + i * axis.tickSize;
						ticks.push(v);++i } while (v < axis.max && v != prev); return ticks };
				axis.tickFormatter = function(value, axis) { var factor = axis.tickDecimals ? Math.pow(10, axis.tickDecimals) : 1; var formatted = "" + Math.round(value * factor) / factor; if(axis.tickDecimals != null) { var decimal = formatted.indexOf("."); var precision = decimal == -1 ? 0 : formatted.length - decimal - 1; if(precision < axis.tickDecimals) { return(precision ? formatted : formatted + ".") + ("" + factor).substr(1, axis.tickDecimals - precision) } } return formatted } } if($.isFunction(opts.tickFormatter)) axis.tickFormatter = function(v, axis) { return "" + opts.tickFormatter(v, axis) }; if(opts.alignTicksWithAxis != null) { var otherAxis = (axis.direction == "x" ? xaxes : yaxes)[opts.alignTicksWithAxis - 1]; if(otherAxis && otherAxis.used && otherAxis != axis) { var niceTicks = axis.tickGenerator(axis); if(niceTicks.length > 0) { if(opts.min == null) axis.min = Math.min(axis.min, niceTicks[0]); if(opts.max == null && niceTicks.length > 1) axis.max = Math.max(axis.max, niceTicks[niceTicks.length - 1]) } axis.tickGenerator = function(axis) { var ticks = [],
							v, i; for(i = 0; i < otherAxis.ticks.length; ++i) { v = (otherAxis.ticks[i].v - otherAxis.min) / (otherAxis.max - otherAxis.min);
							v = axis.min + v * (axis.max - axis.min);
							ticks.push(v) } return ticks }; if(!axis.mode && opts.tickDecimals == null) { var extraDec = Math.max(0, -Math.floor(Math.log(axis.delta) / Math.LN10) + 1),
							ts = axis.tickGenerator(axis); if(!(ts.length > 1 && /\..*0$/.test((ts[1] - ts[0]).toFixed(extraDec)))) axis.tickDecimals = extraDec } } } }

		function setTicks(axis) { var oticks = axis.options.ticks,
				ticks = []; if(oticks == null || typeof oticks == "number" && oticks > 0) ticks = axis.tickGenerator(axis);
			else if(oticks) { if($.isFunction(oticks)) ticks = oticks(axis);
				else ticks = oticks } var i, v;
			axis.ticks = []; for(i = 0; i < ticks.length; ++i) { var label = null; var t = ticks[i]; if(typeof t == "object") { v = +t[0]; if(t.length > 1) label = t[1] } else v = +t; if(label == null) label = axis.tickFormatter(v, axis); if(!isNaN(v)) axis.ticks.push({ v: v, label: label }) } }

		function snapRangeToTicks(axis, ticks) { if(axis.options.autoscaleMargin && ticks.length > 0) { if(axis.options.min == null) axis.min = Math.min(axis.min, ticks[0].v); if(axis.options.max == null && ticks.length > 1) axis.max = Math.max(axis.max, ticks[ticks.length - 1].v) } }

		function draw() { surface.clear();
			executeHooks(hooks.drawBackground, [ctx]); var grid = options.grid; if(grid.show && grid.backgroundColor) drawBackground(); if(grid.show && !grid.aboveData) { drawGrid() } for(var i = 0; i < series.length; ++i) { executeHooks(hooks.drawSeries, [ctx, series[i]]);
				drawSeries(series[i]) } executeHooks(hooks.draw, [ctx]); if(grid.show && grid.aboveData) { drawGrid() } surface.render();
			triggerRedrawOverlay() }

		function extractRange(ranges, coord) { var axis, from, to, key, axes = allAxes(); for(var i = 0; i < axes.length; ++i) { axis = axes[i]; if(axis.direction == coord) { key = coord + axis.n + "axis"; if(!ranges[key] && axis.n == 1) key = coord + "axis"; if(ranges[key]) { from = ranges[key].from;
						to = ranges[key].to; break } } } if(!ranges[key]) { axis = coord == "x" ? xaxes[0] : yaxes[0];
				from = ranges[coord + "1"];
				to = ranges[coord + "2"] } if(from != null && to != null && from > to) { var tmp = from;
				from = to;
				to = tmp } return { from: from, to: to, axis: axis } }

		function drawBackground() { ctx.save();
			ctx.translate(plotOffset.left, plotOffset.top);
			ctx.fillStyle = getColorOrGradient(options.grid.backgroundColor, plotHeight, 0, "rgba(255, 255, 255, 0)");
			ctx.fillRect(0, 0, plotWidth, plotHeight);
			ctx.restore() }

		function drawGrid() {
			var i, axes, bw, bc;
			ctx.save();
			ctx.translate(plotOffset.left, plotOffset.top);
			var markings = options.grid.markings;
			if(markings) {
				if($.isFunction(markings)) { axes = plot.getAxes();
					axes.xmin = axes.xaxis.min;
					axes.xmax = axes.xaxis.max;
					axes.ymin = axes.yaxis.min;
					axes.ymax = axes.yaxis.max;
					markings = markings(axes) }
				for(i = 0; i < markings.length; ++i) {
					var m = markings[i],
						xrange = extractRange(m, "x"),
						yrange = extractRange(m, "y");
					if(xrange.from == null) xrange.from = xrange.axis.min;
					if(xrange.to == null) xrange.to = xrange.axis.max;
					if(yrange.from == null) yrange.from = yrange.axis.min;
					if(yrange.to == null) yrange.to = yrange.axis.max;
					if(xrange.to < xrange.axis.min || xrange.from > xrange.axis.max || yrange.to < yrange.axis.min || yrange.from > yrange.axis.max) continue;
					xrange.from = Math.max(xrange.from, xrange.axis.min);
					xrange.to = Math.min(xrange.to, xrange.axis.max);
					yrange.from = Math.max(yrange.from, yrange.axis.min);
					yrange.to = Math.min(yrange.to, yrange.axis.max);
					var xequal = xrange.from === xrange.to,
						yequal = yrange.from === yrange.to;
					if(xequal && yequal) { continue } xrange.from = Math.floor(xrange.axis.p2c(xrange.from));
					xrange.to = Math.floor(xrange.axis.p2c(xrange.to));
					yrange.from = Math.floor(yrange.axis.p2c(yrange.from));
					yrange.to = Math.floor(yrange.axis.p2c(yrange.to));
					if(xequal || yequal) { var lineWidth = m.lineWidth || options.grid.markingsLineWidth,
							subPixel = lineWidth % 2 ? .5 : 0;
						ctx.beginPath();
						ctx.strokeStyle = m.color || options.grid.markingsColor;
						ctx.lineWidth = lineWidth; if(xequal) { ctx.moveTo(xrange.to + subPixel, yrange.from);
							ctx.lineTo(xrange.to + subPixel, yrange.to) } else { ctx.moveTo(xrange.from, yrange.to + subPixel);
							ctx.lineTo(xrange.to, yrange.to + subPixel) } ctx.stroke() } else { ctx.fillStyle = m.color || options.grid.markingsColor;
						ctx.fillRect(xrange.from, yrange.to, xrange.to - xrange.from, yrange.from - yrange.to) }
				}
			}
			axes = allAxes();
			bw = options.grid.borderWidth;
			for(var j = 0; j < axes.length; ++j) { var axis = axes[j],
					box = axis.box,
					t = axis.tickLength,
					x, y, xoff, yoff; if(!axis.show || axis.ticks.length == 0) continue;
				ctx.lineWidth = 1; if(axis.direction == "x") { x = 0; if(t == "full") y = axis.position == "top" ? 0 : plotHeight;
					else y = box.top - plotOffset.top + (axis.position == "top" ? box.height : 0) } else { y = 0; if(t == "full") x = axis.position == "left" ? 0 : plotWidth;
					else x = box.left - plotOffset.left + (axis.position == "left" ? box.width : 0) } if(!axis.innermost) { ctx.strokeStyle = axis.options.color;
					ctx.beginPath();
					xoff = yoff = 0; if(axis.direction == "x") xoff = plotWidth + 1;
					else yoff = plotHeight + 1; if(ctx.lineWidth == 1) { if(axis.direction == "x") { y = Math.floor(y) + .5 } else { x = Math.floor(x) + .5 } } ctx.moveTo(x, y);
					ctx.lineTo(x + xoff, y + yoff);
					ctx.stroke() } ctx.strokeStyle = axis.options.tickColor;
				ctx.beginPath(); for(i = 0; i < axis.ticks.length; ++i) { var v = axis.ticks[i].v;
					xoff = yoff = 0; if(isNaN(v) || v < axis.min || v > axis.max || t == "full" && (typeof bw == "object" && bw[axis.position] > 0 || bw > 0) && (v == axis.min || v == axis.max)) continue; if(axis.direction == "x") { x = axis.p2c(v);
						yoff = t == "full" ? -plotHeight : t; if(axis.position == "top") yoff = -yoff } else { y = axis.p2c(v);
						xoff = t == "full" ? -plotWidth : t; if(axis.position == "left") xoff = -xoff } if(ctx.lineWidth == 1) { if(axis.direction == "x") x = Math.floor(x) + .5;
						else y = Math.floor(y) + .5 } ctx.moveTo(x, y);
					ctx.lineTo(x + xoff, y + yoff) } ctx.stroke() }
			if(bw) { bc = options.grid.borderColor; if(typeof bw == "object" || typeof bc == "object") { if(typeof bw !== "object") { bw = { top: bw, right: bw, bottom: bw, left: bw } } if(typeof bc !== "object") { bc = { top: bc, right: bc, bottom: bc, left: bc } } if(bw.top > 0) { ctx.strokeStyle = bc.top;
						ctx.lineWidth = bw.top;
						ctx.beginPath();
						ctx.moveTo(0 - bw.left, 0 - bw.top / 2);
						ctx.lineTo(plotWidth, 0 - bw.top / 2);
						ctx.stroke() } if(bw.right > 0) { ctx.strokeStyle = bc.right;
						ctx.lineWidth = bw.right;
						ctx.beginPath();
						ctx.moveTo(plotWidth + bw.right / 2, 0 - bw.top);
						ctx.lineTo(plotWidth + bw.right / 2, plotHeight);
						ctx.stroke() } if(bw.bottom > 0) { ctx.strokeStyle = bc.bottom;
						ctx.lineWidth = bw.bottom;
						ctx.beginPath();
						ctx.moveTo(plotWidth + bw.right, plotHeight + bw.bottom / 2);
						ctx.lineTo(0, plotHeight + bw.bottom / 2);
						ctx.stroke() } if(bw.left > 0) { ctx.strokeStyle = bc.left;
						ctx.lineWidth = bw.left;
						ctx.beginPath();
						ctx.moveTo(0 - bw.left / 2, plotHeight + bw.bottom);
						ctx.lineTo(0 - bw.left / 2, 0);
						ctx.stroke() } } else { ctx.lineWidth = bw;
					ctx.strokeStyle = options.grid.borderColor;
					ctx.strokeRect(-bw / 2, -bw / 2, plotWidth + bw, plotHeight + bw) } } ctx.restore()
		}

		function drawAxisLabels() { $.each(allAxes(), function(_, axis) { var box = axis.box,
					legacyStyles = axis.direction + "Axis " + axis.direction + axis.n + "Axis",
					layer = "flot-" + axis.direction + "-axis flot-" + axis.direction + axis.n + "-axis " + legacyStyles,
					font = axis.options.font || "flot-tick-label tickLabel",
					tick, x, y, halign, valign;
				surface.removeText(layer); if(!axis.show || axis.ticks.length == 0) return; for(var i = 0; i < axis.ticks.length; ++i) { tick = axis.ticks[i]; if(!tick.label || tick.v < axis.min || tick.v > axis.max) continue; if(axis.direction == "x") { halign = "center";
						x = plotOffset.left + axis.p2c(tick.v); if(axis.position == "bottom") { y = box.top + box.padding } else { y = box.top + box.height - box.padding;
							valign = "bottom" } } else { valign = "middle";
						y = plotOffset.top + axis.p2c(tick.v); if(axis.position == "left") { x = box.left + box.width - box.padding;
							halign = "right" } else { x = box.left + box.padding } } surface.addText(layer, x, y, tick.label, font, null, null, halign, valign) } }) }

		function drawSeries(series) { if(series.lines.show) drawSeriesLines(series); if(series.bars.show) drawSeriesBars(series); if(series.points.show) drawSeriesPoints(series) }

		function drawSeriesLines(series) {
			function plotLine(datapoints, xoffset, yoffset, axisx, axisy) { var points = datapoints.points,
					ps = datapoints.pointsize,
					prevx = null,
					prevy = null;
				ctx.beginPath(); for(var i = ps; i < points.length; i += ps) { var x1 = points[i - ps],
						y1 = points[i - ps + 1],
						x2 = points[i],
						y2 = points[i + 1]; if(x1 == null || x2 == null) continue; if(y1 <= y2 && y1 < axisy.min) { if(y2 < axisy.min) continue;
						x1 = (axisy.min - y1) / (y2 - y1) * (x2 - x1) + x1;
						y1 = axisy.min } else if(y2 <= y1 && y2 < axisy.min) { if(y1 < axisy.min) continue;
						x2 = (axisy.min - y1) / (y2 - y1) * (x2 - x1) + x1;
						y2 = axisy.min } if(y1 >= y2 && y1 > axisy.max) { if(y2 > axisy.max) continue;
						x1 = (axisy.max - y1) / (y2 - y1) * (x2 - x1) + x1;
						y1 = axisy.max } else if(y2 >= y1 && y2 > axisy.max) { if(y1 > axisy.max) continue;
						x2 = (axisy.max - y1) / (y2 - y1) * (x2 - x1) + x1;
						y2 = axisy.max } if(x1 <= x2 && x1 < axisx.min) { if(x2 < axisx.min) continue;
						y1 = (axisx.min - x1) / (x2 - x1) * (y2 - y1) + y1;
						x1 = axisx.min } else if(x2 <= x1 && x2 < axisx.min) { if(x1 < axisx.min) continue;
						y2 = (axisx.min - x1) / (x2 - x1) * (y2 - y1) + y1;
						x2 = axisx.min } if(x1 >= x2 && x1 > axisx.max) { if(x2 > axisx.max) continue;
						y1 = (axisx.max - x1) / (x2 - x1) * (y2 - y1) + y1;
						x1 = axisx.max } else if(x2 >= x1 && x2 > axisx.max) { if(x1 > axisx.max) continue;
						y2 = (axisx.max - x1) / (x2 - x1) * (y2 - y1) + y1;
						x2 = axisx.max } if(x1 != prevx || y1 != prevy) ctx.moveTo(axisx.p2c(x1) + xoffset, axisy.p2c(y1) + yoffset);
					prevx = x2;
					prevy = y2;
					ctx.lineTo(axisx.p2c(x2) + xoffset, axisy.p2c(y2) + yoffset) } ctx.stroke() }

			function plotLineArea(datapoints, axisx, axisy) { var points = datapoints.points,
					ps = datapoints.pointsize,
					bottom = Math.min(Math.max(0, axisy.min), axisy.max),
					i = 0,
					top, areaOpen = false,
					ypos = 1,
					segmentStart = 0,
					segmentEnd = 0; while(true) { if(ps > 0 && i > points.length + ps) break;
					i += ps; var x1 = points[i - ps],
						y1 = points[i - ps + ypos],
						x2 = points[i],
						y2 = points[i + ypos]; if(areaOpen) { if(ps > 0 && x1 != null && x2 == null) { segmentEnd = i;
							ps = -ps;
							ypos = 2; continue } if(ps < 0 && i == segmentStart + ps) { ctx.fill();
							areaOpen = false;
							ps = -ps;
							ypos = 1;
							i = segmentStart = segmentEnd + ps; continue } } if(x1 == null || x2 == null) continue; if(x1 <= x2 && x1 < axisx.min) { if(x2 < axisx.min) continue;
						y1 = (axisx.min - x1) / (x2 - x1) * (y2 - y1) + y1;
						x1 = axisx.min } else if(x2 <= x1 && x2 < axisx.min) { if(x1 < axisx.min) continue;
						y2 = (axisx.min - x1) / (x2 - x1) * (y2 - y1) + y1;
						x2 = axisx.min } if(x1 >= x2 && x1 > axisx.max) { if(x2 > axisx.max) continue;
						y1 = (axisx.max - x1) / (x2 - x1) * (y2 - y1) + y1;
						x1 = axisx.max } else if(x2 >= x1 && x2 > axisx.max) { if(x1 > axisx.max) continue;
						y2 = (axisx.max - x1) / (x2 - x1) * (y2 - y1) + y1;
						x2 = axisx.max } if(!areaOpen) { ctx.beginPath();
						ctx.moveTo(axisx.p2c(x1), axisy.p2c(bottom));
						areaOpen = true } if(y1 >= axisy.max && y2 >= axisy.max) { ctx.lineTo(axisx.p2c(x1), axisy.p2c(axisy.max));
						ctx.lineTo(axisx.p2c(x2), axisy.p2c(axisy.max)); continue } else if(y1 <= axisy.min && y2 <= axisy.min) { ctx.lineTo(axisx.p2c(x1), axisy.p2c(axisy.min));
						ctx.lineTo(axisx.p2c(x2), axisy.p2c(axisy.min)); continue } var x1old = x1,
						x2old = x2; if(y1 <= y2 && y1 < axisy.min && y2 >= axisy.min) { x1 = (axisy.min - y1) / (y2 - y1) * (x2 - x1) + x1;
						y1 = axisy.min } else if(y2 <= y1 && y2 < axisy.min && y1 >= axisy.min) { x2 = (axisy.min - y1) / (y2 - y1) * (x2 - x1) + x1;
						y2 = axisy.min } if(y1 >= y2 && y1 > axisy.max && y2 <= axisy.max) { x1 = (axisy.max - y1) / (y2 - y1) * (x2 - x1) + x1;
						y1 = axisy.max } else if(y2 >= y1 && y2 > axisy.max && y1 <= axisy.max) { x2 = (axisy.max - y1) / (y2 - y1) * (x2 - x1) + x1;
						y2 = axisy.max } if(x1 != x1old) { ctx.lineTo(axisx.p2c(x1old), axisy.p2c(y1)) } ctx.lineTo(axisx.p2c(x1), axisy.p2c(y1));
					ctx.lineTo(axisx.p2c(x2), axisy.p2c(y2)); if(x2 != x2old) { ctx.lineTo(axisx.p2c(x2), axisy.p2c(y2));
						ctx.lineTo(axisx.p2c(x2old), axisy.p2c(y2)) } } } ctx.save();
			ctx.translate(plotOffset.left, plotOffset.top);
			ctx.lineJoin = "round"; var lw = series.lines.lineWidth,
				sw = series.shadowSize; if(lw > 0 && sw > 0) { ctx.lineWidth = sw;
				ctx.strokeStyle = "rgba(0,0,0,0.1)"; var angle = Math.PI / 18;
				plotLine(series.datapoints, Math.sin(angle) * (lw / 2 + sw / 2), Math.cos(angle) * (lw / 2 + sw / 2), series.xaxis, series.yaxis);
				ctx.lineWidth = sw / 2;
				plotLine(series.datapoints, Math.sin(angle) * (lw / 2 + sw / 4), Math.cos(angle) * (lw / 2 + sw / 4), series.xaxis, series.yaxis) } ctx.lineWidth = lw;
			ctx.strokeStyle = series.color; var fillStyle = getFillStyle(series.lines, series.color, 0, plotHeight); if(fillStyle) { ctx.fillStyle = fillStyle;
				plotLineArea(series.datapoints, series.xaxis, series.yaxis) } if(lw > 0) plotLine(series.datapoints, 0, 0, series.xaxis, series.yaxis);
			ctx.restore() }

		function drawSeriesPoints(series) {
			function plotPoints(datapoints, radius, fillStyle, offset, shadow, axisx, axisy, symbol) { var points = datapoints.points,
					ps = datapoints.pointsize; for(var i = 0; i < points.length; i += ps) { var x = points[i],
						y = points[i + 1]; if(x == null || x < axisx.min || x > axisx.max || y < axisy.min || y > axisy.max) continue;
					ctx.beginPath();
					x = axisx.p2c(x);
					y = axisy.p2c(y) + offset; if(symbol == "circle") ctx.arc(x, y, radius, 0, shadow ? Math.PI : Math.PI * 2, false);
					else symbol(ctx, x, y, radius, shadow);
					ctx.closePath(); if(fillStyle) { ctx.fillStyle = fillStyle;
						ctx.fill() } ctx.stroke() } } ctx.save();
			ctx.translate(plotOffset.left, plotOffset.top); var lw = series.points.lineWidth,
				sw = series.shadowSize,
				radius = series.points.radius,
				symbol = series.points.symbol; if(lw == 0) lw = 1e-4; if(lw > 0 && sw > 0) { var w = sw / 2;
				ctx.lineWidth = w;
				ctx.strokeStyle = "rgba(0,0,0,0.1)";
				plotPoints(series.datapoints, radius, null, w + w / 2, true, series.xaxis, series.yaxis, symbol);
				ctx.strokeStyle = "rgba(0,0,0,0.2)";
				plotPoints(series.datapoints, radius, null, w / 2, true, series.xaxis, series.yaxis, symbol) } ctx.lineWidth = lw;
			ctx.strokeStyle = series.color;
			plotPoints(series.datapoints, radius, getFillStyle(series.points, series.color), 0, false, series.xaxis, series.yaxis, symbol);
			ctx.restore() }

		function drawBar(x, y, b, barLeft, barRight, fillStyleCallback, axisx, axisy, c, horizontal, lineWidth) { var left, right, bottom, top, drawLeft, drawRight, drawTop, drawBottom, tmp; if(horizontal) { drawBottom = drawRight = drawTop = true;
				drawLeft = false;
				left = b;
				right = x;
				top = y + barLeft;
				bottom = y + barRight; if(right < left) { tmp = right;
					right = left;
					left = tmp;
					drawLeft = true;
					drawRight = false } } else { drawLeft = drawRight = drawTop = true;
				drawBottom = false;
				left = x + barLeft;
				right = x + barRight;
				bottom = b;
				top = y; if(top < bottom) { tmp = top;
					top = bottom;
					bottom = tmp;
					drawBottom = true;
					drawTop = false } } if(right < axisx.min || left > axisx.max || top < axisy.min || bottom > axisy.max) return; if(left < axisx.min) { left = axisx.min;
				drawLeft = false } if(right > axisx.max) { right = axisx.max;
				drawRight = false } if(bottom < axisy.min) { bottom = axisy.min;
				drawBottom = false } if(top > axisy.max) { top = axisy.max;
				drawTop = false } left = axisx.p2c(left);
			bottom = axisy.p2c(bottom);
			right = axisx.p2c(right);
			top = axisy.p2c(top); if(fillStyleCallback) { c.fillStyle = fillStyleCallback(bottom, top);
				c.fillRect(left, top, right - left, bottom - top) } if(lineWidth > 0 && (drawLeft || drawRight || drawTop || drawBottom)) { c.beginPath();
				c.moveTo(left, bottom); if(drawLeft) c.lineTo(left, top);
				else c.moveTo(left, top); if(drawTop) c.lineTo(right, top);
				else c.moveTo(right, top); if(drawRight) c.lineTo(right, bottom);
				else c.moveTo(right, bottom); if(drawBottom) c.lineTo(left, bottom);
				else c.moveTo(left, bottom);
				c.stroke() } }

		function drawSeriesBars(series) {
			function plotBars(datapoints, barLeft, barRight, fillStyleCallback, axisx, axisy) { var points = datapoints.points,
					ps = datapoints.pointsize; for(var i = 0; i < points.length; i += ps) { if(points[i] == null) continue;
					drawBar(points[i], points[i + 1], points[i + 2], barLeft, barRight, fillStyleCallback, axisx, axisy, ctx, series.bars.horizontal, series.bars.lineWidth) } } ctx.save();
			ctx.translate(plotOffset.left, plotOffset.top);
			ctx.lineWidth = series.bars.lineWidth;
			ctx.strokeStyle = series.color; var barLeft; switch(series.bars.align) {
				case "left":
					barLeft = 0; break;
				case "right":
					barLeft = -series.bars.barWidth; break;
				default:
					barLeft = -series.bars.barWidth / 2 } var fillStyleCallback = series.bars.fill ? function(bottom, top) { return getFillStyle(series.bars, series.color, bottom, top) } : null;
			plotBars(series.datapoints, barLeft, barLeft + series.bars.barWidth, fillStyleCallback, series.xaxis, series.yaxis);
			ctx.restore() }

		function getFillStyle(filloptions, seriesColor, bottom, top) { var fill = filloptions.fill; if(!fill) return null; if(filloptions.fillColor) return getColorOrGradient(filloptions.fillColor, bottom, top, seriesColor); var c = $.color.parse(seriesColor);
			c.a = typeof fill == "number" ? fill : .4;
			c.normalize(); return c.toString() }

		function insertLegend() { if(options.legend.container != null) { $(options.legend.container).html("") } else { placeholder.find(".legend").remove() } if(!options.legend.show) { return } var fragments = [],
				entries = [],
				rowStarted = false,
				lf = options.legend.labelFormatter,
				s, label; for(var i = 0; i < series.length; ++i) { s = series[i]; if(s.label) { label = lf ? lf(s.label, s) : s.label; if(label) { entries.push({ label: label, color: s.color }) } } } if(options.legend.sorted) { if($.isFunction(options.legend.sorted)) { entries.sort(options.legend.sorted) } else if(options.legend.sorted == "reverse") { entries.reverse() } else { var ascending = options.legend.sorted != "descending";
					entries.sort(function(a, b) { return a.label == b.label ? 0 : a.label < b.label != ascending ? 1 : -1 }) } } for(var i = 0; i < entries.length; ++i) { var entry = entries[i]; if(i % options.legend.noColumns == 0) { if(rowStarted) fragments.push("</tr>");
					fragments.push("<tr>");
					rowStarted = true } fragments.push('<td class="legendColorBox"><div style="border:1px solid ' + options.legend.labelBoxBorderColor + ';padding:1px"><div style="width:4px;height:0;border:5px solid ' + entry.color + ';overflow:hidden"></div></div></td>' + '<td class="legendLabel">' + entry.label + "</td>") } if(rowStarted) fragments.push("</tr>"); if(fragments.length == 0) return; var table = '<table style="font-size:smaller;color:' + options.grid.color + '">' + fragments.join("") + "</table>"; if(options.legend.container != null) $(options.legend.container).html(table);
			else { var pos = "",
					p = options.legend.position,
					m = options.legend.margin; if(m[0] == null) m = [m, m]; if(p.charAt(0) == "n") pos += "top:" + (m[1] + plotOffset.top) + "px;";
				else if(p.charAt(0) == "s") pos += "bottom:" + (m[1] + plotOffset.bottom) + "px;"; if(p.charAt(1) == "e") pos += "right:" + (m[0] + plotOffset.right) + "px;";
				else if(p.charAt(1) == "w") pos += "left:" + (m[0] + plotOffset.left) + "px;"; var legend = $('<div class="legend">' + table.replace('style="', 'style="position:absolute;' + pos + ";") + "</div>").appendTo(placeholder); if(options.legend.backgroundOpacity != 0) { var c = options.legend.backgroundColor; if(c == null) { c = options.grid.backgroundColor; if(c && typeof c == "string") c = $.color.parse(c);
						else c = $.color.extract(legend, "background-color");
						c.a = 1;
						c = c.toString() } var div = legend.children();
					$('<div style="position:absolute;width:' + div.width() + "px;height:" + div.height() + "px;" + pos + "background-color:" + c + ';"> </div>').prependTo(legend).css("opacity", options.legend.backgroundOpacity) } } }
		var highlights = [],
			redrawTimeout = null;

		function findNearbyItem(mouseX, mouseY, seriesFilter) { var maxDistance = options.grid.mouseActiveRadius,
				smallestDistance = maxDistance * maxDistance + 1,
				item = null,
				foundPoint = false,
				i, j, ps; for(i = series.length - 1; i >= 0; --i) { if(!seriesFilter(series[i])) continue; var s = series[i],
					axisx = s.xaxis,
					axisy = s.yaxis,
					points = s.datapoints.points,
					mx = axisx.c2p(mouseX),
					my = axisy.c2p(mouseY),
					maxx = maxDistance / axisx.scale,
					maxy = maxDistance / axisy.scale;
				ps = s.datapoints.pointsize; if(axisx.options.inverseTransform) maxx = Number.MAX_VALUE; if(axisy.options.inverseTransform) maxy = Number.MAX_VALUE; if(s.lines.show || s.points.show) { for(j = 0; j < points.length; j += ps) { var x = points[j],
							y = points[j + 1]; if(x == null) continue; if(x - mx > maxx || x - mx < -maxx || y - my > maxy || y - my < -maxy) continue; var dx = Math.abs(axisx.p2c(x) - mouseX),
							dy = Math.abs(axisy.p2c(y) - mouseY),
							dist = dx * dx + dy * dy; if(dist < smallestDistance) { smallestDistance = dist;
							item = [i, j / ps] } } } if(s.bars.show && !item) { var barLeft, barRight; switch(s.bars.align) {
						case "left":
							barLeft = 0; break;
						case "right":
							barLeft = -s.bars.barWidth; break;
						default:
							barLeft = -s.bars.barWidth / 2 } barRight = barLeft + s.bars.barWidth; for(j = 0; j < points.length; j += ps) { var x = points[j],
							y = points[j + 1],
							b = points[j + 2]; if(x == null) continue; if(series[i].bars.horizontal ? mx <= Math.max(b, x) && mx >= Math.min(b, x) && my >= y + barLeft && my <= y + barRight : mx >= x + barLeft && mx <= x + barRight && my >= Math.min(b, y) && my <= Math.max(b, y)) item = [i, j / ps] } } } if(item) { i = item[0];
				j = item[1];
				ps = series[i].datapoints.pointsize; return { datapoint: series[i].datapoints.points.slice(j * ps, (j + 1) * ps), dataIndex: j, series: series[i], seriesIndex: i } } return null }

		function onMouseMove(e) { if(options.grid.hoverable) triggerClickHoverEvent("plothover", e, function(s) { return s["hoverable"] != false }) }

		function onMouseLeave(e) { if(options.grid.hoverable) triggerClickHoverEvent("plothover", e, function(s) { return false }) }

		function onClick(e) { triggerClickHoverEvent("plotclick", e, function(s) { return s["clickable"] != false }) }

		function triggerClickHoverEvent(eventname, event, seriesFilter) { var offset = eventHolder.offset(),
				canvasX = event.pageX - offset.left - plotOffset.left,
				canvasY = event.pageY - offset.top - plotOffset.top,
				pos = canvasToAxisCoords({ left: canvasX, top: canvasY });
			pos.pageX = event.pageX;
			pos.pageY = event.pageY; var item = findNearbyItem(canvasX, canvasY, seriesFilter); if(item) { item.pageX = parseInt(item.series.xaxis.p2c(item.datapoint[0]) + offset.left + plotOffset.left, 10);
				item.pageY = parseInt(item.series.yaxis.p2c(item.datapoint[1]) + offset.top + plotOffset.top, 10) } if(options.grid.autoHighlight) { for(var i = 0; i < highlights.length; ++i) { var h = highlights[i]; if(h.auto == eventname && !(item && h.series == item.series && h.point[0] == item.datapoint[0] && h.point[1] == item.datapoint[1])) unhighlight(h.series, h.point) } if(item) highlight(item.series, item.datapoint, eventname) } placeholder.trigger(eventname, [pos, item]) }

		function triggerRedrawOverlay() { var t = options.interaction.redrawOverlayInterval; if(t == -1) { drawOverlay(); return } if(!redrawTimeout) redrawTimeout = setTimeout(drawOverlay, t) }

		function drawOverlay() { redrawTimeout = null;
			octx.save();
			overlay.clear();
			octx.translate(plotOffset.left, plotOffset.top); var i, hi; for(i = 0; i < highlights.length; ++i) { hi = highlights[i]; if(hi.series.bars.show) drawBarHighlight(hi.series, hi.point);
				else drawPointHighlight(hi.series, hi.point) } octx.restore();
			executeHooks(hooks.drawOverlay, [octx]) }

		function highlight(s, point, auto) { if(typeof s == "number") s = series[s]; if(typeof point == "number") { var ps = s.datapoints.pointsize;
				point = s.datapoints.points.slice(ps * point, ps * (point + 1)) } var i = indexOfHighlight(s, point); if(i == -1) { highlights.push({ series: s, point: point, auto: auto });
				triggerRedrawOverlay() } else if(!auto) highlights[i].auto = false }

		function unhighlight(s, point) { if(s == null && point == null) { highlights = [];
				triggerRedrawOverlay(); return } if(typeof s == "number") s = series[s]; if(typeof point == "number") { var ps = s.datapoints.pointsize;
				point = s.datapoints.points.slice(ps * point, ps * (point + 1)) } var i = indexOfHighlight(s, point); if(i != -1) { highlights.splice(i, 1);
				triggerRedrawOverlay() } }

		function indexOfHighlight(s, p) { for(var i = 0; i < highlights.length; ++i) { var h = highlights[i]; if(h.series == s && h.point[0] == p[0] && h.point[1] == p[1]) return i } return -1 }

		function drawPointHighlight(series, point) { var x = point[0],
				y = point[1],
				axisx = series.xaxis,
				axisy = series.yaxis,
				highlightColor = typeof series.highlightColor === "string" ? series.highlightColor : $.color.parse(series.color).scale("a", .5).toString(); if(x < axisx.min || x > axisx.max || y < axisy.min || y > axisy.max) return; var pointRadius = series.points.radius + series.points.lineWidth / 2;
			octx.lineWidth = pointRadius;
			octx.strokeStyle = highlightColor; var radius = 1.5 * pointRadius;
			x = axisx.p2c(x);
			y = axisy.p2c(y);
			octx.beginPath(); if(series.points.symbol == "circle") octx.arc(x, y, radius, 0, 2 * Math.PI, false);
			else series.points.symbol(octx, x, y, radius, false);
			octx.closePath();
			octx.stroke() }

		function drawBarHighlight(series, point) { var highlightColor = typeof series.highlightColor === "string" ? series.highlightColor : $.color.parse(series.color).scale("a", .5).toString(),
				fillStyle = highlightColor,
				barLeft; switch(series.bars.align) {
				case "left":
					barLeft = 0; break;
				case "right":
					barLeft = -series.bars.barWidth; break;
				default:
					barLeft = -series.bars.barWidth / 2 } octx.lineWidth = series.bars.lineWidth;
			octx.strokeStyle = highlightColor;
			drawBar(point[0], point[1], point[2] || 0, barLeft, barLeft + series.bars.barWidth, function() { return fillStyle }, series.xaxis, series.yaxis, octx, series.bars.horizontal, series.bars.lineWidth) }

		function getColorOrGradient(spec, bottom, top, defaultColor) { if(typeof spec == "string") return spec;
			else { var gradient = ctx.createLinearGradient(0, top, 0, bottom); for(var i = 0, l = spec.colors.length; i < l; ++i) { var c = spec.colors[i]; if(typeof c != "string") { var co = $.color.parse(defaultColor); if(c.brightness != null) co = co.scale("rgb", c.brightness); if(c.opacity != null) co.a *= c.opacity;
						c = co.toString() } gradient.addColorStop(i / (l - 1), c) } return gradient } }
	}
	$.plot = function(placeholder, data, options) { var plot = new Plot($(placeholder), data, options, $.plot.plugins); return plot };
	$.plot.version = "0.8.3";
	$.plot.plugins = [];
	$.fn.plot = function(data, options) { return this.each(function() { $.plot(this, data, options) }) };

	function floorInBase(n, base) { return base * Math.floor(n / base) }
})(jQuery);

/*!
 * Flot plugin for rendering pie charts.
 * Copyright (c) 2007-2013 IOLA and Ole Laursen.
 * Licensed under the MIT license.
 * Created by Brian Medendorp
 * Updated with contributions from btburnett3, Anthony Aragues and Xavi Ivars
 */
(function($) { var REDRAW_ATTEMPTS = 10; var REDRAW_SHRINK = .95;

	function init(plot) { var canvas = null,
			target = null,
			options = null,
			maxRadius = null,
			centerLeft = null,
			centerTop = null,
			processed = false,
			ctx = null; var highlights = [];
		plot.hooks.processOptions.push(function(plot, options) { if(options.series.pie.show) { options.grid.show = false; if(options.series.pie.label.show == "auto") { if(options.legend.show) { options.series.pie.label.show = false } else { options.series.pie.label.show = true } } if(options.series.pie.radius == "auto") { if(options.series.pie.label.show) { options.series.pie.radius = 3 / 4 } else { options.series.pie.radius = 1 } } if(options.series.pie.tilt > 1) { options.series.pie.tilt = 1 } else if(options.series.pie.tilt < 0) { options.series.pie.tilt = 0 } } });
		plot.hooks.bindEvents.push(function(plot, eventHolder) { var options = plot.getOptions(); if(options.series.pie.show) { if(options.grid.hoverable) { eventHolder.unbind("mousemove").mousemove(onMouseMove) } if(options.grid.clickable) { eventHolder.unbind("click").click(onClick) } } });
		plot.hooks.processDatapoints.push(function(plot, series, data, datapoints) { var options = plot.getOptions(); if(options.series.pie.show) { processDatapoints(plot, series, data, datapoints) } });
		plot.hooks.drawOverlay.push(function(plot, octx) { var options = plot.getOptions(); if(options.series.pie.show) { drawOverlay(plot, octx) } });
		plot.hooks.draw.push(function(plot, newCtx) { var options = plot.getOptions(); if(options.series.pie.show) { draw(plot, newCtx) } });

		function processDatapoints(plot, series, datapoints) { if(!processed) { processed = true;
				canvas = plot.getCanvas();
				target = $(canvas).parent();
				options = plot.getOptions();
				plot.setData(combine(plot.getData())) } }

		function combine(data) { var total = 0,
				combined = 0,
				numCombined = 0,
				color = options.series.pie.combine.color,
				newdata = []; for(var i = 0; i < data.length; ++i) { var value = data[i].data; if($.isArray(value) && value.length == 1) { value = value[0] } if($.isArray(value)) { if(!isNaN(parseFloat(value[1])) && isFinite(value[1])) { value[1] = +value[1] } else { value[1] = 0 } } else if(!isNaN(parseFloat(value)) && isFinite(value)) { value = [1, +value] } else { value = [1, 0] } data[i].data = [value] } for(var i = 0; i < data.length; ++i) { total += data[i].data[0][1] } for(var i = 0; i < data.length; ++i) { var value = data[i].data[0][1]; if(value / total <= options.series.pie.combine.threshold) { combined += value;
					numCombined++; if(!color) { color = data[i].color } } } for(var i = 0; i < data.length; ++i) { var value = data[i].data[0][1]; if(numCombined < 2 || value / total > options.series.pie.combine.threshold) { newdata.push($.extend(data[i], { data: [
							[1, value]
						], color: data[i].color, label: data[i].label, angle: value * Math.PI * 2 / total, percent: value / (total / 100) })) } } if(numCombined > 1) { newdata.push({ data: [
						[1, combined]
					], color: color, label: options.series.pie.combine.label, angle: combined * Math.PI * 2 / total, percent: combined / (total / 100) }) } return newdata }

		function draw(plot, newCtx) { if(!target) { return } var canvasWidth = plot.getPlaceholder().width(),
				canvasHeight = plot.getPlaceholder().height(),
				legendWidth = target.children().filter(".legend").children().width() || 0;
			ctx = newCtx;
			processed = false;
			maxRadius = Math.min(canvasWidth, canvasHeight / options.series.pie.tilt) / 2;
			centerTop = canvasHeight / 2 + options.series.pie.offset.top;
			centerLeft = canvasWidth / 2; if(options.series.pie.offset.left == "auto") { if(options.legend.position.match("w")) { centerLeft += legendWidth / 2 } else { centerLeft -= legendWidth / 2 } if(centerLeft < maxRadius) { centerLeft = maxRadius } else if(centerLeft > canvasWidth - maxRadius) { centerLeft = canvasWidth - maxRadius } } else { centerLeft += options.series.pie.offset.left } var slices = plot.getData(),
				attempts = 0;
			do { if(attempts > 0) { maxRadius *= REDRAW_SHRINK } attempts += 1;
				clear(); if(options.series.pie.tilt <= .8) { drawShadow() } } while (!drawPie() && attempts < REDRAW_ATTEMPTS); if(attempts >= REDRAW_ATTEMPTS) { clear();
				target.prepend("<div class='error'>Could not draw pie with labels contained inside canvas</div>") } if(plot.setSeries && plot.insertLegend) { plot.setSeries(slices);
				plot.insertLegend() }

			function clear() { ctx.clearRect(0, 0, canvasWidth, canvasHeight);
				target.children().filter(".pieLabel, .pieLabelBackground").remove() }

			function drawShadow() { var shadowLeft = options.series.pie.shadow.left; var shadowTop = options.series.pie.shadow.top; var edge = 10; var alpha = options.series.pie.shadow.alpha; var radius = options.series.pie.radius > 1 ? options.series.pie.radius : maxRadius * options.series.pie.radius; if(radius >= canvasWidth / 2 - shadowLeft || radius * options.series.pie.tilt >= canvasHeight / 2 - shadowTop || radius <= edge) { return } ctx.save();
				ctx.translate(shadowLeft, shadowTop);
				ctx.globalAlpha = alpha;
				ctx.fillStyle = "#000";
				ctx.translate(centerLeft, centerTop);
				ctx.scale(1, options.series.pie.tilt); for(var i = 1; i <= edge; i++) { ctx.beginPath();
					ctx.arc(0, 0, radius, 0, Math.PI * 2, false);
					ctx.fill();
					radius -= i } ctx.restore() }

			function drawPie() { var startAngle = Math.PI * options.series.pie.startAngle; var radius = options.series.pie.radius > 1 ? options.series.pie.radius : maxRadius * options.series.pie.radius;
				ctx.save();
				ctx.translate(centerLeft, centerTop);
				ctx.scale(1, options.series.pie.tilt);
				ctx.save(); var currentAngle = startAngle; for(var i = 0; i < slices.length; ++i) { slices[i].startAngle = currentAngle;
					drawSlice(slices[i].angle, slices[i].color, true) } ctx.restore(); if(options.series.pie.stroke.width > 0) { ctx.save();
					ctx.lineWidth = options.series.pie.stroke.width;
					currentAngle = startAngle; for(var i = 0; i < slices.length; ++i) { drawSlice(slices[i].angle, options.series.pie.stroke.color, false) } ctx.restore() } drawDonutHole(ctx);
				ctx.restore(); if(options.series.pie.label.show) { return drawLabels() } else return true;

				function drawSlice(angle, color, fill) { if(angle <= 0 || isNaN(angle)) { return } if(fill) { ctx.fillStyle = color } else { ctx.strokeStyle = color;
						ctx.lineJoin = "round" } ctx.beginPath(); if(Math.abs(angle - Math.PI * 2) > 1e-9) { ctx.moveTo(0, 0) } ctx.arc(0, 0, radius, currentAngle, currentAngle + angle / 2, false);
					ctx.arc(0, 0, radius, currentAngle + angle / 2, currentAngle + angle, false);
					ctx.closePath();
					currentAngle += angle; if(fill) { ctx.fill() } else { ctx.stroke() } }

				function drawLabels() { var currentAngle = startAngle; var radius = options.series.pie.label.radius > 1 ? options.series.pie.label.radius : maxRadius * options.series.pie.label.radius; for(var i = 0; i < slices.length; ++i) { if(slices[i].percent >= options.series.pie.label.threshold * 100) { if(!drawLabel(slices[i], currentAngle, i)) { return false } } currentAngle += slices[i].angle } return true;

					function drawLabel(slice, startAngle, index) { if(slice.data[0][1] == 0) { return true } var lf = options.legend.labelFormatter,
							text, plf = options.series.pie.label.formatter; if(lf) { text = lf(slice.label, slice) } else { text = slice.label } if(plf) { text = plf(text, slice) } var halfAngle = (startAngle + slice.angle + startAngle) / 2; var x = centerLeft + Math.round(Math.cos(halfAngle) * radius); var y = centerTop + Math.round(Math.sin(halfAngle) * radius) * options.series.pie.tilt; var html = "<span class='pieLabel' id='pieLabel" + index + "' style='position:absolute;top:" + y + "px;left:" + x + "px;'>" + text + "</span>";
						target.append(html); var label = target.children("#pieLabel" + index); var labelTop = y - label.height() / 2; var labelLeft = x - label.width() / 2;
						label.css("top", labelTop);
						label.css("left", labelLeft); if(0 - labelTop > 0 || 0 - labelLeft > 0 || canvasHeight - (labelTop + label.height()) < 0 || canvasWidth - (labelLeft + label.width()) < 0) { return false } if(options.series.pie.label.background.opacity != 0) { var c = options.series.pie.label.background.color; if(c == null) { c = slice.color } var pos = "top:" + labelTop + "px;left:" + labelLeft + "px;";
							$("<div class='pieLabelBackground' style='position:absolute;width:" + label.width() + "px;height:" + label.height() + "px;" + pos + "background-color:" + c + ";'></div>").css("opacity", options.series.pie.label.background.opacity).insertBefore(label) } return true } } } }

		function drawDonutHole(layer) { if(options.series.pie.innerRadius > 0) { layer.save(); var innerRadius = options.series.pie.innerRadius > 1 ? options.series.pie.innerRadius : maxRadius * options.series.pie.innerRadius;
				layer.globalCompositeOperation = "destination-out";
				layer.beginPath();
				layer.fillStyle = options.series.pie.stroke.color;
				layer.arc(0, 0, innerRadius, 0, Math.PI * 2, false);
				layer.fill();
				layer.closePath();
				layer.restore();
				layer.save();
				layer.beginPath();
				layer.strokeStyle = options.series.pie.stroke.color;
				layer.arc(0, 0, innerRadius, 0, Math.PI * 2, false);
				layer.stroke();
				layer.closePath();
				layer.restore() } }

		function isPointInPoly(poly, pt) { for(var c = false, i = -1, l = poly.length, j = l - 1; ++i < l; j = i)(poly[i][1] <= pt[1] && pt[1] < poly[j][1] || poly[j][1] <= pt[1] && pt[1] < poly[i][1]) && pt[0] < (poly[j][0] - poly[i][0]) * (pt[1] - poly[i][1]) / (poly[j][1] - poly[i][1]) + poly[i][0] && (c = !c); return c }

		function findNearbySlice(mouseX, mouseY) { var slices = plot.getData(),
				options = plot.getOptions(),
				radius = options.series.pie.radius > 1 ? options.series.pie.radius : maxRadius * options.series.pie.radius,
				x, y; for(var i = 0; i < slices.length; ++i) { var s = slices[i]; if(s.pie.show) { ctx.save();
					ctx.beginPath();
					ctx.moveTo(0, 0);
					ctx.arc(0, 0, radius, s.startAngle, s.startAngle + s.angle / 2, false);
					ctx.arc(0, 0, radius, s.startAngle + s.angle / 2, s.startAngle + s.angle, false);
					ctx.closePath();
					x = mouseX - centerLeft;
					y = mouseY - centerTop; if(ctx.isPointInPath) { if(ctx.isPointInPath(mouseX - centerLeft, mouseY - centerTop)) { ctx.restore(); return { datapoint: [s.percent, s.data], dataIndex: 0, series: s, seriesIndex: i } } } else { var p1X = radius * Math.cos(s.startAngle),
							p1Y = radius * Math.sin(s.startAngle),
							p2X = radius * Math.cos(s.startAngle + s.angle / 4),
							p2Y = radius * Math.sin(s.startAngle + s.angle / 4),
							p3X = radius * Math.cos(s.startAngle + s.angle / 2),
							p3Y = radius * Math.sin(s.startAngle + s.angle / 2),
							p4X = radius * Math.cos(s.startAngle + s.angle / 1.5),
							p4Y = radius * Math.sin(s.startAngle + s.angle / 1.5),
							p5X = radius * Math.cos(s.startAngle + s.angle),
							p5Y = radius * Math.sin(s.startAngle + s.angle),
							arrPoly = [
								[0, 0],
								[p1X, p1Y],
								[p2X, p2Y],
								[p3X, p3Y],
								[p4X, p4Y],
								[p5X, p5Y]
							],
							arrPoint = [x, y]; if(isPointInPoly(arrPoly, arrPoint)) { ctx.restore(); return { datapoint: [s.percent, s.data], dataIndex: 0, series: s, seriesIndex: i } } } ctx.restore() } } return null }

		function onMouseMove(e) { triggerClickHoverEvent("plothover", e) }

		function onClick(e) { triggerClickHoverEvent("plotclick", e) }

		function triggerClickHoverEvent(eventname, e) { var offset = plot.offset(); var canvasX = parseInt(e.pageX - offset.left); var canvasY = parseInt(e.pageY - offset.top); var item = findNearbySlice(canvasX, canvasY); if(options.grid.autoHighlight) { for(var i = 0; i < highlights.length; ++i) { var h = highlights[i]; if(h.auto == eventname && !(item && h.series == item.series)) { unhighlight(h.series) } } } if(item) { highlight(item.series, eventname) } var pos = { pageX: e.pageX, pageY: e.pageY };
			target.trigger(eventname, [pos, item]) }

		function highlight(s, auto) { var i = indexOfHighlight(s); if(i == -1) { highlights.push({ series: s, auto: auto });
				plot.triggerRedrawOverlay() } else if(!auto) { highlights[i].auto = false } }

		function unhighlight(s) { if(s == null) { highlights = [];
				plot.triggerRedrawOverlay() } var i = indexOfHighlight(s); if(i != -1) { highlights.splice(i, 1);
				plot.triggerRedrawOverlay() } }

		function indexOfHighlight(s) { for(var i = 0; i < highlights.length; ++i) { var h = highlights[i]; if(h.series == s) return i } return -1 }

		function drawOverlay(plot, octx) { var options = plot.getOptions(); var radius = options.series.pie.radius > 1 ? options.series.pie.radius : maxRadius * options.series.pie.radius;
			octx.save();
			octx.translate(centerLeft, centerTop);
			octx.scale(1, options.series.pie.tilt); for(var i = 0; i < highlights.length; ++i) { drawHighlight(highlights[i].series) } drawDonutHole(octx);
			octx.restore();

			function drawHighlight(series) { if(series.angle <= 0 || isNaN(series.angle)) { return } octx.fillStyle = "rgba(255, 255, 255, " + options.series.pie.highlight.opacity + ")";
				octx.beginPath(); if(Math.abs(series.angle - Math.PI * 2) > 1e-9) { octx.moveTo(0, 0) } octx.arc(0, 0, radius, series.startAngle, series.startAngle + series.angle / 2, false);
				octx.arc(0, 0, radius, series.startAngle + series.angle / 2, series.startAngle + series.angle, false);
				octx.closePath();
				octx.fill() } } } var options = { series: { pie: { show: false, radius: "auto", innerRadius: 0, startAngle: 3 / 2, tilt: 1, shadow: { left: 5, top: 15, alpha: .02 }, offset: { top: 0, left: "auto" }, stroke: { color: "#fff", width: 1 }, label: { show: "auto", formatter: function(label, slice) { return "<div style='font-size:x-small;text-align:center;padding:2px;color:" + slice.color + ";'>" + label + "<br/>" + Math.round(slice.percent) + "%</div>" }, radius: 1, background: { color: null, opacity: 0 }, threshold: 0 }, combine: { threshold: -1, color: null, label: "Other" }, highlight: { opacity: .5 } } } };
	$.plot.plugins.push({ init: init, options: options, name: "pie", version: "1.1" }) })(jQuery);

/*!
 * Flot plugin for automatically redrawing plots as the placeholder resizes.
 * Copyright (c) 2007-2013 IOLA and Ole Laursen.
 * Licensed under the MIT license.
 * Inline dependency:
 * jQuery resize event - v1.1 - 3/14/2010
 * http://benalman.com/projects/jquery-resize-plugin/
 *
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 * http://benalman.com/about/license/
 */
(function($, e, t) { "$:nomunge"; var i = [],
		n = $.resize = $.extend($.resize, {}),
		a, r = false,
		s = "setTimeout",
		u = "resize",
		m = u + "-special-event",
		o = "pendingDelay",
		l = "activeDelay",
		f = "throttleWindow";
	n[o] = 200;
	n[l] = 20;
	n[f] = true;
	$.event.special[u] = { setup: function() { if(!n[f] && this[s]) { return false } var e = $(this);
			i.push(this);
			e.data(m, { w: e.width(), h: e.height() }); if(i.length === 1) { a = t;
				h() } }, teardown: function() { if(!n[f] && this[s]) { return false } var e = $(this); for(var t = i.length - 1; t >= 0; t--) { if(i[t] == this) { i.splice(t, 1); break } } e.removeData(m); if(!i.length) { if(r) { cancelAnimationFrame(a) } else { clearTimeout(a) } a = null } }, add: function(e) { if(!n[f] && this[s]) { return false } var i;

			function a(e, n, a) { var r = $(this),
					s = r.data(m) || {};
				s.w = n !== t ? n : r.width();
				s.h = a !== t ? a : r.height();
				i.apply(this, arguments) } if($.isFunction(e)) { i = e; return a } else { i = e.handler;
				e.handler = a } } };

	function h(t) { if(r === true) { r = t || 1 } for(var s = i.length - 1; s >= 0; s--) { var l = $(i[s]); if(l[0] == e || l.is(":visible")) { var f = l.width(),
					c = l.height(),
					d = l.data(m); if(d && (f !== d.w || c !== d.h)) { l.trigger(u, [d.w = f, d.h = c]);
					r = t || true } } else { d = l.data(m);
				d.w = 0;
				d.h = 0 } } if(a !== null) { if(r && (t == null || t - r < 1e3)) { a = e.requestAnimationFrame(h) } else { a = setTimeout(h, n[o]);
				r = false } } } if(!e.requestAnimationFrame) { e.requestAnimationFrame = function() { return e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || e.msRequestAnimationFrame || function(t, i) { return e.setTimeout(function() { t((new Date).getTime()) }, n[l]) } }() } if(!e.cancelAnimationFrame) { e.cancelAnimationFrame = function() { return e.webkitCancelRequestAnimationFrame || e.mozCancelRequestAnimationFrame || e.oCancelRequestAnimationFrame || e.msCancelRequestAnimationFrame || clearTimeout }() } })(jQuery, this);
(function($) { var options = {};

	function init(plot) {
		function onResize() { var placeholder = plot.getPlaceholder(); if(placeholder.width() == 0 || placeholder.height() == 0) return;
			plot.resize();
			plot.setupGrid();
			plot.draw() }

		function bindEvents(plot, eventHolder) { plot.getPlaceholder().resize(onResize) }

		function shutdown(plot, eventHolder) { plot.getPlaceholder().unbind("resize", onResize) } plot.hooks.bindEvents.push(bindEvents);
		plot.hooks.shutdown.push(shutdown) } $.plot.plugins.push({ init: init, options: options, name: "resize", version: "1.0" }) })(jQuery);

/*!
 * Flot plugin for stacking data sets rather than overlyaing them.
 * Copyright (c) 2007-2013 IOLA and Ole Laursen.
 * Licensed under the MIT license.
 */
(function($) { var options = { series: { stack: null } };

	function init(plot) {
		function findMatchingSeries(s, allseries) { var res = null; for(var i = 0; i < allseries.length; ++i) { if(s == allseries[i]) break; if(allseries[i].stack == s.stack) res = allseries[i] } return res }

		function stackData(plot, s, datapoints) { if(s.stack == null || s.stack === false) return; var other = findMatchingSeries(s, plot.getData()); if(!other) return; var ps = datapoints.pointsize,
				points = datapoints.points,
				otherps = other.datapoints.pointsize,
				otherpoints = other.datapoints.points,
				newpoints = [],
				px, py, intery, qx, qy, bottom, withlines = s.lines.show,
				horizontal = s.bars.horizontal,
				withbottom = ps > 2 && (horizontal ? datapoints.format[2].x : datapoints.format[2].y),
				withsteps = withlines && s.lines.steps,
				fromgap = true,
				keyOffset = horizontal ? 1 : 0,
				accumulateOffset = horizontal ? 0 : 1,
				i = 0,
				j = 0,
				l, m; while(true) { if(i >= points.length) break;
				l = newpoints.length; if(points[i] == null) { for(m = 0; m < ps; ++m) newpoints.push(points[i + m]);
					i += ps } else if(j >= otherpoints.length) { if(!withlines) { for(m = 0; m < ps; ++m) newpoints.push(points[i + m]) } i += ps } else if(otherpoints[j] == null) { for(m = 0; m < ps; ++m) newpoints.push(null);
					fromgap = true;
					j += otherps } else { px = points[i + keyOffset];
					py = points[i + accumulateOffset];
					qx = otherpoints[j + keyOffset];
					qy = otherpoints[j + accumulateOffset];
					bottom = 0; if(px == qx) { for(m = 0; m < ps; ++m) newpoints.push(points[i + m]);
						newpoints[l + accumulateOffset] += qy;
						bottom = qy;
						i += ps;
						j += otherps } else if(px > qx) { if(withlines && i > 0 && points[i - ps] != null) { intery = py + (points[i - ps + accumulateOffset] - py) * (qx - px) / (points[i - ps + keyOffset] - px);
							newpoints.push(qx);
							newpoints.push(intery + qy); for(m = 2; m < ps; ++m) newpoints.push(points[i + m]);
							bottom = qy } j += otherps } else { if(fromgap && withlines) { i += ps; continue } for(m = 0; m < ps; ++m) newpoints.push(points[i + m]); if(withlines && j > 0 && otherpoints[j - otherps] != null) bottom = qy + (otherpoints[j - otherps + accumulateOffset] - qy) * (px - qx) / (otherpoints[j - otherps + keyOffset] - qx);
						newpoints[l + accumulateOffset] += bottom;
						i += ps } fromgap = false; if(l != newpoints.length && withbottom) newpoints[l + 2] += bottom } if(withsteps && l != newpoints.length && l > 0 && newpoints[l] != null && newpoints[l] != newpoints[l - ps] && newpoints[l + 1] != newpoints[l - ps + 1]) { for(m = 0; m < ps; ++m) newpoints[l + ps + m] = newpoints[l + m];
					newpoints[l + 1] = newpoints[l - ps + 1] } } datapoints.points = newpoints } plot.hooks.processDatapoints.push(stackData) } $.plot.plugins.push({ init: init, options: options, name: "stack", version: "1.2" }) })(jQuery);

/*
 * Pretty handling of time axes.
 *
 * Copyright (c) 2007-2013 IOLA and Ole Laursen.
 * Licensed under the MIT license.
 *
 * Set axis.mode to "time" to enable. See the section "Time series data" in
 * API.txt for details.
 */
(function($) { var options = { xaxis: { timezone: null, timeformat: null, twelveHourClock: false, monthNames: null } };

	function floorInBase(n, base) { return base * Math.floor(n / base) }

	function formatDate(d, fmt, monthNames, dayNames) { if(typeof d.strftime == "function") { return d.strftime(fmt) } var leftPad = function(n, pad) { n = "" + n;
			pad = "" + (pad == null ? "0" : pad); return n.length == 1 ? pad + n : n }; var r = []; var escape = false; var hours = d.getHours(); var isAM = hours < 12; if(monthNames == null) { monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"] } if(dayNames == null) { dayNames = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"] } var hours12; if(hours > 12) { hours12 = hours - 12 } else if(hours == 0) { hours12 = 12 } else { hours12 = hours } for(var i = 0; i < fmt.length; ++i) { var c = fmt.charAt(i); if(escape) { switch(c) {
					case "a":
						c = "" + dayNames[d.getDay()]; break;
					case "b":
						c = "" + monthNames[d.getMonth()]; break;
					case "d":
						c = leftPad(d.getDate()); break;
					case "e":
						c = leftPad(d.getDate(), " "); break;
					case "h":
					case "H":
						c = leftPad(hours); break;
					case "I":
						c = leftPad(hours12); break;
					case "l":
						c = leftPad(hours12, " "); break;
					case "m":
						c = leftPad(d.getMonth() + 1); break;
					case "M":
						c = leftPad(d.getMinutes()); break;
					case "q":
						c = "" + (Math.floor(d.getMonth() / 3) + 1); break;
					case "S":
						c = leftPad(d.getSeconds()); break;
					case "y":
						c = leftPad(d.getFullYear() % 100); break;
					case "Y":
						c = "" + d.getFullYear(); break;
					case "p":
						c = isAM ? "" + "am" : "" + "pm"; break;
					case "P":
						c = isAM ? "" + "AM" : "" + "PM"; break;
					case "w":
						c = "" + d.getDay(); break } r.push(c);
				escape = false } else { if(c == "%") { escape = true } else { r.push(c) } } } return r.join("") }

	function makeUtcWrapper(d) {
		function addProxyMethod(sourceObj, sourceMethod, targetObj, targetMethod) { sourceObj[sourceMethod] = function() { return targetObj[targetMethod].apply(targetObj, arguments) } } var utc = { date: d }; if(d.strftime != undefined) { addProxyMethod(utc, "strftime", d, "strftime") } addProxyMethod(utc, "getTime", d, "getTime");
		addProxyMethod(utc, "setTime", d, "setTime"); var props = ["Date", "Day", "FullYear", "Hours", "Milliseconds", "Minutes", "Month", "Seconds"]; for(var p = 0; p < props.length; p++) { addProxyMethod(utc, "get" + props[p], d, "getUTC" + props[p]);
			addProxyMethod(utc, "set" + props[p], d, "setUTC" + props[p]) } return utc }

	function dateGenerator(ts, opts) { if(opts.timezone == "browser") { return new Date(ts) } else if(!opts.timezone || opts.timezone == "utc") { return makeUtcWrapper(new Date(ts)) } else if(typeof timezoneJS != "undefined" && typeof timezoneJS.Date != "undefined") { var d = new timezoneJS.Date;
			d.setTimezone(opts.timezone);
			d.setTime(ts); return d } else { return makeUtcWrapper(new Date(ts)) } } var timeUnitSize = { second: 1e3, minute: 60 * 1e3, hour: 60 * 60 * 1e3, day: 24 * 60 * 60 * 1e3, month: 30 * 24 * 60 * 60 * 1e3, quarter: 3 * 30 * 24 * 60 * 60 * 1e3, year: 365.2425 * 24 * 60 * 60 * 1e3 }; var baseSpec = [
		[1, "second"],
		[2, "second"],
		[5, "second"],
		[10, "second"],
		[30, "second"],
		[1, "minute"],
		[2, "minute"],
		[5, "minute"],
		[10, "minute"],
		[30, "minute"],
		[1, "hour"],
		[2, "hour"],
		[4, "hour"],
		[8, "hour"],
		[12, "hour"],
		[1, "day"],
		[2, "day"],
		[3, "day"],
		[.25, "month"],
		[.5, "month"],
		[1, "month"],
		[2, "month"]
	]; var specMonths = baseSpec.concat([
		[3, "month"],
		[6, "month"],
		[1, "year"]
	]); var specQuarters = baseSpec.concat([
		[1, "quarter"],
		[2, "quarter"],
		[1, "year"]
	]);

	function init(plot) { plot.hooks.processOptions.push(function(plot, options) { $.each(plot.getAxes(), function(axisName, axis) { var opts = axis.options; if(opts.mode == "time") { axis.tickGenerator = function(axis) { var ticks = []; var d = dateGenerator(axis.min, opts); var minSize = 0; var spec = opts.tickSize && opts.tickSize[1] === "quarter" || opts.minTickSize && opts.minTickSize[1] === "quarter" ? specQuarters : specMonths; if(opts.minTickSize != null) { if(typeof opts.tickSize == "number") { minSize = opts.tickSize } else { minSize = opts.minTickSize[0] * timeUnitSize[opts.minTickSize[1]] } } for(var i = 0; i < spec.length - 1; ++i) { if(axis.delta < (spec[i][0] * timeUnitSize[spec[i][1]] + spec[i + 1][0] * timeUnitSize[spec[i + 1][1]]) / 2 && spec[i][0] * timeUnitSize[spec[i][1]] >= minSize) { break } } var size = spec[i][0]; var unit = spec[i][1]; if(unit == "year") { if(opts.minTickSize != null && opts.minTickSize[1] == "year") { size = Math.floor(opts.minTickSize[0]) } else { var magn = Math.pow(10, Math.floor(Math.log(axis.delta / timeUnitSize.year) / Math.LN10)); var norm = axis.delta / timeUnitSize.year / magn; if(norm < 1.5) { size = 1 } else if(norm < 3) { size = 2 } else if(norm < 7.5) { size = 5 } else { size = 10 } size *= magn } if(size < 1) { size = 1 } } axis.tickSize = opts.tickSize || [size, unit]; var tickSize = axis.tickSize[0];
						unit = axis.tickSize[1]; var step = tickSize * timeUnitSize[unit]; if(unit == "second") { d.setSeconds(floorInBase(d.getSeconds(), tickSize)) } else if(unit == "minute") { d.setMinutes(floorInBase(d.getMinutes(), tickSize)) } else if(unit == "hour") { d.setHours(floorInBase(d.getHours(), tickSize)) } else if(unit == "month") { d.setMonth(floorInBase(d.getMonth(), tickSize)) } else if(unit == "quarter") { d.setMonth(3 * floorInBase(d.getMonth() / 3, tickSize)) } else if(unit == "year") { d.setFullYear(floorInBase(d.getFullYear(), tickSize)) } d.setMilliseconds(0); if(step >= timeUnitSize.minute) { d.setSeconds(0) } if(step >= timeUnitSize.hour) { d.setMinutes(0) } if(step >= timeUnitSize.day) { d.setHours(0) } if(step >= timeUnitSize.day * 4) { d.setDate(1) } if(step >= timeUnitSize.month * 2) { d.setMonth(floorInBase(d.getMonth(), 3)) } if(step >= timeUnitSize.quarter * 2) { d.setMonth(floorInBase(d.getMonth(), 6)) } if(step >= timeUnitSize.year) { d.setMonth(0) } var carry = 0; var v = Number.NaN; var prev;
						do { prev = v;
							v = d.getTime();
							ticks.push(v); if(unit == "month" || unit == "quarter") { if(tickSize < 1) { d.setDate(1); var start = d.getTime();
									d.setMonth(d.getMonth() + (unit == "quarter" ? 3 : 1)); var end = d.getTime();
									d.setTime(v + carry * timeUnitSize.hour + (end - start) * tickSize);
									carry = d.getHours();
									d.setHours(0) } else { d.setMonth(d.getMonth() + tickSize * (unit == "quarter" ? 3 : 1)) } } else if(unit == "year") { d.setFullYear(d.getFullYear() + tickSize) } else { d.setTime(v + step) } } while (v < axis.max && v != prev); return ticks };
					axis.tickFormatter = function(v, axis) { var d = dateGenerator(v, axis.options); if(opts.timeformat != null) { return formatDate(d, opts.timeformat, opts.monthNames, opts.dayNames) } var useQuarters = axis.options.tickSize && axis.options.tickSize[1] == "quarter" || axis.options.minTickSize && axis.options.minTickSize[1] == "quarter"; var t = axis.tickSize[0] * timeUnitSize[axis.tickSize[1]]; var span = axis.max - axis.min; var suffix = opts.twelveHourClock ? " %p" : ""; var hourCode = opts.twelveHourClock ? "%I" : "%H"; var fmt; if(t < timeUnitSize.minute) { fmt = hourCode + ":%M:%S" + suffix } else if(t < timeUnitSize.day) { if(span < 2 * timeUnitSize.day) { fmt = hourCode + ":%M" + suffix } else { fmt = "%b %d " + hourCode + ":%M" + suffix } } else if(t < timeUnitSize.month) { fmt = "%b %d" } else if(useQuarters && t < timeUnitSize.quarter || !useQuarters && t < timeUnitSize.year) { if(span < timeUnitSize.year) { fmt = "%b" } else { fmt = "%b %Y" } } else if(useQuarters && t < timeUnitSize.year) { if(span < timeUnitSize.year) { fmt = "Q%q" } else { fmt = "Q%q %Y" } } else { fmt = "%Y" } var rt = formatDate(d, fmt, opts.monthNames, opts.dayNames); return rt } } }) }) } $.plot.plugins.push({ init: init, options: options, name: "time", version: "1.0" });
	$.plot.formatDate = formatDate;
	$.plot.dateGenerator = dateGenerator })(jQuery);

/*!
 * Dropzone.js 4.3.0
 * http://www.dropzonejs.com/
 */
(function() {
	var a, b, c, d, e, f, g, h, i = [].slice,
		j = {}.hasOwnProperty,
		k = function(a, b) {
			function c() { this.constructor = a } for(var d in b) j.call(b, d) && (a[d] = b[d]); return c.prototype = b.prototype, a.prototype = new c, a.__super__ = b.prototype, a };
	g = function() {}, b = function() {
		function a() {} return a.prototype.addEventListener = a.prototype.on, a.prototype.on = function(a, b) { return this._callbacks = this._callbacks || {}, this._callbacks[a] || (this._callbacks[a] = []), this._callbacks[a].push(b), this }, a.prototype.emit = function() { var a, b, c, d, e, f; if(d = arguments[0], a = 2 <= arguments.length ? i.call(arguments, 1) : [], this._callbacks = this._callbacks || {}, c = this._callbacks[d])
				for(e = 0, f = c.length; f > e; e++) b = c[e], b.apply(this, a); return this }, a.prototype.removeListener = a.prototype.off, a.prototype.removeAllListeners = a.prototype.off, a.prototype.removeEventListener = a.prototype.off, a.prototype.off = function(a, b) { var c, d, e, f, g; if(!this._callbacks || 0 === arguments.length) return this._callbacks = {}, this; if(d = this._callbacks[a], !d) return this; if(1 === arguments.length) return delete this._callbacks[a], this; for(e = f = 0, g = d.length; g > f; e = ++f)
				if(c = d[e], c === b) { d.splice(e, 1); break }
			return this }, a }(), a = function(a) {
		function c(a, b) { var e, f, g; if(this.element = a, this.version = c.version, this.defaultOptions.previewTemplate = this.defaultOptions.previewTemplate.replace(/\n*/g, ""), this.clickableElements = [], this.listeners = [], this.files = [], "string" == typeof this.element && (this.element = document.querySelector(this.element)), !this.element || null == this.element.nodeType) throw new Error("Invalid dropzone element."); if(this.element.dropzone) throw new Error("Dropzone already attached."); if(c.instances.push(this), this.element.dropzone = this, e = null != (g = c.optionsForElement(this.element)) ? g : {}, this.options = d({}, this.defaultOptions, e, null != b ? b : {}), this.options.forceFallback || !c.isBrowserSupported()) return this.options.fallback.call(this); if(null == this.options.url && (this.options.url = this.element.getAttribute("action")), !this.options.url) throw new Error("No URL provided."); if(this.options.acceptedFiles && this.options.acceptedMimeTypes) throw new Error("You can't provide both 'acceptedFiles' and 'acceptedMimeTypes'. 'acceptedMimeTypes' is deprecated.");
			this.options.acceptedMimeTypes && (this.options.acceptedFiles = this.options.acceptedMimeTypes, delete this.options.acceptedMimeTypes), this.options.method = this.options.method.toUpperCase(), (f = this.getExistingFallback()) && f.parentNode && f.parentNode.removeChild(f), this.options.previewsContainer !== !1 && (this.previewsContainer = this.options.previewsContainer ? c.getElement(this.options.previewsContainer, "previewsContainer") : this.element), this.options.clickable && (this.clickableElements = this.options.clickable === !0 ? [this.element] : c.getElements(this.options.clickable, "clickable")), this.init() } var d, e; return k(c, a), c.prototype.Emitter = b, c.prototype.events = ["drop", "dragstart", "dragend", "dragenter", "dragover", "dragleave", "addedfile", "addedfiles", "removedfile", "thumbnail", "error", "errormultiple", "processing", "processingmultiple", "uploadprogress", "totaluploadprogress", "sending", "sendingmultiple", "success", "successmultiple", "canceled", "canceledmultiple", "complete", "completemultiple", "reset", "maxfilesexceeded", "maxfilesreached", "queuecomplete"], c.prototype.defaultOptions = { url: null, method: "post", withCredentials: !1, parallelUploads: 2, uploadMultiple: !1, maxFilesize: 256, paramName: "file", createImageThumbnails: !0, maxThumbnailFilesize: 10, thumbnailWidth: 120, thumbnailHeight: 120, filesizeBase: 1e3, maxFiles: null, params: {}, clickable: !0, ignoreHiddenFiles: !0, acceptedFiles: null, acceptedMimeTypes: null, autoProcessQueue: !0, autoQueue: !0, addRemoveLinks: !1, previewsContainer: null, hiddenInputContainer: "body", capture: null, renameFilename: null, dictDefaultMessage: "Drop files here to upload", dictFallbackMessage: "Your browser does not support drag'n'drop file uploads.", dictFallbackText: "Please use the fallback form below to upload your files like in the olden days.", dictFileTooBig: "File is too big ({{filesize}}MiB). Max filesize: {{maxFilesize}}MiB.", dictInvalidFileType: "You can't upload files of this type.", dictResponseError: "Server responded with {{statusCode}} code.", dictCancelUpload: "Cancel upload", dictCancelUploadConfirmation: "Are you sure you want to cancel this upload?", dictRemoveFile: "Remove file", dictRemoveFileConfirmation: null, dictMaxFilesExceeded: "You can not upload any more files.", accept: function(a, b) { return b() }, init: function() { return g }, forceFallback: !1, fallback: function() { var a, b, d, e, f, g; for(this.element.className = "" + this.element.className + " dz-browser-not-supported", g = this.element.getElementsByTagName("div"), e = 0, f = g.length; f > e; e++) a = g[e], /(^| )dz-message($| )/.test(a.className) && (b = a, a.className = "dz-message"); return b || (b = c.createElement('<div class="dz-message"><span></span></div>'), this.element.appendChild(b)), d = b.getElementsByTagName("span")[0], d && (null != d.textContent ? d.textContent = this.options.dictFallbackMessage : null != d.innerText && (d.innerText = this.options.dictFallbackMessage)), this.element.appendChild(this.getFallbackForm()) }, resize: function(a) { var b, c, d; return b = { srcX: 0, srcY: 0, srcWidth: a.width, srcHeight: a.height }, c = a.width / a.height, b.optWidth = this.options.thumbnailWidth, b.optHeight = this.options.thumbnailHeight, null == b.optWidth && null == b.optHeight ? (b.optWidth = b.srcWidth, b.optHeight = b.srcHeight) : null == b.optWidth ? b.optWidth = c * b.optHeight : null == b.optHeight && (b.optHeight = 1 / c * b.optWidth), d = b.optWidth / b.optHeight, a.height < b.optHeight || a.width < b.optWidth ? (b.trgHeight = b.srcHeight, b.trgWidth = b.srcWidth) : c > d ? (b.srcHeight = a.height, b.srcWidth = b.srcHeight * d) : (b.srcWidth = a.width, b.srcHeight = b.srcWidth / d), b.srcX = (a.width - b.srcWidth) / 2, b.srcY = (a.height - b.srcHeight) / 2, b }, drop: function() { return this.element.classList.remove("dz-drag-hover") }, dragstart: g, dragend: function() { return this.element.classList.remove("dz-drag-hover") }, dragenter: function() { return this.element.classList.add("dz-drag-hover") }, dragover: function() { return this.element.classList.add("dz-drag-hover") }, dragleave: function() { return this.element.classList.remove("dz-drag-hover") }, paste: g, reset: function() { return this.element.classList.remove("dz-started") }, addedfile: function(a) { var b, d, e, f, g, h, i, j, k, l, m, n, o; if(this.element === this.previewsContainer && this.element.classList.add("dz-started"), this.previewsContainer) { for(a.previewElement = c.createElement(this.options.previewTemplate.trim()), a.previewTemplate = a.previewElement, this.previewsContainer.appendChild(a.previewElement), l = a.previewElement.querySelectorAll("[data-dz-name]"), f = 0, i = l.length; i > f; f++) b = l[f], b.textContent = this._renameFilename(a.name); for(m = a.previewElement.querySelectorAll("[data-dz-size]"), g = 0, j = m.length; j > g; g++) b = m[g], b.innerHTML = this.filesize(a.size); for(this.options.addRemoveLinks && (a._removeLink = c.createElement('<a class="dz-remove" href="javascript:undefined;" data-dz-remove>' + this.options.dictRemoveFile + "</a>"), a.previewElement.appendChild(a._removeLink)), d = function(b) { return function(d) { return d.preventDefault(), d.stopPropagation(), a.status === c.UPLOADING ? c.confirm(b.options.dictCancelUploadConfirmation, function() { return b.removeFile(a) }) : b.options.dictRemoveFileConfirmation ? c.confirm(b.options.dictRemoveFileConfirmation, function() { return b.removeFile(a) }) : b.removeFile(a) } }(this), n = a.previewElement.querySelectorAll("[data-dz-remove]"), o = [], h = 0, k = n.length; k > h; h++) e = n[h], o.push(e.addEventListener("click", d)); return o } }, removedfile: function(a) { var b; return a.previewElement && null != (b = a.previewElement) && b.parentNode.removeChild(a.previewElement), this._updateMaxFilesReachedClass() }, thumbnail: function(a, b) { var c, d, e, f; if(a.previewElement) { for(a.previewElement.classList.remove("dz-file-preview"), f = a.previewElement.querySelectorAll("[data-dz-thumbnail]"), d = 0, e = f.length; e > d; d++) c = f[d], c.alt = a.name, c.src = b; return setTimeout(function() { return function() { return a.previewElement.classList.add("dz-image-preview") } }(this), 1) } }, error: function(a, b) { var c, d, e, f, g; if(a.previewElement) { for(a.previewElement.classList.add("dz-error"), "String" != typeof b && b.error && (b = b.error), f = a.previewElement.querySelectorAll("[data-dz-errormessage]"), g = [], d = 0, e = f.length; e > d; d++) c = f[d], g.push(c.textContent = b); return g } }, errormultiple: g, processing: function(a) { return a.previewElement && (a.previewElement.classList.add("dz-processing"), a._removeLink) ? a._removeLink.textContent = this.options.dictCancelUpload : void 0 }, processingmultiple: g, uploadprogress: function(a, b) { var c, d, e, f, g; if(a.previewElement) { for(f = a.previewElement.querySelectorAll("[data-dz-uploadprogress]"), g = [], d = 0, e = f.length; e > d; d++) c = f[d], g.push("PROGRESS" === c.nodeName ? c.value = b : c.style.width = "" + b + "%"); return g } }, totaluploadprogress: g, sending: g, sendingmultiple: g, success: function(a) { return a.previewElement ? a.previewElement.classList.add("dz-success") : void 0 }, successmultiple: g, canceled: function(a) { return this.emit("error", a, "Upload canceled.") }, canceledmultiple: g, complete: function(a) { return a._removeLink && (a._removeLink.textContent = this.options.dictRemoveFile), a.previewElement ? a.previewElement.classList.add("dz-complete") : void 0 }, completemultiple: g, maxfilesexceeded: g, maxfilesreached: g, queuecomplete: g, addedfiles: g, previewTemplate: '<div class="dz-preview dz-file-preview">\n  <div class="dz-image"><img data-dz-thumbnail /></div>\n  <div class="dz-details">\n    <div class="dz-size"><span data-dz-size></span></div>\n    <div class="dz-filename"><span data-dz-name></span></div>\n  </div>\n  <div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>\n  <div class="dz-error-message"><span data-dz-errormessage></span></div>\n  <div class="dz-success-mark">\n    <svg width="54px" height="54px" viewBox="0 0 54 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">\n      <title>Check</title>\n      <defs></defs>\n      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">\n        <path d="M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z" id="Oval-2" stroke-opacity="0.198794158" stroke="#747474" fill-opacity="0.816519475" fill="#FFFFFF" sketch:type="MSShapeGroup"></path>\n      </g>\n    </svg>\n  </div>\n  <div class="dz-error-mark">\n    <svg width="54px" height="54px" viewBox="0 0 54 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">\n      <title>Error</title>\n      <defs></defs>\n      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">\n        <g id="Check-+-Oval-2" sketch:type="MSLayerGroup" stroke="#747474" stroke-opacity="0.198794158" fill="#FFFFFF" fill-opacity="0.816519475">\n          <path d="M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z" id="Oval-2" sketch:type="MSShapeGroup"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>' }, d = function() { var a, b, c, d, e, f, g; for(d = arguments[0], c = 2 <= arguments.length ? i.call(arguments, 1) : [], f = 0, g = c.length; g > f; f++) { b = c[f]; for(a in b) e = b[a], d[a] = e } return d }, c.prototype.getAcceptedFiles = function() { var a, b, c, d, e; for(d = this.files, e = [], b = 0, c = d.length; c > b; b++) a = d[b], a.accepted && e.push(a); return e }, c.prototype.getRejectedFiles = function() { var a, b, c, d, e; for(d = this.files, e = [], b = 0, c = d.length; c > b; b++) a = d[b], a.accepted || e.push(a); return e }, c.prototype.getFilesWithStatus = function(a) { var b, c, d, e, f; for(e = this.files, f = [], c = 0, d = e.length; d > c; c++) b = e[c], b.status === a && f.push(b); return f }, c.prototype.getQueuedFiles = function() { return this.getFilesWithStatus(c.QUEUED) }, c.prototype.getUploadingFiles = function() { return this.getFilesWithStatus(c.UPLOADING) }, c.prototype.getAddedFiles = function() { return this.getFilesWithStatus(c.ADDED) }, c.prototype.getActiveFiles = function() { var a, b, d, e, f; for(e = this.files, f = [], b = 0, d = e.length; d > b; b++) a = e[b], (a.status === c.UPLOADING || a.status === c.QUEUED) && f.push(a); return f }, c.prototype.init = function() { var a, b, d, e, f, g, h; for("form" === this.element.tagName && this.element.setAttribute("enctype", "multipart/form-data"), this.element.classList.contains("dropzone") && !this.element.querySelector(".dz-message") && this.element.appendChild(c.createElement('<div class="dz-default dz-message"><span>' + this.options.dictDefaultMessage + "</span></div>")), this.clickableElements.length && (d = function(a) { return function() { return a.hiddenFileInput && a.hiddenFileInput.parentNode.removeChild(a.hiddenFileInput), a.hiddenFileInput = document.createElement("input"), a.hiddenFileInput.setAttribute("type", "file"), (null == a.options.maxFiles || a.options.maxFiles > 1) && a.hiddenFileInput.setAttribute("multiple", "multiple"), a.hiddenFileInput.className = "dz-hidden-input", null != a.options.acceptedFiles && a.hiddenFileInput.setAttribute("accept", a.options.acceptedFiles), null != a.options.capture && a.hiddenFileInput.setAttribute("capture", a.options.capture), a.hiddenFileInput.style.visibility = "hidden", a.hiddenFileInput.style.position = "absolute", a.hiddenFileInput.style.top = "0", a.hiddenFileInput.style.left = "0", a.hiddenFileInput.style.height = "0", a.hiddenFileInput.style.width = "0", document.querySelector(a.options.hiddenInputContainer).appendChild(a.hiddenFileInput), a.hiddenFileInput.addEventListener("change", function() { var b, c, e, f; if(c = a.hiddenFileInput.files, c.length)
								for(e = 0, f = c.length; f > e; e++) b = c[e], a.addFile(b); return a.emit("addedfiles", c), d() }) } }(this))(), this.URL = null != (g = window.URL) ? g : window.webkitURL, h = this.events, e = 0, f = h.length; f > e; e++) a = h[e], this.on(a, this.options[a]); return this.on("uploadprogress", function(a) { return function() { return a.updateTotalUploadProgress() } }(this)), this.on("removedfile", function(a) { return function() { return a.updateTotalUploadProgress() } }(this)), this.on("canceled", function(a) { return function(b) { return a.emit("complete", b) } }(this)), this.on("complete", function(a) { return function() { return 0 === a.getAddedFiles().length && 0 === a.getUploadingFiles().length && 0 === a.getQueuedFiles().length ? setTimeout(function() { return a.emit("queuecomplete") }, 0) : void 0 } }(this)), b = function(a) { return a.stopPropagation(), a.preventDefault ? a.preventDefault() : a.returnValue = !1 }, this.listeners = [{ element: this.element, events: { dragstart: function(a) { return function(b) { return a.emit("dragstart", b) } }(this), dragenter: function(a) { return function(c) { return b(c), a.emit("dragenter", c) } }(this), dragover: function(a) { return function(c) { var d; try { d = c.dataTransfer.effectAllowed } catch(e) {} return c.dataTransfer.dropEffect = "move" === d || "linkMove" === d ? "move" : "copy", b(c), a.emit("dragover", c) } }(this), dragleave: function(a) { return function(b) { return a.emit("dragleave", b) } }(this), drop: function(a) { return function(c) { return b(c), a.drop(c) } }(this), dragend: function(a) { return function(b) { return a.emit("dragend", b) } }(this) } }], this.clickableElements.forEach(function(a) { return function(b) { return a.listeners.push({ element: b, events: { click: function(d) { return(b !== a.element || d.target === a.element || c.elementInside(d.target, a.element.querySelector(".dz-message"))) && a.hiddenFileInput.click(), !0 } } }) } }(this)), this.enable(), this.options.init.call(this) }, c.prototype.destroy = function() { var a; return this.disable(), this.removeAllFiles(!0), (null != (a = this.hiddenFileInput) ? a.parentNode : void 0) && (this.hiddenFileInput.parentNode.removeChild(this.hiddenFileInput), this.hiddenFileInput = null), delete this.element.dropzone, c.instances.splice(c.instances.indexOf(this), 1) }, c.prototype.updateTotalUploadProgress = function() { var a, b, c, d, e, f, g, h; if(d = 0, c = 0, a = this.getActiveFiles(), a.length) { for(h = this.getActiveFiles(), f = 0, g = h.length; g > f; f++) b = h[f], d += b.upload.bytesSent, c += b.upload.total;
				e = 100 * d / c } else e = 100; return this.emit("totaluploadprogress", e, c, d) }, c.prototype._getParamName = function(a) { return "function" == typeof this.options.paramName ? this.options.paramName(a) : "" + this.options.paramName + (this.options.uploadMultiple ? "[" + a + "]" : "") }, c.prototype._renameFilename = function(a) { return "function" != typeof this.options.renameFilename ? a : this.options.renameFilename(a) }, c.prototype.getFallbackForm = function() { var a, b, d, e; return(a = this.getExistingFallback()) ? a : (d = '<div class="dz-fallback">', this.options.dictFallbackText && (d += "<p>" + this.options.dictFallbackText + "</p>"), d += '<input type="file" name="' + this._getParamName(0) + '" ' + (this.options.uploadMultiple ? 'multiple="multiple"' : void 0) + ' /><input type="submit" value="Upload!"></div>', b = c.createElement(d), "FORM" !== this.element.tagName ? (e = c.createElement('<form action="' + this.options.url + '" enctype="multipart/form-data" method="' + this.options.method + '"></form>'), e.appendChild(b)) : (this.element.setAttribute("enctype", "multipart/form-data"), this.element.setAttribute("method", this.options.method)), null != e ? e : b) }, c.prototype.getExistingFallback = function() { var a, b, c, d, e, f; for(b = function(a) { var b, c, d; for(c = 0, d = a.length; d > c; c++)
						if(b = a[c], /(^| )fallback($| )/.test(b.className)) return b }, f = ["div", "form"], d = 0, e = f.length; e > d; d++)
				if(c = f[d], a = b(this.element.getElementsByTagName(c))) return a }, c.prototype.setupEventListeners = function() { var a, b, c, d, e, f, g; for(f = this.listeners, g = [], d = 0, e = f.length; e > d; d++) a = f[d], g.push(function() { var d, e;
				d = a.events, e = []; for(b in d) c = d[b], e.push(a.element.addEventListener(b, c, !1)); return e }()); return g }, c.prototype.removeEventListeners = function() { var a, b, c, d, e, f, g; for(f = this.listeners, g = [], d = 0, e = f.length; e > d; d++) a = f[d], g.push(function() { var d, e;
				d = a.events, e = []; for(b in d) c = d[b], e.push(a.element.removeEventListener(b, c, !1)); return e }()); return g }, c.prototype.disable = function() { var a, b, c, d, e; for(this.clickableElements.forEach(function(a) { return a.classList.remove("dz-clickable") }), this.removeEventListeners(), d = this.files, e = [], b = 0, c = d.length; c > b; b++) a = d[b], e.push(this.cancelUpload(a)); return e }, c.prototype.enable = function() { return this.clickableElements.forEach(function(a) { return a.classList.add("dz-clickable") }), this.setupEventListeners() }, c.prototype.filesize = function(a) { var b, c, d, e, f, g, h, i; if(d = 0, e = "b", a > 0) { for(g = ["TB", "GB", "MB", "KB", "b"], c = h = 0, i = g.length; i > h; c = ++h)
					if(f = g[c], b = Math.pow(this.options.filesizeBase, 4 - c) / 10, a >= b) { d = a / Math.pow(this.options.filesizeBase, 4 - c), e = f; break }
				d = Math.round(10 * d) / 10 } return "<strong>" + d + "</strong> " + e }, c.prototype._updateMaxFilesReachedClass = function() { return null != this.options.maxFiles && this.getAcceptedFiles().length >= this.options.maxFiles ? (this.getAcceptedFiles().length === this.options.maxFiles && this.emit("maxfilesreached", this.files), this.element.classList.add("dz-max-files-reached")) : this.element.classList.remove("dz-max-files-reached") }, c.prototype.drop = function(a) { var b, c;
			a.dataTransfer && (this.emit("drop", a), b = a.dataTransfer.files, this.emit("addedfiles", b), b.length && (c = a.dataTransfer.items, c && c.length && null != c[0].webkitGetAsEntry ? this._addFilesFromItems(c) : this.handleFiles(b))) }, c.prototype.paste = function(a) { var b, c; if(null != (null != a && null != (c = a.clipboardData) ? c.items : void 0)) return this.emit("paste", a), b = a.clipboardData.items, b.length ? this._addFilesFromItems(b) : void 0 }, c.prototype.handleFiles = function(a) { var b, c, d, e; for(e = [], c = 0, d = a.length; d > c; c++) b = a[c], e.push(this.addFile(b)); return e }, c.prototype._addFilesFromItems = function(a) { var b, c, d, e, f; for(f = [], d = 0, e = a.length; e > d; d++) c = a[d], f.push(null != c.webkitGetAsEntry && (b = c.webkitGetAsEntry()) ? b.isFile ? this.addFile(c.getAsFile()) : b.isDirectory ? this._addFilesFromDirectory(b, b.name) : void 0 : null != c.getAsFile ? null == c.kind || "file" === c.kind ? this.addFile(c.getAsFile()) : void 0 : void 0); return f }, c.prototype._addFilesFromDirectory = function(a, b) { var c, d, e; return c = a.createReader(), d = function(a) { return "undefined" != typeof console && null !== console && "function" == typeof console.log ? console.log(a) : void 0 }, (e = function(a) { return function() { return c.readEntries(function(c) { var d, f, g; if(c.length > 0) { for(f = 0, g = c.length; g > f; f++) d = c[f], d.isFile ? d.file(function(c) { return a.options.ignoreHiddenFiles && "." === c.name.substring(0, 1) ? void 0 : (c.fullPath = "" + b + "/" + c.name, a.addFile(c)) }) : d.isDirectory && a._addFilesFromDirectory(d, "" + b + "/" + d.name);
							e() } return null }, d) } }(this))() }, c.prototype.accept = function(a, b) { return a.size > 1024 * this.options.maxFilesize * 1024 ? b(this.options.dictFileTooBig.replace("{{filesize}}", Math.round(a.size / 1024 / 10.24) / 100).replace("{{maxFilesize}}", this.options.maxFilesize)) : c.isValidFile(a, this.options.acceptedFiles) ? null != this.options.maxFiles && this.getAcceptedFiles().length >= this.options.maxFiles ? (b(this.options.dictMaxFilesExceeded.replace("{{maxFiles}}", this.options.maxFiles)), this.emit("maxfilesexceeded", a)) : this.options.accept.call(this, a, b) : b(this.options.dictInvalidFileType) }, c.prototype.addFile = function(a) { return a.upload = { progress: 0, total: a.size, bytesSent: 0 }, this.files.push(a), a.status = c.ADDED, this.emit("addedfile", a), this._enqueueThumbnail(a), this.accept(a, function(b) { return function(c) { return c ? (a.accepted = !1, b._errorProcessing([a], c)) : (a.accepted = !0, b.options.autoQueue && b.enqueueFile(a)), b._updateMaxFilesReachedClass() } }(this)) }, c.prototype.enqueueFiles = function(a) { var b, c, d; for(c = 0, d = a.length; d > c; c++) b = a[c], this.enqueueFile(b); return null }, c.prototype.enqueueFile = function(a) { if(a.status !== c.ADDED || a.accepted !== !0) throw new Error("This file can't be queued because it has already been processed or was rejected."); return a.status = c.QUEUED, this.options.autoProcessQueue ? setTimeout(function(a) { return function() { return a.processQueue() } }(this), 0) : void 0 }, c.prototype._thumbnailQueue = [], c.prototype._processingThumbnail = !1, c.prototype._enqueueThumbnail = function(a) { return this.options.createImageThumbnails && a.type.match(/image.*/) && a.size <= 1024 * this.options.maxThumbnailFilesize * 1024 ? (this._thumbnailQueue.push(a), setTimeout(function(a) { return function() { return a._processThumbnailQueue() } }(this), 0)) : void 0 }, c.prototype._processThumbnailQueue = function() { return this._processingThumbnail || 0 === this._thumbnailQueue.length ? void 0 : (this._processingThumbnail = !0, this.createThumbnail(this._thumbnailQueue.shift(), function(a) { return function() { return a._processingThumbnail = !1, a._processThumbnailQueue() } }(this))) }, c.prototype.removeFile = function(a) { return a.status === c.UPLOADING && this.cancelUpload(a), this.files = h(this.files, a), this.emit("removedfile", a), 0 === this.files.length ? this.emit("reset") : void 0 }, c.prototype.removeAllFiles = function(a) { var b, d, e, f; for(null == a && (a = !1), f = this.files.slice(), d = 0, e = f.length; e > d; d++) b = f[d], (b.status !== c.UPLOADING || a) && this.removeFile(b); return null }, c.prototype.createThumbnail = function(a, b) { var c; return c = new FileReader, c.onload = function(d) { return function() { return "image/svg+xml" === a.type ? (d.emit("thumbnail", a, c.result), void(null != b && b())) : d.createThumbnailFromUrl(a, c.result, b) } }(this), c.readAsDataURL(a) }, c.prototype.createThumbnailFromUrl = function(a, b, c, d) { var e; return e = document.createElement("img"), d && (e.crossOrigin = d), e.onload = function(b) { return function() { var d, g, h, i, j, k, l, m; return a.width = e.width, a.height = e.height, h = b.options.resize.call(b, a), null == h.trgWidth && (h.trgWidth = h.optWidth), null == h.trgHeight && (h.trgHeight = h.optHeight), d = document.createElement("canvas"), g = d.getContext("2d"), d.width = h.trgWidth, d.height = h.trgHeight, f(g, e, null != (j = h.srcX) ? j : 0, null != (k = h.srcY) ? k : 0, h.srcWidth, h.srcHeight, null != (l = h.trgX) ? l : 0, null != (m = h.trgY) ? m : 0, h.trgWidth, h.trgHeight), i = d.toDataURL("image/png"), b.emit("thumbnail", a, i), null != c ? c() : void 0 } }(this), null != c && (e.onerror = c), e.src = b }, c.prototype.processQueue = function() { var a, b, c, d; if(b = this.options.parallelUploads, c = this.getUploadingFiles().length, a = c, !(c >= b) && (d = this.getQueuedFiles(), d.length > 0)) { if(this.options.uploadMultiple) return this.processFiles(d.slice(0, b - c)); for(; b > a;) { if(!d.length) return;
					this.processFile(d.shift()), a++ } } }, c.prototype.processFile = function(a) { return this.processFiles([a]) }, c.prototype.processFiles = function(a) { var b, d, e; for(d = 0, e = a.length; e > d; d++) b = a[d], b.processing = !0, b.status = c.UPLOADING, this.emit("processing", b); return this.options.uploadMultiple && this.emit("processingmultiple", a), this.uploadFiles(a) }, c.prototype._getFilesWithXhr = function(a) { var b, c; return c = function() { var c, d, e, f; for(e = this.files, f = [], c = 0, d = e.length; d > c; c++) b = e[c], b.xhr === a && f.push(b); return f }.call(this) }, c.prototype.cancelUpload = function(a) { var b, d, e, f, g, h, i; if(a.status === c.UPLOADING) { for(d = this._getFilesWithXhr(a.xhr), e = 0, g = d.length; g > e; e++) b = d[e], b.status = c.CANCELED; for(a.xhr.abort(), f = 0, h = d.length; h > f; f++) b = d[f], this.emit("canceled", b);
				this.options.uploadMultiple && this.emit("canceledmultiple", d) } else((i = a.status) === c.ADDED || i === c.QUEUED) && (a.status = c.CANCELED, this.emit("canceled", a), this.options.uploadMultiple && this.emit("canceledmultiple", [a])); return this.options.autoProcessQueue ? this.processQueue() : void 0 }, e = function() { var a, b; return b = arguments[0], a = 2 <= arguments.length ? i.call(arguments, 1) : [], "function" == typeof b ? b.apply(this, a) : b }, c.prototype.uploadFile = function(a) { return this.uploadFiles([a]) }, c.prototype.uploadFiles = function(a) { var b, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L; for(w = new XMLHttpRequest, x = 0, B = a.length; B > x; x++) b = a[x], b.xhr = w;
			p = e(this.options.method, a), u = e(this.options.url, a), w.open(p, u, !0), w.withCredentials = !!this.options.withCredentials, s = null, g = function(c) { return function() { var d, e, f; for(f = [], d = 0, e = a.length; e > d; d++) b = a[d], f.push(c._errorProcessing(a, s || c.options.dictResponseError.replace("{{statusCode}}", w.status), w)); return f } }(this), t = function(c) { return function(d) { var e, f, g, h, i, j, k, l, m; if(null != d)
						for(f = 100 * d.loaded / d.total, g = 0, j = a.length; j > g; g++) b = a[g], b.upload = { progress: f, total: d.total, bytesSent: d.loaded };
					else { for(e = !0, f = 100, h = 0, k = a.length; k > h; h++) b = a[h], (100 !== b.upload.progress || b.upload.bytesSent !== b.upload.total) && (e = !1), b.upload.progress = f, b.upload.bytesSent = b.upload.total; if(e) return } for(m = [], i = 0, l = a.length; l > i; i++) b = a[i], m.push(c.emit("uploadprogress", b, f, b.upload.bytesSent)); return m } }(this), w.onload = function(b) { return function(d) { var e; if(a[0].status !== c.CANCELED && 4 === w.readyState) { if(s = w.responseText, w.getResponseHeader("content-type") && ~w.getResponseHeader("content-type").indexOf("application/json")) try { s = JSON.parse(s) } catch(f) { d = f, s = "Invalid JSON response from server." }
						return t(), 200 <= (e = w.status) && 300 > e ? b._finished(a, s, d) : g() } } }(this), w.onerror = function() { return function() { return a[0].status !== c.CANCELED ? g() : void 0 } }(this), r = null != (G = w.upload) ? G : w, r.onprogress = t, j = { Accept: "application/json", "Cache-Control": "no-cache", "X-Requested-With": "XMLHttpRequest" }, this.options.headers && d(j, this.options.headers); for(h in j) i = j[h], i && w.setRequestHeader(h, i); if(f = new FormData, this.options.params) { H = this.options.params; for(o in H) v = H[o], f.append(o, v) } for(y = 0, C = a.length; C > y; y++) b = a[y], this.emit("sending", b, w, f); if(this.options.uploadMultiple && this.emit("sendingmultiple", a, w, f), "FORM" === this.element.tagName)
				for(I = this.element.querySelectorAll("input, textarea, select, button"), z = 0, D = I.length; D > z; z++)
					if(l = I[z], m = l.getAttribute("name"), n = l.getAttribute("type"), "SELECT" === l.tagName && l.hasAttribute("multiple"))
						for(J = l.options, A = 0, E = J.length; E > A; A++) q = J[A], q.selected && f.append(m, q.value);
					else(!n || "checkbox" !== (K = n.toLowerCase()) && "radio" !== K || l.checked) && f.append(m, l.value); for(k = F = 0, L = a.length - 1; L >= 0 ? L >= F : F >= L; k = L >= 0 ? ++F : --F) f.append(this._getParamName(k), a[k], this._renameFilename(a[k].name)); return this.submitRequest(w, f, a) }, c.prototype.submitRequest = function(a, b) { return a.send(b) }, c.prototype._finished = function(a, b, d) { var e, f, g; for(f = 0, g = a.length; g > f; f++) e = a[f], e.status = c.SUCCESS, this.emit("success", e, b, d), this.emit("complete", e); return this.options.uploadMultiple && (this.emit("successmultiple", a, b, d), this.emit("completemultiple", a)), this.options.autoProcessQueue ? this.processQueue() : void 0 }, c.prototype._errorProcessing = function(a, b, d) { var e, f, g; for(f = 0, g = a.length; g > f; f++) e = a[f], e.status = c.ERROR, this.emit("error", e, b, d), this.emit("complete", e); return this.options.uploadMultiple && (this.emit("errormultiple", a, b, d), this.emit("completemultiple", a)), this.options.autoProcessQueue ? this.processQueue() : void 0 }, c }(b), a.version = "4.3.0", a.options = {}, a.optionsForElement = function(b) { return b.getAttribute("id") ? a.options[c(b.getAttribute("id"))] : void 0 }, a.instances = [], a.forElement = function(a) { if("string" == typeof a && (a = document.querySelector(a)), null == (null != a ? a.dropzone : void 0)) throw new Error("No Dropzone found for given element. This is probably because you're trying to access it before Dropzone had the time to initialize. Use the `init` option to setup any additional observers on your Dropzone."); return a.dropzone }, a.autoDiscover = !0, a.discover = function() { var b, c, d, e, f, g; for(document.querySelectorAll ? d = document.querySelectorAll(".dropzone") : (d = [], b = function(a) { var b, c, e, f; for(f = [], c = 0, e = a.length; e > c; c++) b = a[c], f.push(/(^| )dropzone($| )/.test(b.className) ? d.push(b) : void 0); return f }, b(document.getElementsByTagName("div")), b(document.getElementsByTagName("form"))), g = [], e = 0, f = d.length; f > e; e++) c = d[e], g.push(a.optionsForElement(c) !== !1 ? new a(c) : void 0); return g }, a.blacklistedBrowsers = [/opera.*Macintosh.*version\/12/i], a.isBrowserSupported = function() { var b, c, d, e, f; if(b = !0, window.File && window.FileReader && window.FileList && window.Blob && window.FormData && document.querySelector)
			if("classList" in document.createElement("a"))
				for(f = a.blacklistedBrowsers, d = 0, e = f.length; e > d; d++) c = f[d], c.test(navigator.userAgent) && (b = !1);
			else b = !1;
		else b = !1; return b }, h = function(a, b) { var c, d, e, f; for(f = [], d = 0, e = a.length; e > d; d++) c = a[d], c !== b && f.push(c); return f }, c = function(a) { return a.replace(/[\-_](\w)/g, function(a) { return a.charAt(1).toUpperCase() }) }, a.createElement = function(a) { var b; return b = document.createElement("div"), b.innerHTML = a, b.childNodes[0] }, a.elementInside = function(a, b) { if(a === b) return !0; for(; a = a.parentNode;)
			if(a === b) return !0; return !1 }, a.getElement = function(a, b) { var c; if("string" == typeof a ? c = document.querySelector(a) : null != a.nodeType && (c = a), null == c) throw new Error("Invalid `" + b + "` option provided. Please provide a CSS selector or a plain HTML element."); return c }, a.getElements = function(a, b) { var c, d, e, f, g, h, i, j; if(a instanceof Array) { e = []; try { for(f = 0, h = a.length; h > f; f++) d = a[f], e.push(this.getElement(d, b)) } catch(k) { c = k, e = null } } else if("string" == typeof a)
			for(e = [], j = document.querySelectorAll(a), g = 0, i = j.length; i > g; g++) d = j[g], e.push(d);
		else null != a.nodeType && (e = [a]); if(null == e || !e.length) throw new Error("Invalid `" + b + "` option provided. Please provide a CSS selector, a plain HTML element or a list of those."); return e }, a.confirm = function(a, b, c) { return window.confirm(a) ? b() : null != c ? c() : void 0 }, a.isValidFile = function(a, b) {
		var c, d, e, f, g;
		if(!b) return !0;
		for(b = b.split(","), d = a.type, c = d.replace(/\/.*$/, ""), f = 0, g = b.length; g > f; f++)
			if(e = b[f], e = e.trim(), "." === e.charAt(0)) { if(-1 !== a.name.toLowerCase().indexOf(e.toLowerCase(), a.name.length - e.length)) return !0 } else if(/\/\*$/.test(e)) {
			if(c === e.replace(/\/.*$/, "")) return !0
		} else if(d === e) return !0;
		return !1
	}, "undefined" != typeof jQuery && null !== jQuery && (jQuery.fn.dropzone = function(b) { return this.each(function() { return new a(this, b) }) }), "undefined" != typeof module && null !== module ? module.exports = a : window.Dropzone = a, a.ADDED = "added", a.QUEUED = "queued", a.ACCEPTED = a.QUEUED, a.UPLOADING = "uploading", a.PROCESSING = a.UPLOADING, a.CANCELED = "canceled", a.ERROR = "error", a.SUCCESS = "success", e = function(a) { var b, c, d, e, f, g, h, i, j, k; for(h = a.naturalWidth, g = a.naturalHeight, c = document.createElement("canvas"), c.width = 1, c.height = g, d = c.getContext("2d"), d.drawImage(a, 0, 0), e = d.getImageData(0, 0, 1, g).data, k = 0, f = g, i = g; i > k;) b = e[4 * (i - 1) + 3], 0 === b ? f = i : k = i, i = f + k >> 1; return j = i / g, 0 === j ? 1 : j }, f = function(a, b, c, d, f, g, h, i, j, k) { var l; return l = e(b), a.drawImage(b, c, d, f, g, h, i, j, k / l) }, d = function(a, b) { var c, d, e, f, g, h, i, j, k; if(e = !1, k = !0, d = a.document, j = d.documentElement, c = d.addEventListener ? "addEventListener" : "attachEvent", i = d.addEventListener ? "removeEventListener" : "detachEvent", h = d.addEventListener ? "" : "on", f = function(c) { return "readystatechange" !== c.type || "complete" === d.readyState ? (("load" === c.type ? a : d)[i](h + c.type, f, !1), !e && (e = !0) ? b.call(a, c.type || c) : void 0) : void 0 }, g = function() { var a; try { j.doScroll("left") } catch(b) { return a = b, void setTimeout(g, 50) } return f("poll") }, "complete" !== d.readyState) { if(d.createEventObject && j.doScroll) { try { k = !a.frameElement } catch(l) {} k && g() } return d[c](h + "DOMContentLoaded", f, !1), d[c](h + "readystatechange", f, !1), a[c](h + "load", f, !1) } }, a._autoDiscoverFunction = function() { return a.autoDiscover ? a.discover() : void 0 }, d(window, a._autoDiscoverFunction)
}).call(this);

/*!
 * Datepicker for Bootstrap v1.6.4 (https://github.com/eternicode/bootstrap-datepicker)
 *
 * Copyright 2012 Stefan Petre
 * Improvements by Andrew Rowls
 * Licensed under the Apache License v2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 */
! function(a) { "function" == typeof define && define.amd ? define(["jquery"], a) : a("object" == typeof exports ? require("jquery") : jQuery) }(function(a, b) {
	function c() { return new Date(Date.UTC.apply(Date, arguments)) }

	function d() { var a = new Date; return c(a.getFullYear(), a.getMonth(), a.getDate()) }

	function e(a, b) { return a.getUTCFullYear() === b.getUTCFullYear() && a.getUTCMonth() === b.getUTCMonth() && a.getUTCDate() === b.getUTCDate() }

	function f(a) { return function() { return this[a].apply(this, arguments) } }

	function g(a) { return a && !isNaN(a.getTime()) }

	function h(b, c) {
		function d(a, b) { return b.toLowerCase() } var e, f = a(b).data(),
			g = {},
			h = new RegExp("^" + c.toLowerCase() + "([A-Z])");
		c = new RegExp("^" + c.toLowerCase()); for(var i in f) c.test(i) && (e = i.replace(h, d), g[e] = f[i]); return g }

	function i(b) { var c = {}; if(q[b] || (b = b.split("-")[0], q[b])) { var d = q[b]; return a.each(p, function(a, b) { b in d && (c[b] = d[b]) }), c } }
	var j = function() { var b = { get: function(a) { return this.slice(a)[0] }, contains: function(a) { for(var b = a && a.valueOf(), c = 0, d = this.length; d > c; c++)
						if(this[c].valueOf() === b) return c; return -1 }, remove: function(a) { this.splice(a, 1) }, replace: function(b) { b && (a.isArray(b) || (b = [b]), this.clear(), this.push.apply(this, b)) }, clear: function() { this.length = 0 }, copy: function() { var a = new j; return a.replace(this), a } }; return function() { var c = []; return c.push.apply(c, arguments), a.extend(c, b), c } }(),
		k = function(b, c) { a(b).data("datepicker", this), this._process_options(c), this.dates = new j, this.viewDate = this.o.defaultViewDate, this.focusDate = null, this.element = a(b), this.isInput = this.element.is("input"), this.inputField = this.isInput ? this.element : this.element.find("input"), this.component = this.element.hasClass("date") ? this.element.find(".add-on, .input-group-addon, .btn") : !1, this.hasInput = this.component && this.inputField.length, this.component && 0 === this.component.length && (this.component = !1), this.isInline = !this.component && this.element.is("div"), this.picker = a(r.template), this._check_template(this.o.templates.leftArrow) && this.picker.find(".prev").html(this.o.templates.leftArrow), this._check_template(this.o.templates.rightArrow) && this.picker.find(".next").html(this.o.templates.rightArrow), this._buildEvents(), this._attachEvents(), this.isInline ? this.picker.addClass("datepicker-inline").appendTo(this.element) : this.picker.addClass("datepicker-dropdown dropdown-menu"), this.o.rtl && this.picker.addClass("datepicker-rtl"), this.viewMode = this.o.startView, this.o.calendarWeeks && this.picker.find("thead .datepicker-title, tfoot .today, tfoot .clear").attr("colspan", function(a, b) { return parseInt(b) + 1 }), this._allow_update = !1, this.setStartDate(this._o.startDate), this.setEndDate(this._o.endDate), this.setDaysOfWeekDisabled(this.o.daysOfWeekDisabled), this.setDaysOfWeekHighlighted(this.o.daysOfWeekHighlighted), this.setDatesDisabled(this.o.datesDisabled), this.fillDow(), this.fillMonths(), this._allow_update = !0, this.update(), this.showMode(), this.isInline && this.show() };
	k.prototype = { constructor: k, _resolveViewName: function(a, c) { return 0 === a || "days" === a || "month" === a ? 0 : 1 === a || "months" === a || "year" === a ? 1 : 2 === a || "years" === a || "decade" === a ? 2 : 3 === a || "decades" === a || "century" === a ? 3 : 4 === a || "centuries" === a || "millennium" === a ? 4 : c === b ? !1 : c }, _check_template: function(c) { try { if(c === b || "" === c) return !1; if((c.match(/[<>]/g) || []).length <= 0) return !0; var d = a(c); return d.length > 0 } catch(e) { return !1 } }, _process_options: function(b) { this._o = a.extend({}, this._o, b); var e = this.o = a.extend({}, this._o),
				f = e.language;
			q[f] || (f = f.split("-")[0], q[f] || (f = o.language)), e.language = f, e.startView = this._resolveViewName(e.startView, 0), e.minViewMode = this._resolveViewName(e.minViewMode, 0), e.maxViewMode = this._resolveViewName(e.maxViewMode, 4), e.startView = Math.min(e.startView, e.maxViewMode), e.startView = Math.max(e.startView, e.minViewMode), e.multidate !== !0 && (e.multidate = Number(e.multidate) || !1, e.multidate !== !1 && (e.multidate = Math.max(0, e.multidate))), e.multidateSeparator = String(e.multidateSeparator), e.weekStart %= 7, e.weekEnd = (e.weekStart + 6) % 7; var g = r.parseFormat(e.format);
			e.startDate !== -(1 / 0) && (e.startDate ? e.startDate instanceof Date ? e.startDate = this._local_to_utc(this._zero_time(e.startDate)) : e.startDate = r.parseDate(e.startDate, g, e.language, e.assumeNearbyYear) : e.startDate = -(1 / 0)), e.endDate !== 1 / 0 && (e.endDate ? e.endDate instanceof Date ? e.endDate = this._local_to_utc(this._zero_time(e.endDate)) : e.endDate = r.parseDate(e.endDate, g, e.language, e.assumeNearbyYear) : e.endDate = 1 / 0), e.daysOfWeekDisabled = e.daysOfWeekDisabled || [], a.isArray(e.daysOfWeekDisabled) || (e.daysOfWeekDisabled = e.daysOfWeekDisabled.split(/[,\s]*/)), e.daysOfWeekDisabled = a.map(e.daysOfWeekDisabled, function(a) { return parseInt(a, 10) }), e.daysOfWeekHighlighted = e.daysOfWeekHighlighted || [], a.isArray(e.daysOfWeekHighlighted) || (e.daysOfWeekHighlighted = e.daysOfWeekHighlighted.split(/[,\s]*/)), e.daysOfWeekHighlighted = a.map(e.daysOfWeekHighlighted, function(a) { return parseInt(a, 10) }), e.datesDisabled = e.datesDisabled || [], a.isArray(e.datesDisabled) || (e.datesDisabled = [e.datesDisabled]), e.datesDisabled = a.map(e.datesDisabled, function(a) { return r.parseDate(a, g, e.language, e.assumeNearbyYear) }); var h = String(e.orientation).toLowerCase().split(/\s+/g),
				i = e.orientation.toLowerCase(); if(h = a.grep(h, function(a) { return /^auto|left|right|top|bottom$/.test(a) }), e.orientation = { x: "auto", y: "auto" }, i && "auto" !== i)
				if(1 === h.length) switch(h[0]) {
					case "top":
					case "bottom":
						e.orientation.y = h[0]; break;
					case "left":
					case "right":
						e.orientation.x = h[0] } else i = a.grep(h, function(a) { return /^left|right$/.test(a) }), e.orientation.x = i[0] || "auto", i = a.grep(h, function(a) { return /^top|bottom$/.test(a) }), e.orientation.y = i[0] || "auto";
				else; if(e.defaultViewDate) { var j = e.defaultViewDate.year || (new Date).getFullYear(),
					k = e.defaultViewDate.month || 0,
					l = e.defaultViewDate.day || 1;
				e.defaultViewDate = c(j, k, l) } else e.defaultViewDate = d() }, _events: [], _secondaryEvents: [], _applyEvents: function(a) { for(var c, d, e, f = 0; f < a.length; f++) c = a[f][0], 2 === a[f].length ? (d = b, e = a[f][1]) : 3 === a[f].length && (d = a[f][1], e = a[f][2]), c.on(e, d) }, _unapplyEvents: function(a) { for(var c, d, e, f = 0; f < a.length; f++) c = a[f][0], 2 === a[f].length ? (e = b, d = a[f][1]) : 3 === a[f].length && (e = a[f][1], d = a[f][2]), c.off(d, e) }, _buildEvents: function() { var b = { keyup: a.proxy(function(b) {-1 === a.inArray(b.keyCode, [27, 37, 39, 38, 40, 32, 13, 9]) && this.update() }, this), keydown: a.proxy(this.keydown, this), paste: a.proxy(this.paste, this) };
			this.o.showOnFocus === !0 && (b.focus = a.proxy(this.show, this)), this.isInput ? this._events = [
				[this.element, b]
			] : this.component && this.hasInput ? this._events = [
				[this.inputField, b],
				[this.component, { click: a.proxy(this.show, this) }]
			] : this._events = [
				[this.element, { click: a.proxy(this.show, this), keydown: a.proxy(this.keydown, this) }]
			], this._events.push([this.element, "*", { blur: a.proxy(function(a) { this._focused_from = a.target }, this) }], [this.element, { blur: a.proxy(function(a) { this._focused_from = a.target }, this) }]), this.o.immediateUpdates && this._events.push([this.element, { "changeYear changeMonth": a.proxy(function(a) { this.update(a.date) }, this) }]), this._secondaryEvents = [
				[this.picker, { click: a.proxy(this.click, this) }],
				[a(window), { resize: a.proxy(this.place, this) }],
				[a(document), { mousedown: a.proxy(function(a) { this.element.is(a.target) || this.element.find(a.target).length || this.picker.is(a.target) || this.picker.find(a.target).length || this.isInline || this.hide() }, this) }]
			] }, _attachEvents: function() { this._detachEvents(), this._applyEvents(this._events) }, _detachEvents: function() { this._unapplyEvents(this._events) }, _attachSecondaryEvents: function() { this._detachSecondaryEvents(), this._applyEvents(this._secondaryEvents) }, _detachSecondaryEvents: function() { this._unapplyEvents(this._secondaryEvents) }, _trigger: function(b, c) { var d = c || this.dates.get(-1),
				e = this._utc_to_local(d);
			this.element.trigger({ type: b, date: e, dates: a.map(this.dates, this._utc_to_local), format: a.proxy(function(a, b) { 0 === arguments.length ? (a = this.dates.length - 1, b = this.o.format) : "string" == typeof a && (b = a, a = this.dates.length - 1), b = b || this.o.format; var c = this.dates.get(a); return r.formatDate(c, b, this.o.language) }, this) }) }, show: function() { return this.inputField.prop("disabled") || this.inputField.prop("readonly") && this.o.enableOnReadonly === !1 ? void 0 : (this.isInline || this.picker.appendTo(this.o.container), this.place(), this.picker.show(), this._attachSecondaryEvents(), this._trigger("show"), (window.navigator.msMaxTouchPoints || "ontouchstart" in document) && this.o.disableTouchKeyboard && a(this.element).blur(), this) }, hide: function() { return this.isInline || !this.picker.is(":visible") ? this : (this.focusDate = null, this.picker.hide().detach(), this._detachSecondaryEvents(), this.viewMode = this.o.startView, this.showMode(), this.o.forceParse && this.inputField.val() && this.setValue(), this._trigger("hide"), this) }, destroy: function() { return this.hide(), this._detachEvents(), this._detachSecondaryEvents(), this.picker.remove(), delete this.element.data().datepicker, this.isInput || delete this.element.data().date, this }, paste: function(b) { var c; if(b.originalEvent.clipboardData && b.originalEvent.clipboardData.types && -1 !== a.inArray("text/plain", b.originalEvent.clipboardData.types)) c = b.originalEvent.clipboardData.getData("text/plain");
			else { if(!window.clipboardData) return;
				c = window.clipboardData.getData("Text") } this.setDate(c), this.update(), b.preventDefault() }, _utc_to_local: function(a) { return a && new Date(a.getTime() + 6e4 * a.getTimezoneOffset()) }, _local_to_utc: function(a) { return a && new Date(a.getTime() - 6e4 * a.getTimezoneOffset()) }, _zero_time: function(a) { return a && new Date(a.getFullYear(), a.getMonth(), a.getDate()) }, _zero_utc_time: function(a) { return a && new Date(Date.UTC(a.getUTCFullYear(), a.getUTCMonth(), a.getUTCDate())) }, getDates: function() { return a.map(this.dates, this._utc_to_local) }, getUTCDates: function() { return a.map(this.dates, function(a) { return new Date(a) }) }, getDate: function() { return this._utc_to_local(this.getUTCDate()) }, getUTCDate: function() { var a = this.dates.get(-1); return "undefined" != typeof a ? new Date(a) : null }, clearDates: function() { this.inputField && this.inputField.val(""), this.update(), this._trigger("changeDate"), this.o.autoclose && this.hide() }, setDates: function() { var b = a.isArray(arguments[0]) ? arguments[0] : arguments; return this.update.apply(this, b), this._trigger("changeDate"), this.setValue(), this }, setUTCDates: function() { var b = a.isArray(arguments[0]) ? arguments[0] : arguments; return this.update.apply(this, a.map(b, this._utc_to_local)), this._trigger("changeDate"), this.setValue(), this }, setDate: f("setDates"), setUTCDate: f("setUTCDates"), remove: f("destroy"), setValue: function() { var a = this.getFormattedDate(); return this.inputField.val(a), this }, getFormattedDate: function(c) { c === b && (c = this.o.format); var d = this.o.language; return a.map(this.dates, function(a) { return r.formatDate(a, c, d) }).join(this.o.multidateSeparator) }, getStartDate: function() { return this.o.startDate }, setStartDate: function(a) { return this._process_options({ startDate: a }), this.update(), this.updateNavArrows(), this }, getEndDate: function() { return this.o.endDate }, setEndDate: function(a) { return this._process_options({ endDate: a }), this.update(), this.updateNavArrows(), this }, setDaysOfWeekDisabled: function(a) { return this._process_options({ daysOfWeekDisabled: a }), this.update(), this.updateNavArrows(), this }, setDaysOfWeekHighlighted: function(a) { return this._process_options({ daysOfWeekHighlighted: a }), this.update(), this }, setDatesDisabled: function(a) { this._process_options({ datesDisabled: a }), this.update(), this.updateNavArrows() }, place: function() { if(this.isInline) return this; var b = this.picker.outerWidth(),
				c = this.picker.outerHeight(),
				d = 10,
				e = a(this.o.container),
				f = e.width(),
				g = "body" === this.o.container ? a(document).scrollTop() : e.scrollTop(),
				h = e.offset(),
				i = [];
			this.element.parents().each(function() { var b = a(this).css("z-index"); "auto" !== b && 0 !== b && i.push(parseInt(b)) }); var j = Math.max.apply(Math, i) + this.o.zIndexOffset,
				k = this.component ? this.component.parent().offset() : this.element.offset(),
				l = this.component ? this.component.outerHeight(!0) : this.element.outerHeight(!1),
				m = this.component ? this.component.outerWidth(!0) : this.element.outerWidth(!1),
				n = k.left - h.left,
				o = k.top - h.top; "body" !== this.o.container && (o += g), this.picker.removeClass("datepicker-orient-top datepicker-orient-bottom datepicker-orient-right datepicker-orient-left"), "auto" !== this.o.orientation.x ? (this.picker.addClass("datepicker-orient-" + this.o.orientation.x), "right" === this.o.orientation.x && (n -= b - m)) : k.left < 0 ? (this.picker.addClass("datepicker-orient-left"), n -= k.left - d) : n + b > f ? (this.picker.addClass("datepicker-orient-right"), n += m - b) : this.picker.addClass("datepicker-orient-left"); var p, q = this.o.orientation.y; if("auto" === q && (p = -g + o - c, q = 0 > p ? "bottom" : "top"), this.picker.addClass("datepicker-orient-" + q), "top" === q ? o -= c + parseInt(this.picker.css("padding-top")) : o += l, this.o.rtl) { var r = f - (n + m);
				this.picker.css({ top: o, right: r, zIndex: j }) } else this.picker.css({ top: o, left: n, zIndex: j }); return this }, _allow_update: !0, update: function() { if(!this._allow_update) return this; var b = this.dates.copy(),
				c = [],
				d = !1; return arguments.length ? (a.each(arguments, a.proxy(function(a, b) { b instanceof Date && (b = this._local_to_utc(b)), c.push(b) }, this)), d = !0) : (c = this.isInput ? this.element.val() : this.element.data("date") || this.inputField.val(), c = c && this.o.multidate ? c.split(this.o.multidateSeparator) : [c], delete this.element.data().date), c = a.map(c, a.proxy(function(a) { return r.parseDate(a, this.o.format, this.o.language, this.o.assumeNearbyYear) }, this)), c = a.grep(c, a.proxy(function(a) { return !this.dateWithinRange(a) || !a }, this), !0), this.dates.replace(c), this.dates.length ? this.viewDate = new Date(this.dates.get(-1)) : this.viewDate < this.o.startDate ? this.viewDate = new Date(this.o.startDate) : this.viewDate > this.o.endDate ? this.viewDate = new Date(this.o.endDate) : this.viewDate = this.o.defaultViewDate, d ? this.setValue() : c.length && String(b) !== String(this.dates) && this._trigger("changeDate"), !this.dates.length && b.length && this._trigger("clearDate"), this.fill(), this.element.change(), this }, fillDow: function() { var b = this.o.weekStart,
				c = "<tr>"; for(this.o.calendarWeeks && (this.picker.find(".datepicker-days .datepicker-switch").attr("colspan", function(a, b) { return parseInt(b) + 1 }), c += '<th class="cw">&#160;</th>'); b < this.o.weekStart + 7;) c += '<th class="dow', a.inArray(b, this.o.daysOfWeekDisabled) > -1 && (c += " disabled"), c += '">' + q[this.o.language].daysMin[b++ % 7] + "</th>";
			c += "</tr>", this.picker.find(".datepicker-days thead").append(c) }, fillMonths: function() { for(var a = this._utc_to_local(this.viewDate), b = "", c = 0; 12 > c;) { var d = a && a.getMonth() === c ? " focused" : "";
				b += '<span class="month' + d + '">' + q[this.o.language].monthsShort[c++] + "</span>" } this.picker.find(".datepicker-months td").html(b) }, setRange: function(b) { b && b.length ? this.range = a.map(b, function(a) { return a.valueOf() }) : delete this.range, this.fill() }, getClassNames: function(b) { var c = [],
				d = this.viewDate.getUTCFullYear(),
				e = this.viewDate.getUTCMonth(),
				f = new Date; return b.getUTCFullYear() < d || b.getUTCFullYear() === d && b.getUTCMonth() < e ? c.push("old") : (b.getUTCFullYear() > d || b.getUTCFullYear() === d && b.getUTCMonth() > e) && c.push("new"), this.focusDate && b.valueOf() === this.focusDate.valueOf() && c.push("focused"), this.o.todayHighlight && b.getUTCFullYear() === f.getFullYear() && b.getUTCMonth() === f.getMonth() && b.getUTCDate() === f.getDate() && c.push("today"), -1 !== this.dates.contains(b) && c.push("active"), this.dateWithinRange(b) || c.push("disabled"), this.dateIsDisabled(b) && c.push("disabled", "disabled-date"), -1 !== a.inArray(b.getUTCDay(), this.o.daysOfWeekHighlighted) && c.push("highlighted"), this.range && (b > this.range[0] && b < this.range[this.range.length - 1] && c.push("range"), -1 !== a.inArray(b.valueOf(), this.range) && c.push("selected"), b.valueOf() === this.range[0] && c.push("range-start"), b.valueOf() === this.range[this.range.length - 1] && c.push("range-end")), c }, _fill_yearsView: function(c, d, e, f, g, h, i, j) { var k, l, m, n, o, p, q, r, s, t, u; for(k = "", l = this.picker.find(c), m = parseInt(g / e, 10) * e, o = parseInt(h / f, 10) * f, p = parseInt(i / f, 10) * f, n = a.map(this.dates, function(a) { return parseInt(a.getUTCFullYear() / f, 10) * f }), l.find(".datepicker-switch").text(m + "-" + (m + 9 * f)), q = m - f, r = -1; 11 > r; r += 1) s = [d], t = null, -1 === r ? s.push("old") : 10 === r && s.push("new"), -1 !== a.inArray(q, n) && s.push("active"), (o > q || q > p) && s.push("disabled"), q === this.viewDate.getFullYear() && s.push("focused"), j !== a.noop && (u = j(new Date(q, 0, 1)), u === b ? u = {} : "boolean" == typeof u ? u = { enabled: u } : "string" == typeof u && (u = { classes: u }), u.enabled === !1 && s.push("disabled"), u.classes && (s = s.concat(u.classes.split(/\s+/))), u.tooltip && (t = u.tooltip)), k += '<span class="' + s.join(" ") + '"' + (t ? ' title="' + t + '"' : "") + ">" + q + "</span>", q += f;
			l.find("td").html(k) }, fill: function() { var d, e, f = new Date(this.viewDate),
				g = f.getUTCFullYear(),
				h = f.getUTCMonth(),
				i = this.o.startDate !== -(1 / 0) ? this.o.startDate.getUTCFullYear() : -(1 / 0),
				j = this.o.startDate !== -(1 / 0) ? this.o.startDate.getUTCMonth() : -(1 / 0),
				k = this.o.endDate !== 1 / 0 ? this.o.endDate.getUTCFullYear() : 1 / 0,
				l = this.o.endDate !== 1 / 0 ? this.o.endDate.getUTCMonth() : 1 / 0,
				m = q[this.o.language].today || q.en.today || "",
				n = q[this.o.language].clear || q.en.clear || "",
				o = q[this.o.language].titleFormat || q.en.titleFormat; if(!isNaN(g) && !isNaN(h)) { this.picker.find(".datepicker-days .datepicker-switch").text(r.formatDate(f, o, this.o.language)), this.picker.find("tfoot .today").text(m).toggle(this.o.todayBtn !== !1), this.picker.find("tfoot .clear").text(n).toggle(this.o.clearBtn !== !1), this.picker.find("thead .datepicker-title").text(this.o.title).toggle("" !== this.o.title), this.updateNavArrows(), this.fillMonths(); var p = c(g, h - 1, 28),
					s = r.getDaysInMonth(p.getUTCFullYear(), p.getUTCMonth());
				p.setUTCDate(s), p.setUTCDate(s - (p.getUTCDay() - this.o.weekStart + 7) % 7); var t = new Date(p);
				p.getUTCFullYear() < 100 && t.setUTCFullYear(p.getUTCFullYear()), t.setUTCDate(t.getUTCDate() + 42), t = t.valueOf(); for(var u, v = []; p.valueOf() < t;) { if(p.getUTCDay() === this.o.weekStart && (v.push("<tr>"), this.o.calendarWeeks)) { var w = new Date(+p + (this.o.weekStart - p.getUTCDay() - 7) % 7 * 864e5),
							x = new Date(Number(w) + (11 - w.getUTCDay()) % 7 * 864e5),
							y = new Date(Number(y = c(x.getUTCFullYear(), 0, 1)) + (11 - y.getUTCDay()) % 7 * 864e5),
							z = (x - y) / 864e5 / 7 + 1;
						v.push('<td class="cw">' + z + "</td>") } u = this.getClassNames(p), u.push("day"), this.o.beforeShowDay !== a.noop && (e = this.o.beforeShowDay(this._utc_to_local(p)), e === b ? e = {} : "boolean" == typeof e ? e = { enabled: e } : "string" == typeof e && (e = { classes: e }), e.enabled === !1 && u.push("disabled"), e.classes && (u = u.concat(e.classes.split(/\s+/))), e.tooltip && (d = e.tooltip)), u = a.isFunction(a.uniqueSort) ? a.uniqueSort(u) : a.unique(u), v.push('<td class="' + u.join(" ") + '"' + (d ? ' title="' + d + '"' : "") + ">" + p.getUTCDate() + "</td>"), d = null, p.getUTCDay() === this.o.weekEnd && v.push("</tr>"), p.setUTCDate(p.getUTCDate() + 1) } this.picker.find(".datepicker-days tbody").empty().append(v.join("")); var A = q[this.o.language].monthsTitle || q.en.monthsTitle || "Months",
					B = this.picker.find(".datepicker-months").find(".datepicker-switch").text(this.o.maxViewMode < 2 ? A : g).end().find("span").removeClass("active"); if(a.each(this.dates, function(a, b) { b.getUTCFullYear() === g && B.eq(b.getUTCMonth()).addClass("active") }), (i > g || g > k) && B.addClass("disabled"), g === i && B.slice(0, j).addClass("disabled"), g === k && B.slice(l + 1).addClass("disabled"), this.o.beforeShowMonth !== a.noop) { var C = this;
					a.each(B, function(c, d) { var e = new Date(g, c, 1),
							f = C.o.beforeShowMonth(e);
						f === b ? f = {} : "boolean" == typeof f ? f = { enabled: f } : "string" == typeof f && (f = { classes: f }), f.enabled !== !1 || a(d).hasClass("disabled") || a(d).addClass("disabled"), f.classes && a(d).addClass(f.classes), f.tooltip && a(d).prop("title", f.tooltip) }) } this._fill_yearsView(".datepicker-years", "year", 10, 1, g, i, k, this.o.beforeShowYear), this._fill_yearsView(".datepicker-decades", "decade", 100, 10, g, i, k, this.o.beforeShowDecade), this._fill_yearsView(".datepicker-centuries", "century", 1e3, 100, g, i, k, this.o.beforeShowCentury) } }, updateNavArrows: function() { if(this._allow_update) { var a = new Date(this.viewDate),
					b = a.getUTCFullYear(),
					c = a.getUTCMonth(); switch(this.viewMode) {
					case 0:
						this.o.startDate !== -(1 / 0) && b <= this.o.startDate.getUTCFullYear() && c <= this.o.startDate.getUTCMonth() ? this.picker.find(".prev").css({ visibility: "hidden" }) : this.picker.find(".prev").css({ visibility: "visible" }), this.o.endDate !== 1 / 0 && b >= this.o.endDate.getUTCFullYear() && c >= this.o.endDate.getUTCMonth() ? this.picker.find(".next").css({ visibility: "hidden" }) : this.picker.find(".next").css({ visibility: "visible" }); break;
					case 1:
					case 2:
					case 3:
					case 4:
						this.o.startDate !== -(1 / 0) && b <= this.o.startDate.getUTCFullYear() || this.o.maxViewMode < 2 ? this.picker.find(".prev").css({ visibility: "hidden" }) : this.picker.find(".prev").css({ visibility: "visible" }), this.o.endDate !== 1 / 0 && b >= this.o.endDate.getUTCFullYear() || this.o.maxViewMode < 2 ? this.picker.find(".next").css({ visibility: "hidden" }) : this.picker.find(".next").css({ visibility: "visible" }) } } }, click: function(b) { b.preventDefault(), b.stopPropagation(); var e, f, g, h, i, j, k;
			e = a(b.target), e.hasClass("datepicker-switch") && this.showMode(1); var l = e.closest(".prev, .next");
			l.length > 0 && (f = r.modes[this.viewMode].navStep * (l.hasClass("prev") ? -1 : 1), 0 === this.viewMode ? (this.viewDate = this.moveMonth(this.viewDate, f), this._trigger("changeMonth", this.viewDate)) : (this.viewDate = this.moveYear(this.viewDate, f), 1 === this.viewMode && this._trigger("changeYear", this.viewDate)), this.fill()), e.hasClass("today") && !e.hasClass("day") && (this.showMode(-2), this._setDate(d(), "linked" === this.o.todayBtn ? null : "view")), e.hasClass("clear") && this.clearDates(), e.hasClass("disabled") || (e.hasClass("day") && (g = parseInt(e.text(), 10) || 1, h = this.viewDate.getUTCFullYear(), i = this.viewDate.getUTCMonth(), e.hasClass("old") && (0 === i ? (i = 11, h -= 1, j = !0, k = !0) : (i -= 1, j = !0)), e.hasClass("new") && (11 === i ? (i = 0, h += 1, j = !0, k = !0) : (i += 1, j = !0)), this._setDate(c(h, i, g)), k && this._trigger("changeYear", this.viewDate), j && this._trigger("changeMonth", this.viewDate)), e.hasClass("month") && (this.viewDate.setUTCDate(1), g = 1, i = e.parent().find("span").index(e), h = this.viewDate.getUTCFullYear(), this.viewDate.setUTCMonth(i), this._trigger("changeMonth", this.viewDate), 1 === this.o.minViewMode ? (this._setDate(c(h, i, g)), this.showMode()) : this.showMode(-1), this.fill()), (e.hasClass("year") || e.hasClass("decade") || e.hasClass("century")) && (this.viewDate.setUTCDate(1), g = 1, i = 0, h = parseInt(e.text(), 10) || 0, this.viewDate.setUTCFullYear(h), e.hasClass("year") && (this._trigger("changeYear", this.viewDate), 2 === this.o.minViewMode && this._setDate(c(h, i, g))), e.hasClass("decade") && (this._trigger("changeDecade", this.viewDate), 3 === this.o.minViewMode && this._setDate(c(h, i, g))), e.hasClass("century") && (this._trigger("changeCentury", this.viewDate), 4 === this.o.minViewMode && this._setDate(c(h, i, g))), this.showMode(-1), this.fill())), this.picker.is(":visible") && this._focused_from && a(this._focused_from).focus(), delete this._focused_from }, _toggle_multidate: function(a) { var b = this.dates.contains(a); if(a || this.dates.clear(), -1 !== b ? (this.o.multidate === !0 || this.o.multidate > 1 || this.o.toggleActive) && this.dates.remove(b) : this.o.multidate === !1 ? (this.dates.clear(), this.dates.push(a)) : this.dates.push(a), "number" == typeof this.o.multidate)
				for(; this.dates.length > this.o.multidate;) this.dates.remove(0) }, _setDate: function(a, b) { b && "date" !== b || this._toggle_multidate(a && new Date(a)), b && "view" !== b || (this.viewDate = a && new Date(a)), this.fill(), this.setValue(), b && "view" === b || this._trigger("changeDate"), this.inputField && this.inputField.change(), !this.o.autoclose || b && "date" !== b || this.hide() }, moveDay: function(a, b) { var c = new Date(a); return c.setUTCDate(a.getUTCDate() + b), c }, moveWeek: function(a, b) { return this.moveDay(a, 7 * b) }, moveMonth: function(a, b) { if(!g(a)) return this.o.defaultViewDate; if(!b) return a; var c, d, e = new Date(a.valueOf()),
				f = e.getUTCDate(),
				h = e.getUTCMonth(),
				i = Math.abs(b); if(b = b > 0 ? 1 : -1, 1 === i) d = -1 === b ? function() { return e.getUTCMonth() === h } : function() { return e.getUTCMonth() !== c }, c = h + b, e.setUTCMonth(c), (0 > c || c > 11) && (c = (c + 12) % 12);
			else { for(var j = 0; i > j; j++) e = this.moveMonth(e, b);
				c = e.getUTCMonth(), e.setUTCDate(f), d = function() { return c !== e.getUTCMonth() } } for(; d();) e.setUTCDate(--f), e.setUTCMonth(c); return e }, moveYear: function(a, b) { return this.moveMonth(a, 12 * b) }, moveAvailableDate: function(a, b, c) { do { if(a = this[c](a, b), !this.dateWithinRange(a)) return !1;
				c = "moveDay" } while (this.dateIsDisabled(a)); return a }, weekOfDateIsDisabled: function(b) { return -1 !== a.inArray(b.getUTCDay(), this.o.daysOfWeekDisabled) }, dateIsDisabled: function(b) { return this.weekOfDateIsDisabled(b) || a.grep(this.o.datesDisabled, function(a) { return e(b, a) }).length > 0 }, dateWithinRange: function(a) { return a >= this.o.startDate && a <= this.o.endDate }, keydown: function(a) { if(!this.picker.is(":visible")) return void((40 === a.keyCode || 27 === a.keyCode) && (this.show(), a.stopPropagation())); var b, c, d = !1,
				e = this.focusDate || this.viewDate; switch(a.keyCode) {
				case 27:
					this.focusDate ? (this.focusDate = null, this.viewDate = this.dates.get(-1) || this.viewDate, this.fill()) : this.hide(), a.preventDefault(), a.stopPropagation(); break;
				case 37:
				case 38:
				case 39:
				case 40:
					if(!this.o.keyboardNavigation || 7 === this.o.daysOfWeekDisabled.length) break;
					b = 37 === a.keyCode || 38 === a.keyCode ? -1 : 1, 0 === this.viewMode ? a.ctrlKey ? (c = this.moveAvailableDate(e, b, "moveYear"), c && this._trigger("changeYear", this.viewDate)) : a.shiftKey ? (c = this.moveAvailableDate(e, b, "moveMonth"), c && this._trigger("changeMonth", this.viewDate)) : 37 === a.keyCode || 39 === a.keyCode ? c = this.moveAvailableDate(e, b, "moveDay") : this.weekOfDateIsDisabled(e) || (c = this.moveAvailableDate(e, b, "moveWeek")) : 1 === this.viewMode ? ((38 === a.keyCode || 40 === a.keyCode) && (b = 4 * b), c = this.moveAvailableDate(e, b, "moveMonth")) : 2 === this.viewMode && ((38 === a.keyCode || 40 === a.keyCode) && (b = 4 * b), c = this.moveAvailableDate(e, b, "moveYear")), c && (this.focusDate = this.viewDate = c, this.setValue(), this.fill(), a.preventDefault()); break;
				case 13:
					if(!this.o.forceParse) break;
					e = this.focusDate || this.dates.get(-1) || this.viewDate, this.o.keyboardNavigation && (this._toggle_multidate(e), d = !0), this.focusDate = null, this.viewDate = this.dates.get(-1) || this.viewDate, this.setValue(), this.fill(), this.picker.is(":visible") && (a.preventDefault(), a.stopPropagation(), this.o.autoclose && this.hide()); break;
				case 9:
					this.focusDate = null, this.viewDate = this.dates.get(-1) || this.viewDate, this.fill(), this.hide() } d && (this.dates.length ? this._trigger("changeDate") : this._trigger("clearDate"), this.inputField && this.inputField.change()) }, showMode: function(a) { a && (this.viewMode = Math.max(this.o.minViewMode, Math.min(this.o.maxViewMode, this.viewMode + a))), this.picker.children("div").hide().filter(".datepicker-" + r.modes[this.viewMode].clsName).show(), this.updateNavArrows() } };
	var l = function(b, c) { a(b).data("datepicker", this), this.element = a(b), this.inputs = a.map(c.inputs, function(a) { return a.jquery ? a[0] : a }), delete c.inputs, n.call(a(this.inputs), c).on("changeDate", a.proxy(this.dateUpdated, this)), this.pickers = a.map(this.inputs, function(b) { return a(b).data("datepicker") }), this.updateDates() };
	l.prototype = { updateDates: function() { this.dates = a.map(this.pickers, function(a) { return a.getUTCDate() }), this.updateRanges() }, updateRanges: function() { var b = a.map(this.dates, function(a) { return a.valueOf() });
			a.each(this.pickers, function(a, c) { c.setRange(b) }) }, dateUpdated: function(b) { if(!this.updating) { this.updating = !0; var c = a(b.target).data("datepicker"); if("undefined" != typeof c) { var d = c.getUTCDate(),
						e = a.inArray(b.target, this.inputs),
						f = e - 1,
						g = e + 1,
						h = this.inputs.length; if(-1 !== e) { if(a.each(this.pickers, function(a, b) { b.getUTCDate() || b.setUTCDate(d) }), d < this.dates[f])
							for(; f >= 0 && d < this.dates[f];) this.pickers[f--].setUTCDate(d);
						else if(d > this.dates[g])
							for(; h > g && d > this.dates[g];) this.pickers[g++].setUTCDate(d);
						this.updateDates(), delete this.updating } } } }, remove: function() { a.map(this.pickers, function(a) { a.remove() }), delete this.element.data().datepicker } };
	var m = a.fn.datepicker,
		n = function(c) { var d = Array.apply(null, arguments);
			d.shift(); var e; if(this.each(function() { var b = a(this),
						f = b.data("datepicker"),
						g = "object" == typeof c && c; if(!f) { var j = h(this, "date"),
							m = a.extend({}, o, j, g),
							n = i(m.language),
							p = a.extend({}, o, n, j, g);
						b.hasClass("input-daterange") || p.inputs ? (a.extend(p, { inputs: p.inputs || b.find("input").toArray() }), f = new l(this, p)) : f = new k(this, p), b.data("datepicker", f) } "string" == typeof c && "function" == typeof f[c] && (e = f[c].apply(f, d)) }), e === b || e instanceof k || e instanceof l) return this; if(this.length > 1) throw new Error("Using only allowed for the collection of a single element (" + c + " function)"); return e };
	a.fn.datepicker = n;
	var o = a.fn.datepicker.defaults = { assumeNearbyYear: !1, autoclose: !1, beforeShowDay: a.noop, beforeShowMonth: a.noop, beforeShowYear: a.noop, beforeShowDecade: a.noop, beforeShowCentury: a.noop, calendarWeeks: !1, clearBtn: !1, toggleActive: !1, daysOfWeekDisabled: [], daysOfWeekHighlighted: [], datesDisabled: [], endDate: 1 / 0, forceParse: !0, format: "mm/dd/yyyy", keyboardNavigation: !0, language: "en", minViewMode: 0, maxViewMode: 4, multidate: !1, multidateSeparator: ",", orientation: "auto", rtl: !1, startDate: -(1 / 0), startView: 0, todayBtn: !1, todayHighlight: !1, weekStart: 0, disableTouchKeyboard: !1, enableOnReadonly: !0, showOnFocus: !0, zIndexOffset: 10, container: "body", immediateUpdates: !1, title: "", templates: { leftArrow: "&laquo;", rightArrow: "&raquo;" } },
		p = a.fn.datepicker.locale_opts = ["format", "rtl", "weekStart"];
	a.fn.datepicker.Constructor = k;
	var q = a.fn.datepicker.dates = { en: { days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"], months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], today: "Today", clear: "Clear", titleFormat: "MM yyyy" } },
		r = {
			modes: [{ clsName: "days", navFnc: "Month", navStep: 1 }, { clsName: "months", navFnc: "FullYear", navStep: 1 }, { clsName: "years", navFnc: "FullYear", navStep: 10 }, { clsName: "decades", navFnc: "FullDecade", navStep: 100 }, { clsName: "centuries", navFnc: "FullCentury", navStep: 1e3 }],
			isLeapYear: function(a) { return a % 4 === 0 && a % 100 !== 0 || a % 400 === 0 },
			getDaysInMonth: function(a, b) { return [31, r.isLeapYear(a) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][b] },
			validParts: /dd?|DD?|mm?|MM?|yy(?:yy)?/g,
			nonpunctuation: /[^ -\/:-@\u5e74\u6708\u65e5\[-`{-~\t\n\r]+/g,
			parseFormat: function(a) { if("function" == typeof a.toValue && "function" == typeof a.toDisplay) return a; var b = a.replace(this.validParts, "\x00").split("\x00"),
					c = a.match(this.validParts); if(!b || !b.length || !c || 0 === c.length) throw new Error("Invalid date format."); return { separators: b, parts: c } },
			parseDate: function(e, f, g, h) {
				function i(a, b) { return b === !0 && (b = 10), 100 > a && (a += 2e3, a > (new Date).getFullYear() + b && (a -= 100)), a }

				function j() { var a = this.slice(0, s[n].length),
						b = s[n].slice(0, a.length); return a.toLowerCase() === b.toLowerCase() } if(!e) return b; if(e instanceof Date) return e; if("string" == typeof f && (f = r.parseFormat(f)), f.toValue) return f.toValue(e, f, g); var l, m, n, o, p = /([\-+]\d+)([dmwy])/,
					s = e.match(/([\-+]\d+)([dmwy])/g),
					t = { d: "moveDay", m: "moveMonth", w: "moveWeek", y: "moveYear" },
					u = { yesterday: "-1d", today: "+0d", tomorrow: "+1d" }; if(/^[\-+]\d+[dmwy]([\s,]+[\-+]\d+[dmwy])*$/.test(e)) { for(e = new Date, n = 0; n < s.length; n++) l = p.exec(s[n]), m = parseInt(l[1]), o = t[l[2]], e = k.prototype[o](e, m); return c(e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate()) } if("undefined" != typeof u[e] && (e = u[e], s = e.match(/([\-+]\d+)([dmwy])/g), /^[\-+]\d+[dmwy]([\s,]+[\-+]\d+[dmwy])*$/.test(e))) { for(e = new Date, n = 0; n < s.length; n++) l = p.exec(s[n]), m = parseInt(l[1]), o = t[l[2]], e = k.prototype[o](e, m); return c(e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate()) } s = e && e.match(this.nonpunctuation) || [], e = new Date; var v, w, x = {},
					y = ["yyyy", "yy", "M", "MM", "m", "mm", "d", "dd"],
					z = { yyyy: function(a, b) { return a.setUTCFullYear(h ? i(b, h) : b) }, yy: function(a, b) { return a.setUTCFullYear(h ? i(b, h) : b) }, m: function(a, b) { if(isNaN(a)) return a; for(b -= 1; 0 > b;) b += 12; for(b %= 12, a.setUTCMonth(b); a.getUTCMonth() !== b;) a.setUTCDate(a.getUTCDate() - 1); return a }, d: function(a, b) { return a.setUTCDate(b) } };
				z.M = z.MM = z.mm = z.m, z.dd = z.d, e = d(); var A = f.parts.slice(); if(s.length !== A.length && (A = a(A).filter(function(b, c) { return -1 !== a.inArray(c, y) }).toArray()), s.length === A.length) { var B; for(n = 0, B = A.length; B > n; n++) { if(v = parseInt(s[n], 10), l = A[n], isNaN(v)) switch(l) {
							case "MM":
								w = a(q[g].months).filter(j), v = a.inArray(w[0], q[g].months) + 1; break;
							case "M":
								w = a(q[g].monthsShort).filter(j), v = a.inArray(w[0], q[g].monthsShort) + 1 } x[l] = v } var C, D; for(n = 0; n < y.length; n++) D = y[n], D in x && !isNaN(x[D]) && (C = new Date(e), z[D](C, x[D]), isNaN(C) || (e = C)) } return e },
			formatDate: function(b, c, d) {
				if(!b) return "";
				if("string" == typeof c && (c = r.parseFormat(c)),
					c.toDisplay) return c.toDisplay(b, c, d);
				var e = { d: b.getUTCDate(), D: q[d].daysShort[b.getUTCDay()], DD: q[d].days[b.getUTCDay()], m: b.getUTCMonth() + 1, M: q[d].monthsShort[b.getUTCMonth()], MM: q[d].months[b.getUTCMonth()], yy: b.getUTCFullYear().toString().substring(2), yyyy: b.getUTCFullYear() };
				e.dd = (e.d < 10 ? "0" : "") + e.d, e.mm = (e.m < 10 ? "0" : "") + e.m, b = [];
				for(var f = a.extend([], c.separators), g = 0, h = c.parts.length; h >= g; g++) f.length && b.push(f.shift()), b.push(e[c.parts[g]]);
				return b.join("")
			},
			headTemplate: '<thead><tr><th colspan="7" class="datepicker-title"></th></tr><tr><th class="prev">&laquo;</th><th colspan="5" class="datepicker-switch"></th><th class="next">&raquo;</th></tr></thead>',
			contTemplate: '<tbody><tr><td colspan="7"></td></tr></tbody>',
			footTemplate: '<tfoot><tr><th colspan="7" class="today"></th></tr><tr><th colspan="7" class="clear"></th></tr></tfoot>'
		};
	r.template = '<div class="datepicker"><div class="datepicker-days"><table class="table-condensed">' + r.headTemplate + "<tbody></tbody>" + r.footTemplate + '</table></div><div class="datepicker-months"><table class="table-condensed">' + r.headTemplate + r.contTemplate + r.footTemplate + '</table></div><div class="datepicker-years"><table class="table-condensed">' + r.headTemplate + r.contTemplate + r.footTemplate + '</table></div><div class="datepicker-decades"><table class="table-condensed">' + r.headTemplate + r.contTemplate + r.footTemplate + '</table></div><div class="datepicker-centuries"><table class="table-condensed">' + r.headTemplate + r.contTemplate + r.footTemplate + "</table></div></div>", a.fn.datepicker.DPGlobal = r, a.fn.datepicker.noConflict = function() { return a.fn.datepicker = m, this }, a.fn.datepicker.version = "1.6.4", a(document).on("focus.datepicker.data-api click.datepicker.data-api", '[data-provide="datepicker"]', function(b) { var c = a(this);
		c.data("datepicker") || (b.preventDefault(), n.call(c, "show")) }), a(function() { n.call(a('[data-provide="datepicker-inline"]')) })
});

/*! bootstrap-timepicker v0.2.5
 * http://jdewit.github.com/bootstrap-timepicker
 * Copyright (c) 2013 Joris de Wit
 * MIT License
 */
! function(a, b, c) { "use strict"; var d = function(b, c) { this.widget = "", this.$element = a(b), this.defaultTime = c.defaultTime, this.disableFocus = c.disableFocus, this.disableMousewheel = c.disableMousewheel, this.isOpen = c.isOpen, this.minuteStep = c.minuteStep, this.modalBackdrop = c.modalBackdrop, this.secondStep = c.secondStep, this.showInputs = c.showInputs, this.showMeridian = c.showMeridian, this.showSeconds = c.showSeconds, this.template = c.template, this.appendWidgetTo = c.appendWidgetTo, this.showWidgetOnAddonClick = c.showWidgetOnAddonClick, this._init() };
	d.prototype = { constructor: d, _init: function() { var b = this;
			this.showWidgetOnAddonClick && (this.$element.parent().hasClass("input-group") || this.$element.parent().hasClass("input-group")) ? (this.$element.parent(".input-group").find(".input-group-addon, .input-group-btn").on({ "click.timepicker": a.proxy(this.showWidget, this) }), this.$element.on({ "focus.timepicker": a.proxy(this.highlightUnit, this), "click.timepicker": a.proxy(this.highlightUnit, this), "keydown.timepicker": a.proxy(this.elementKeydown, this), "blur.timepicker": a.proxy(this.blurElement, this), "mousewheel.timepicker DOMMouseScroll.timepicker": a.proxy(this.mousewheel, this) })) : this.template ? this.$element.on({ "focus.timepicker": a.proxy(this.showWidget, this), "click.timepicker": a.proxy(this.showWidget, this), "blur.timepicker": a.proxy(this.blurElement, this), "mousewheel.timepicker DOMMouseScroll.timepicker": a.proxy(this.mousewheel, this) }) : this.$element.on({ "focus.timepicker": a.proxy(this.highlightUnit, this), "click.timepicker": a.proxy(this.highlightUnit, this), "keydown.timepicker": a.proxy(this.elementKeydown, this), "blur.timepicker": a.proxy(this.blurElement, this), "mousewheel.timepicker DOMMouseScroll.timepicker": a.proxy(this.mousewheel, this) }), this.$widget = this.template !== !1 ? a(this.getTemplate()).prependTo(this.$element.parents(this.appendWidgetTo)).on("click", a.proxy(this.widgetClick, this)) : !1, this.showInputs && this.$widget !== !1 && this.$widget.find("input").each(function() { a(this).on({ "click.timepicker": function() { a(this).select() }, "keydown.timepicker": a.proxy(b.widgetKeydown, b), "keyup.timepicker": a.proxy(b.widgetKeyup, b) }) }), this.setDefaultTime(this.defaultTime) }, blurElement: function() { this.highlightedUnit = null, this.updateFromElementVal() }, clear: function() { this.hour = "", this.minute = "", this.second = "", this.meridian = "", this.$element.val("") }, decrementHour: function() { if(this.showMeridian)
				if(1 === this.hour) this.hour = 12;
				else { if(12 === this.hour) return this.hour--, this.toggleMeridian(); if(0 === this.hour) return this.hour = 11, this.toggleMeridian();
					this.hour-- } else this.hour <= 0 ? this.hour = 23 : this.hour-- }, decrementMinute: function(a) { var b;
			b = a ? this.minute - a : this.minute - this.minuteStep, 0 > b ? (this.decrementHour(), this.minute = b + 60) : this.minute = b }, decrementSecond: function() { var a = this.second - this.secondStep;
			0 > a ? (this.decrementMinute(!0), this.second = a + 60) : this.second = a }, elementKeydown: function(a) { switch(a.keyCode) {
				case 9:
				case 27:
					this.updateFromElementVal(); break;
				case 37:
					a.preventDefault(), this.highlightPrevUnit(); break;
				case 38:
					switch(a.preventDefault(), this.highlightedUnit) {
						case "hour":
							this.incrementHour(), this.highlightHour(); break;
						case "minute":
							this.incrementMinute(), this.highlightMinute(); break;
						case "second":
							this.incrementSecond(), this.highlightSecond(); break;
						case "meridian":
							this.toggleMeridian(), this.highlightMeridian() } this.update(); break;
				case 39:
					a.preventDefault(), this.highlightNextUnit(); break;
				case 40:
					switch(a.preventDefault(), this.highlightedUnit) {
						case "hour":
							this.decrementHour(), this.highlightHour(); break;
						case "minute":
							this.decrementMinute(), this.highlightMinute(); break;
						case "second":
							this.decrementSecond(), this.highlightSecond(); break;
						case "meridian":
							this.toggleMeridian(), this.highlightMeridian() } this.update() } }, getCursorPosition: function() { var a = this.$element.get(0); if("selectionStart" in a) return a.selectionStart; if(c.selection) { a.focus(); var b = c.selection.createRange(),
					d = c.selection.createRange().text.length; return b.moveStart("character", -a.value.length), b.text.length - d } }, getTemplate: function() { var a, b, c, d, e, f; switch(this.showInputs ? (b = '<input type="text" class="form-control bootstrap-timepicker-hour" maxlength="2"/>', c = '<input type="text" class="form-control bootstrap-timepicker-minute" maxlength="2"/>', d = '<input type="text" class="form-control bootstrap-timepicker-second" maxlength="2"/>', e = '<input type="text" class="form-control bootstrap-timepicker-meridian" maxlength="2"/>') : (b = '<span class="bootstrap-timepicker-hour"></span>', c = '<span class="bootstrap-timepicker-minute"></span>', d = '<span class="bootstrap-timepicker-second"></span>', e = '<span class="bootstrap-timepicker-meridian"></span>'), f = '<table><tr><td><a href="#" data-action="incrementHour"><i class="fa fa-chevron-up"></i></a></td><td class="separator">&nbsp;</td><td><a href="#" data-action="incrementMinute"><i class="fa fa-chevron-up"></i></a></td>' + (this.showSeconds ? '<td class="separator">&nbsp;</td><td><a href="#" data-action="incrementSecond"><i class="fa fa-chevron-up"></i></a></td>' : "") + (this.showMeridian ? '<td class="separator">&nbsp;</td><td class="meridian-column"><a href="#" data-action="toggleMeridian"><i class="fa fa-chevron-up"></i></a></td>' : "") + "</tr>" + "<tr>" + "<td>" + b + "</td> " + '<td class="separator">:</td>' + "<td>" + c + "</td> " + (this.showSeconds ? '<td class="separator">:</td><td>' + d + "</td>" : "") + (this.showMeridian ? '<td class="separator">&nbsp;</td><td>' + e + "</td>" : "") + "</tr>" + "<tr>" + '<td><a href="#" data-action="decrementHour"><i class="fa fa-chevron-down"></i></a></td>' + '<td class="separator"></td>' + '<td><a href="#" data-action="decrementMinute"><i class="fa fa-chevron-down"></i></a></td>' + (this.showSeconds ? '<td class="separator">&nbsp;</td><td><a href="#" data-action="decrementSecond"><i class="fa fa-chevron-down"></i></a></td>' : "") + (this.showMeridian ? '<td class="separator">&nbsp;</td><td><a href="#" data-action="toggleMeridian"><i class="fa fa-chevron-down"></i></a></td>' : "") + "</tr>" + "</table>", this.template) {
				case "modal":
					a = '<div class="modal fade in" data-backdrop="' + (this.modalBackdrop ? "true" : "false") + '">' + '<div class="modal-dialog"><div class="modal-content"><div class="modal-header">' + '<a href="#" class="close" data-dismiss="modal">×</a>' + "<h3>Pick Time</h3>" + "</div>" + '<div class="modal-content"><div class="bootstrap-timepicker-widget">' + f + "</div></div>" + '<div class="modal-footer">' + '<a href="#" class="btn btn-sm btn-primary" data-dismiss="modal">OK</a>' + "</div>" + "</div>" + "</div>" + "</div>"; break;
				case "dropdown":
					a = '<div class="bootstrap-timepicker-widget dropdown-menu">' + f + "</div>" } return a }, getTime: function() { return this.hour || this.minute || this.second ? this.hour + ":" + (1 === this.minute.toString().length ? "0" + this.minute : this.minute) + (this.showSeconds ? ":" + (1 === this.second.toString().length ? "0" + this.second : this.second) : "") + (this.showMeridian ? " " + this.meridian : "") : "" }, hideWidget: function() { this.isOpen !== !1 && (this.$element.trigger({ type: "hide.timepicker", time: { value: this.getTime(), hours: this.hour, minutes: this.minute, seconds: this.second, meridian: this.meridian } }), "modal" === this.template && this.$widget.modal ? this.$widget.modal("hide") : this.$widget.removeClass("open"), a(c).off("mousedown.timepicker, touchend.timepicker"), this.isOpen = !1) }, highlightUnit: function() { this.position = this.getCursorPosition(), this.position >= 0 && this.position <= 2 ? this.highlightHour() : this.position >= 3 && this.position <= 5 ? this.highlightMinute() : this.position >= 6 && this.position <= 8 ? this.showSeconds ? this.highlightSecond() : this.highlightMeridian() : this.position >= 9 && this.position <= 11 && this.highlightMeridian() }, highlightNextUnit: function() { switch(this.highlightedUnit) {
				case "hour":
					this.highlightMinute(); break;
				case "minute":
					this.showSeconds ? this.highlightSecond() : this.showMeridian ? this.highlightMeridian() : this.highlightHour(); break;
				case "second":
					this.showMeridian ? this.highlightMeridian() : this.highlightHour(); break;
				case "meridian":
					this.highlightHour() } }, highlightPrevUnit: function() { switch(this.highlightedUnit) {
				case "hour":
					this.showMeridian ? this.highlightMeridian() : this.showSeconds ? this.highlightSecond() : this.highlightMinute(); break;
				case "minute":
					this.highlightHour(); break;
				case "second":
					this.highlightMinute(); break;
				case "meridian":
					this.showSeconds ? this.highlightSecond() : this.highlightMinute() } }, highlightHour: function() { var a = this.$element.get(0),
				b = this;
			this.highlightedUnit = "hour", a.setSelectionRange && setTimeout(function() { b.hour < 10 ? a.setSelectionRange(0, 1) : a.setSelectionRange(0, 2) }, 0) }, highlightMinute: function() { var a = this.$element.get(0),
				b = this;
			this.highlightedUnit = "minute", a.setSelectionRange && setTimeout(function() { b.hour < 10 ? a.setSelectionRange(2, 4) : a.setSelectionRange(3, 5) }, 0) }, highlightSecond: function() { var a = this.$element.get(0),
				b = this;
			this.highlightedUnit = "second", a.setSelectionRange && setTimeout(function() { b.hour < 10 ? a.setSelectionRange(5, 7) : a.setSelectionRange(6, 8) }, 0) }, highlightMeridian: function() { var a = this.$element.get(0),
				b = this;
			this.highlightedUnit = "meridian", a.setSelectionRange && (this.showSeconds ? setTimeout(function() { b.hour < 10 ? a.setSelectionRange(8, 10) : a.setSelectionRange(9, 11) }, 0) : setTimeout(function() { b.hour < 10 ? a.setSelectionRange(5, 7) : a.setSelectionRange(6, 8) }, 0)) }, incrementHour: function() { if(this.showMeridian) { if(11 === this.hour) return this.hour++, this.toggleMeridian();
				12 === this.hour && (this.hour = 0) } return 23 === this.hour ? (this.hour = 0, void 0) : (this.hour++, void 0) }, incrementMinute: function(a) { var b;
			b = a ? this.minute + a : this.minute + this.minuteStep - this.minute % this.minuteStep, b > 59 ? (this.incrementHour(), this.minute = b - 60) : this.minute = b }, incrementSecond: function() { var a = this.second + this.secondStep - this.second % this.secondStep;
			a > 59 ? (this.incrementMinute(!0), this.second = a - 60) : this.second = a }, mousewheel: function(b) { if(!this.disableMousewheel) { b.preventDefault(), b.stopPropagation(); var c = b.originalEvent.wheelDelta || -b.originalEvent.detail,
					d = null; switch("mousewheel" === b.type ? d = -1 * b.originalEvent.wheelDelta : "DOMMouseScroll" === b.type && (d = 40 * b.originalEvent.detail), d && (b.preventDefault(), a(this).scrollTop(d + a(this).scrollTop())), this.highlightedUnit) {
					case "minute":
						c > 0 ? this.incrementMinute() : this.decrementMinute(), this.highlightMinute(); break;
					case "second":
						c > 0 ? this.incrementSecond() : this.decrementSecond(), this.highlightSecond(); break;
					case "meridian":
						this.toggleMeridian(), this.highlightMeridian(); break;
					default:
						c > 0 ? this.incrementHour() : this.decrementHour(), this.highlightHour() } return !1 } }, remove: function() { a("document").off(".timepicker"), this.$widget && this.$widget.remove(), delete this.$element.data().timepicker }, setDefaultTime: function(a) { if(this.$element.val()) this.updateFromElementVal();
			else if("current" === a) { var b = new Date,
					c = b.getHours(),
					d = b.getMinutes(),
					e = b.getSeconds(),
					f = "AM";
				0 !== e && (e = Math.ceil(b.getSeconds() / this.secondStep) * this.secondStep, 60 === e && (d += 1, e = 0)), 0 !== d && (d = Math.ceil(b.getMinutes() / this.minuteStep) * this.minuteStep, 60 === d && (c += 1, d = 0)), this.showMeridian && (0 === c ? c = 12 : c >= 12 ? (c > 12 && (c -= 12), f = "PM") : f = "AM"), this.hour = c, this.minute = d, this.second = e, this.meridian = f, this.update() } else a === !1 ? (this.hour = 0, this.minute = 0, this.second = 0, this.meridian = "AM") : this.setTime(a) }, setTime: function(a, b) { if(!a) return this.clear(), void 0; var c, d, e, f, g; "object" == typeof a && a.getMonth ? (d = a.getHours(), e = a.getMinutes(), f = a.getSeconds(), this.showMeridian && (g = "AM", d > 12 && (g = "PM", d %= 12), 12 === d && (g = "PM"))) : (g = null !== a.match(/p/i) ? "PM" : "AM", a = a.replace(/[^0-9\:]/g, ""), c = a.split(":"), d = c[0] ? c[0].toString() : c.toString(), e = c[1] ? c[1].toString() : "", f = c[2] ? c[2].toString() : "", d.length > 4 && (f = d.substr(4, 2)), d.length > 2 && (e = d.substr(2, 2), d = d.substr(0, 2)), e.length > 2 && (f = e.substr(2, 2), e = e.substr(0, 2)), f.length > 2 && (f = f.substr(2, 2)), d = parseInt(d, 10), e = parseInt(e, 10), f = parseInt(f, 10), isNaN(d) && (d = 0), isNaN(e) && (e = 0), isNaN(f) && (f = 0), this.showMeridian ? 1 > d ? d = 1 : d > 12 && (d = 12) : (d >= 24 ? d = 23 : 0 > d && (d = 0), 13 > d && "PM" === g && (d += 12)), 0 > e ? e = 0 : e >= 60 && (e = 59), this.showSeconds && (isNaN(f) ? f = 0 : 0 > f ? f = 0 : f >= 60 && (f = 59))), this.hour = d, this.minute = e, this.second = f, this.meridian = g, this.update(b) }, showWidget: function() { if(!this.isOpen && !this.$element.is(":disabled")) { var b = this;
				a(c).on("mousedown.timepicker, touchend.timepicker", function(c) { 0 === a(c.target).closest(".bootstrap-timepicker-widget").length && b.hideWidget() }), this.$element.trigger({ type: "show.timepicker", time: { value: this.getTime(), hours: this.hour, minutes: this.minute, seconds: this.second, meridian: this.meridian } }), this.disableFocus && this.$element.blur(), this.hour || (this.defaultTime ? this.setDefaultTime(this.defaultTime) : this.setTime("0:0:0")), "modal" === this.template && this.$widget.modal ? this.$widget.modal("show").on("hidden", a.proxy(this.hideWidget, this)) : this.isOpen === !1 && this.$widget.addClass("open"), this.isOpen = !0 } }, toggleMeridian: function() { this.meridian = "AM" === this.meridian ? "PM" : "AM" }, update: function(a) { this.updateElement(), a || this.updateWidget(), this.$element.trigger({ type: "changeTime.timepicker", time: { value: this.getTime(), hours: this.hour, minutes: this.minute, seconds: this.second, meridian: this.meridian } }) }, updateElement: function() { this.$element.val(this.getTime()).change() }, updateFromElementVal: function() { this.setTime(this.$element.val()) }, updateWidget: function() { if(this.$widget !== !1) { var a = this.hour,
					b = 1 === this.minute.toString().length ? "0" + this.minute : this.minute,
					c = 1 === this.second.toString().length ? "0" + this.second : this.second;
				this.showInputs ? (this.$widget.find("input.bootstrap-timepicker-hour").val(a), this.$widget.find("input.bootstrap-timepicker-minute").val(b), this.showSeconds && this.$widget.find("input.bootstrap-timepicker-second").val(c), this.showMeridian && this.$widget.find("input.bootstrap-timepicker-meridian").val(this.meridian)) : (this.$widget.find("span.bootstrap-timepicker-hour").text(a), this.$widget.find("span.bootstrap-timepicker-minute").text(b), this.showSeconds && this.$widget.find("span.bootstrap-timepicker-second").text(c), this.showMeridian && this.$widget.find("span.bootstrap-timepicker-meridian").text(this.meridian)) } }, updateFromWidgetInputs: function() { if(this.$widget !== !1) { var a = this.$widget.find("input.bootstrap-timepicker-hour").val() + ":" + this.$widget.find("input.bootstrap-timepicker-minute").val() + (this.showSeconds ? ":" + this.$widget.find("input.bootstrap-timepicker-second").val() : "") + (this.showMeridian ? this.$widget.find("input.bootstrap-timepicker-meridian").val() : "");
				this.setTime(a, !0) } }, widgetClick: function(b) { b.stopPropagation(), b.preventDefault(); var c = a(b.target),
				d = c.closest("a").data("action");
			d && this[d](), this.update(), c.is("input") && c.get(0).setSelectionRange(0, 2) }, widgetKeydown: function(b) { var c = a(b.target),
				d = c.attr("class").replace("bootstrap-timepicker-", ""); switch(b.keyCode) {
				case 9:
					if(this.showMeridian && "meridian" === d || this.showSeconds && "second" === d || !this.showMeridian && !this.showSeconds && "minute" === d) return this.hideWidget(); break;
				case 27:
					this.hideWidget(); break;
				case 38:
					switch(b.preventDefault(), d) {
						case "hour":
							this.incrementHour(); break;
						case "minute":
							this.incrementMinute(); break;
						case "second":
							this.incrementSecond(); break;
						case "meridian":
							this.toggleMeridian() } this.setTime(this.getTime()), c.get(0).setSelectionRange(0, 2); break;
				case 40:
					switch(b.preventDefault(), d) {
						case "hour":
							this.decrementHour(); break;
						case "minute":
							this.decrementMinute(); break;
						case "second":
							this.decrementSecond(); break;
						case "meridian":
							this.toggleMeridian() } this.setTime(this.getTime()), c.get(0).setSelectionRange(0, 2) } }, widgetKeyup: function(a) {
			(65 === a.keyCode || 77 === a.keyCode || 80 === a.keyCode || 46 === a.keyCode || 8 === a.keyCode || a.keyCode >= 46 && a.keyCode <= 57) && this.updateFromWidgetInputs() } }, a.fn.timepicker = function(b) { var c = Array.apply(null, arguments); return c.shift(), this.each(function() { var e = a(this),
				f = e.data("timepicker"),
				g = "object" == typeof b && b;
			f || e.data("timepicker", f = new d(this, a.extend({}, a.fn.timepicker.defaults, g, a(this).data()))), "string" == typeof b && f[b].apply(f, c) }) }, a.fn.timepicker.defaults = { defaultTime: "current", disableFocus: !1, disableMousewheel: !1, isOpen: !1, minuteStep: 15, modalBackdrop: !1, secondStep: 15, showSeconds: !1, showInputs: !0, showMeridian: !0, template: "dropdown", appendWidgetTo: ".bootstrap-timepicker", showWidgetOnAddonClick: !0 }, a.fn.timepicker.Constructor = d }(jQuery, window, document);

/* Chosen v1.6.2 | (c) 2011-2016 by Harvest | MIT License, https://github.com/harvesthq/chosen/blob/master/LICENSE.md */
(function() { var a, AbstractChosen, Chosen, SelectParser, b, c = {}.hasOwnProperty,
		d = function(a, b) {
			function d() { this.constructor = a } for(var e in b) c.call(b, e) && (a[e] = b[e]); return d.prototype = b.prototype, a.prototype = new d, a.__super__ = b.prototype, a };
	SelectParser = function() {
		function SelectParser() { this.options_index = 0, this.parsed = [] } return SelectParser.prototype.add_node = function(a) { return "OPTGROUP" === a.nodeName.toUpperCase() ? this.add_group(a) : this.add_option(a) }, SelectParser.prototype.add_group = function(a) { var b, c, d, e, f, g; for(b = this.parsed.length, this.parsed.push({ array_index: b, group: !0, label: this.escapeExpression(a.label), title: a.title ? a.title : void 0, children: 0, disabled: a.disabled, classes: a.className }), f = a.childNodes, g = [], d = 0, e = f.length; e > d; d++) c = f[d], g.push(this.add_option(c, b, a.disabled)); return g }, SelectParser.prototype.add_option = function(a, b, c) { return "OPTION" === a.nodeName.toUpperCase() ? ("" !== a.text ? (null != b && (this.parsed[b].children += 1), this.parsed.push({ array_index: this.parsed.length, options_index: this.options_index, value: a.value, text: a.text, html: a.innerHTML, title: a.title ? a.title : void 0, selected: a.selected, disabled: c === !0 ? c : a.disabled, group_array_index: b, group_label: null != b ? this.parsed[b].label : null, classes: a.className, style: a.style.cssText })) : this.parsed.push({ array_index: this.parsed.length, options_index: this.options_index, empty: !0 }), this.options_index += 1) : void 0 }, SelectParser.prototype.escapeExpression = function(a) { var b, c; return null == a || a === !1 ? "" : /[\&\<\>\"\'\`]/.test(a) ? (b = { "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#x27;", "`": "&#x60;" }, c = /&(?!\w+;)|[\<\>\"\'\`]/g, a.replace(c, function(a) { return b[a] || "&amp;" })) : a }, SelectParser }(), SelectParser.select_to_array = function(a) { var b, c, d, e, f; for(c = new SelectParser, f = a.childNodes, d = 0, e = f.length; e > d; d++) b = f[d], c.add_node(b); return c.parsed }, AbstractChosen = function() {
		function AbstractChosen(a, b) { this.form_field = a, this.options = null != b ? b : {}, AbstractChosen.browser_is_supported() && (this.is_multiple = this.form_field.multiple, this.set_default_text(), this.set_default_values(), this.setup(), this.set_up_html(), this.register_observers(), this.on_ready()) } return AbstractChosen.prototype.set_default_values = function() { var a = this; return this.click_test_action = function(b) { return a.test_active_click(b) }, this.activate_action = function(b) { return a.activate_field(b) }, this.active_field = !1, this.mouse_on_container = !1, this.results_showing = !1, this.result_highlighted = null, this.allow_single_deselect = null != this.options.allow_single_deselect && null != this.form_field.options[0] && "" === this.form_field.options[0].text ? this.options.allow_single_deselect : !1, this.disable_search_threshold = this.options.disable_search_threshold || 0, this.disable_search = this.options.disable_search || !1, this.enable_split_word_search = null != this.options.enable_split_word_search ? this.options.enable_split_word_search : !0, this.group_search = null != this.options.group_search ? this.options.group_search : !0, this.search_contains = this.options.search_contains || !1, this.single_backstroke_delete = null != this.options.single_backstroke_delete ? this.options.single_backstroke_delete : !0, this.max_selected_options = this.options.max_selected_options || 1 / 0, this.inherit_select_classes = this.options.inherit_select_classes || !1, this.display_selected_options = null != this.options.display_selected_options ? this.options.display_selected_options : !0, this.display_disabled_options = null != this.options.display_disabled_options ? this.options.display_disabled_options : !0, this.include_group_label_in_selected = this.options.include_group_label_in_selected || !1, this.max_shown_results = this.options.max_shown_results || Number.POSITIVE_INFINITY, this.case_sensitive_search = this.options.case_sensitive_search || !1 }, AbstractChosen.prototype.set_default_text = function() { return this.form_field.getAttribute("data-placeholder") ? this.default_text = this.form_field.getAttribute("data-placeholder") : this.is_multiple ? this.default_text = this.options.placeholder_text_multiple || this.options.placeholder_text || AbstractChosen.default_multiple_text : this.default_text = this.options.placeholder_text_single || this.options.placeholder_text || AbstractChosen.default_single_text, this.results_none_found = this.form_field.getAttribute("data-no_results_text") || this.options.no_results_text || AbstractChosen.default_no_result_text }, AbstractChosen.prototype.choice_label = function(a) { return this.include_group_label_in_selected && null != a.group_label ? "<b class='group-name'>" + a.group_label + "</b>" + a.html : a.html }, AbstractChosen.prototype.mouse_enter = function() { return this.mouse_on_container = !0 }, AbstractChosen.prototype.mouse_leave = function() { return this.mouse_on_container = !1 }, AbstractChosen.prototype.input_focus = function(a) { var b = this; if(this.is_multiple) { if(!this.active_field) return setTimeout(function() { return b.container_mousedown() }, 50) } else if(!this.active_field) return this.activate_field() }, AbstractChosen.prototype.input_blur = function(a) { var b = this; return this.mouse_on_container ? void 0 : (this.active_field = !1, setTimeout(function() { return b.blur_test() }, 100)) }, AbstractChosen.prototype.results_option_build = function(a) { var b, c, d, e, f, g, h; for(b = "", e = 0, h = this.results_data, f = 0, g = h.length; g > f && (c = h[f], d = "", d = c.group ? this.result_add_group(c) : this.result_add_option(c), "" !== d && (e++, b += d), (null != a ? a.first : void 0) && (c.selected && this.is_multiple ? this.choice_build(c) : c.selected && !this.is_multiple && this.single_set_selected_text(this.choice_label(c))), !(e >= this.max_shown_results)); f++); return b }, AbstractChosen.prototype.result_add_option = function(a) { var b, c; return a.search_match && this.include_option_in_results(a) ? (b = [], a.disabled || a.selected && this.is_multiple || b.push("active-result"), !a.disabled || a.selected && this.is_multiple || b.push("disabled-result"), a.selected && b.push("result-selected"), null != a.group_array_index && b.push("group-option"), "" !== a.classes && b.push(a.classes), c = document.createElement("li"), c.className = b.join(" "), c.style.cssText = a.style, c.setAttribute("data-option-array-index", a.array_index), c.innerHTML = a.search_text, a.title && (c.title = a.title), this.outerHTML(c)) : "" }, AbstractChosen.prototype.result_add_group = function(a) { var b, c; return(a.search_match || a.group_match) && a.active_options > 0 ? (b = [], b.push("group-result"), a.classes && b.push(a.classes), c = document.createElement("li"), c.className = b.join(" "), c.innerHTML = a.search_text, a.title && (c.title = a.title), this.outerHTML(c)) : "" }, AbstractChosen.prototype.results_update_field = function() { return this.set_default_text(), this.is_multiple || this.results_reset_cleanup(), this.result_clear_highlight(), this.results_build(), this.results_showing ? this.winnow_results() : void 0 }, AbstractChosen.prototype.reset_single_select_options = function() { var a, b, c, d, e; for(d = this.results_data, e = [], b = 0, c = d.length; c > b; b++) a = d[b], a.selected ? e.push(a.selected = !1) : e.push(void 0); return e }, AbstractChosen.prototype.results_toggle = function() { return this.results_showing ? this.results_hide() : this.results_show() }, AbstractChosen.prototype.results_search = function(a) { return this.results_showing ? this.winnow_results() : this.results_show() }, AbstractChosen.prototype.winnow_results = function() { var a, b, c, d, e, f, g, h, i, j, k, l; for(this.no_results_clear(), d = 0, f = this.get_search_text(), a = f.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&"), i = new RegExp(a, "i"), c = this.get_search_regex(a), l = this.results_data, j = 0, k = l.length; k > j; j++) b = l[j], b.search_match = !1, e = null, this.include_option_in_results(b) && (b.group && (b.group_match = !1, b.active_options = 0), null != b.group_array_index && this.results_data[b.group_array_index] && (e = this.results_data[b.group_array_index], 0 === e.active_options && e.search_match && (d += 1), e.active_options += 1), b.search_text = b.group ? b.label : b.html, (!b.group || this.group_search) && (b.search_match = this.search_string_match(b.search_text, c), b.search_match && !b.group && (d += 1), b.search_match ? (f.length && (g = b.search_text.search(i), h = b.search_text.substr(0, g + f.length) + "</em>" + b.search_text.substr(g + f.length), b.search_text = h.substr(0, g) + "<em>" + h.substr(g)), null != e && (e.group_match = !0)) : null != b.group_array_index && this.results_data[b.group_array_index].search_match && (b.search_match = !0))); return this.result_clear_highlight(), 1 > d && f.length ? (this.update_results_content(""), this.no_results(f)) : (this.update_results_content(this.results_option_build()), this.winnow_results_set_highlight()) }, AbstractChosen.prototype.get_search_regex = function(a) { var b, c; return b = this.search_contains ? "" : "^", c = this.case_sensitive_search ? "" : "i", new RegExp(b + a, c) }, AbstractChosen.prototype.search_string_match = function(a, b) { var c, d, e, f; if(b.test(a)) return !0; if(this.enable_split_word_search && (a.indexOf(" ") >= 0 || 0 === a.indexOf("[")) && (d = a.replace(/\[|\]/g, "").split(" "), d.length))
				for(e = 0, f = d.length; f > e; e++)
					if(c = d[e], b.test(c)) return !0 }, AbstractChosen.prototype.choices_count = function() { var a, b, c, d; if(null != this.selected_option_count) return this.selected_option_count; for(this.selected_option_count = 0, d = this.form_field.options, b = 0, c = d.length; c > b; b++) a = d[b], a.selected && (this.selected_option_count += 1); return this.selected_option_count }, AbstractChosen.prototype.choices_click = function(a) { return a.preventDefault(), this.results_showing || this.is_disabled ? void 0 : this.results_show() }, AbstractChosen.prototype.keyup_checker = function(a) { var b, c; switch(b = null != (c = a.which) ? c : a.keyCode, this.search_field_scale(), b) {
				case 8:
					if(this.is_multiple && this.backstroke_length < 1 && this.choices_count() > 0) return this.keydown_backstroke(); if(!this.pending_backstroke) return this.result_clear_highlight(), this.results_search(); break;
				case 13:
					if(a.preventDefault(), this.results_showing) return this.result_select(a); break;
				case 27:
					return this.results_showing && this.results_hide(), !0;
				case 9:
				case 38:
				case 40:
				case 16:
				case 91:
				case 17:
				case 18:
					break;
				default:
					return this.results_search() } }, AbstractChosen.prototype.clipboard_event_checker = function(a) { var b = this; return setTimeout(function() { return b.results_search() }, 50) }, AbstractChosen.prototype.container_width = function() { return null != this.options.width ? this.options.width : "" + this.form_field.offsetWidth + "px" }, AbstractChosen.prototype.include_option_in_results = function(a) { return this.is_multiple && !this.display_selected_options && a.selected ? !1 : !this.display_disabled_options && a.disabled ? !1 : a.empty ? !1 : !0 }, AbstractChosen.prototype.search_results_touchstart = function(a) { return this.touch_started = !0, this.search_results_mouseover(a) }, AbstractChosen.prototype.search_results_touchmove = function(a) { return this.touch_started = !1, this.search_results_mouseout(a) }, AbstractChosen.prototype.search_results_touchend = function(a) { return this.touch_started ? this.search_results_mouseup(a) : void 0 }, AbstractChosen.prototype.outerHTML = function(a) { var b; return a.outerHTML ? a.outerHTML : (b = document.createElement("div"), b.appendChild(a), b.innerHTML) }, AbstractChosen.browser_is_supported = function() { return "Microsoft Internet Explorer" === window.navigator.appName ? document.documentMode >= 8 : /iP(od|hone)/i.test(window.navigator.userAgent) || /IEMobile/i.test(window.navigator.userAgent) || /Windows Phone/i.test(window.navigator.userAgent) || /BlackBerry/i.test(window.navigator.userAgent) || /BB10/i.test(window.navigator.userAgent) || /Android.*Mobile/i.test(window.navigator.userAgent) ? !1 : !0 }, AbstractChosen.default_multiple_text = "Select Some Options", AbstractChosen.default_single_text = "Select an Option", AbstractChosen.default_no_result_text = "No results match", AbstractChosen }(), a = jQuery, a.fn.extend({ chosen: function(b) { return AbstractChosen.browser_is_supported() ? this.each(function(c) { var d, e; return d = a(this), e = d.data("chosen"), "destroy" === b ? void(e instanceof Chosen && e.destroy()) : void(e instanceof Chosen || d.data("chosen", new Chosen(this, b))) }) : this } }), Chosen = function(c) {
		function Chosen() { return b = Chosen.__super__.constructor.apply(this, arguments) } return d(Chosen, c), Chosen.prototype.setup = function() { return this.form_field_jq = a(this.form_field), this.current_selectedIndex = this.form_field.selectedIndex, this.is_rtl = this.form_field_jq.hasClass("chosen-rtl") }, Chosen.prototype.set_up_html = function() { var b, c; return b = ["chosen-container"], b.push("chosen-container-" + (this.is_multiple ? "multi" : "single")), this.inherit_select_classes && this.form_field.className && b.push(this.form_field.className), this.is_rtl && b.push("chosen-rtl"), c = { "class": b.join(" "), style: "width: " + this.container_width() + ";", title: this.form_field.title }, this.form_field.id.length && (c.id = this.form_field.id.replace(/[^\w]/g, "_") + "_chosen"), this.container = a("<div />", c), this.is_multiple ? this.container.html('<ul class="chosen-choices"><li class="search-field"><input type="text" value="' + this.default_text + '" class="default" autocomplete="off" style="width:25px;" /></li></ul><div class="chosen-drop"><ul class="chosen-results"></ul></div>') : this.container.html('<a class="chosen-single chosen-default"><span>' + this.default_text + '</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" /></div><ul class="chosen-results"></ul></div>'), this.form_field_jq.hide().after(this.container), this.dropdown = this.container.find("div.chosen-drop").first(), this.search_field = this.container.find("input").first(), this.search_results = this.container.find("ul.chosen-results").first(), this.search_field_scale(), this.search_no_results = this.container.find("li.no-results").first(), this.is_multiple ? (this.search_choices = this.container.find("ul.chosen-choices").first(), this.search_container = this.container.find("li.search-field").first()) : (this.search_container = this.container.find("div.chosen-search").first(), this.selected_item = this.container.find(".chosen-single").first()), this.results_build(), this.set_tab_index(), this.set_label_behavior() }, Chosen.prototype.on_ready = function() { return this.form_field_jq.trigger("chosen:ready", { chosen: this }) }, Chosen.prototype.register_observers = function() { var a = this; return this.container.bind("touchstart.chosen", function(b) { return a.container_mousedown(b), b.preventDefault() }), this.container.bind("touchend.chosen", function(b) { return a.container_mouseup(b), b.preventDefault() }), this.container.bind("mousedown.chosen", function(b) { a.container_mousedown(b) }), this.container.bind("mouseup.chosen", function(b) { a.container_mouseup(b) }), this.container.bind("mouseenter.chosen", function(b) { a.mouse_enter(b) }), this.container.bind("mouseleave.chosen", function(b) { a.mouse_leave(b) }), this.search_results.bind("mouseup.chosen", function(b) { a.search_results_mouseup(b) }), this.search_results.bind("mouseover.chosen", function(b) { a.search_results_mouseover(b) }), this.search_results.bind("mouseout.chosen", function(b) { a.search_results_mouseout(b) }), this.search_results.bind("mousewheel.chosen DOMMouseScroll.chosen", function(b) { a.search_results_mousewheel(b) }), this.search_results.bind("touchstart.chosen", function(b) { a.search_results_touchstart(b) }), this.search_results.bind("touchmove.chosen", function(b) { a.search_results_touchmove(b) }), this.search_results.bind("touchend.chosen", function(b) { a.search_results_touchend(b) }), this.form_field_jq.bind("chosen:updated.chosen", function(b) { a.results_update_field(b) }), this.form_field_jq.bind("chosen:activate.chosen", function(b) { a.activate_field(b) }), this.form_field_jq.bind("chosen:open.chosen", function(b) { a.container_mousedown(b) }), this.form_field_jq.bind("chosen:close.chosen", function(b) { a.input_blur(b) }), this.search_field.bind("blur.chosen", function(b) { a.input_blur(b) }), this.search_field.bind("keyup.chosen", function(b) { a.keyup_checker(b) }), this.search_field.bind("keydown.chosen", function(b) { a.keydown_checker(b) }), this.search_field.bind("focus.chosen", function(b) { a.input_focus(b) }), this.search_field.bind("cut.chosen", function(b) { a.clipboard_event_checker(b) }), this.search_field.bind("paste.chosen", function(b) { a.clipboard_event_checker(b) }), this.is_multiple ? this.search_choices.bind("click.chosen", function(b) { a.choices_click(b) }) : this.container.bind("click.chosen", function(a) { a.preventDefault() }) }, Chosen.prototype.destroy = function() { return a(this.container[0].ownerDocument).unbind("click.chosen", this.click_test_action), this.search_field[0].tabIndex && (this.form_field_jq[0].tabIndex = this.search_field[0].tabIndex), this.container.remove(), this.form_field_jq.removeData("chosen"), this.form_field_jq.show() }, Chosen.prototype.search_field_disabled = function() { return this.is_disabled = this.form_field_jq[0].disabled, this.is_disabled ? (this.container.addClass("chosen-disabled"), this.search_field[0].disabled = !0, this.is_multiple || this.selected_item.unbind("focus.chosen", this.activate_action), this.close_field()) : (this.container.removeClass("chosen-disabled"), this.search_field[0].disabled = !1, this.is_multiple ? void 0 : this.selected_item.bind("focus.chosen", this.activate_action)) }, Chosen.prototype.container_mousedown = function(b) { return this.is_disabled || (b && "mousedown" === b.type && !this.results_showing && b.preventDefault(), null != b && a(b.target).hasClass("search-choice-close")) ? void 0 : (this.active_field ? this.is_multiple || !b || a(b.target)[0] !== this.selected_item[0] && !a(b.target).parents("a.chosen-single").length || (b.preventDefault(), this.results_toggle()) : (this.is_multiple && this.search_field.val(""), a(this.container[0].ownerDocument).bind("click.chosen", this.click_test_action), this.results_show()), this.activate_field()) }, Chosen.prototype.container_mouseup = function(a) { return "ABBR" !== a.target.nodeName || this.is_disabled ? void 0 : this.results_reset(a) }, Chosen.prototype.search_results_mousewheel = function(a) { var b; return a.originalEvent && (b = a.originalEvent.deltaY || -a.originalEvent.wheelDelta || a.originalEvent.detail), null != b ? (a.preventDefault(), "DOMMouseScroll" === a.type && (b = 40 * b), this.search_results.scrollTop(b + this.search_results.scrollTop())) : void 0 }, Chosen.prototype.blur_test = function(a) { return !this.active_field && this.container.hasClass("chosen-container-active") ? this.close_field() : void 0 }, Chosen.prototype.close_field = function() { return a(this.container[0].ownerDocument).unbind("click.chosen", this.click_test_action), this.active_field = !1, this.results_hide(), this.container.removeClass("chosen-container-active"), this.clear_backstroke(), this.show_search_field_default(), this.search_field_scale() }, Chosen.prototype.activate_field = function() { return this.container.addClass("chosen-container-active"), this.active_field = !0, this.search_field.val(this.search_field.val()), this.search_field.focus() }, Chosen.prototype.test_active_click = function(b) { var c; return c = a(b.target).closest(".chosen-container"), c.length && this.container[0] === c[0] ? this.active_field = !0 : this.close_field() }, Chosen.prototype.results_build = function() { return this.parsing = !0, this.selected_option_count = null, this.results_data = SelectParser.select_to_array(this.form_field), this.is_multiple ? this.search_choices.find("li.search-choice").remove() : this.is_multiple || (this.single_set_selected_text(), this.disable_search || this.form_field.options.length <= this.disable_search_threshold ? (this.search_field[0].readOnly = !0, this.container.addClass("chosen-container-single-nosearch")) : (this.search_field[0].readOnly = !1, this.container.removeClass("chosen-container-single-nosearch"))), this.update_results_content(this.results_option_build({ first: !0 })), this.search_field_disabled(), this.show_search_field_default(), this.search_field_scale(), this.parsing = !1 }, Chosen.prototype.result_do_highlight = function(a) { var b, c, d, e, f; if(a.length) { if(this.result_clear_highlight(), this.result_highlight = a, this.result_highlight.addClass("highlighted"), d = parseInt(this.search_results.css("maxHeight"), 10), f = this.search_results.scrollTop(), e = d + f, c = this.result_highlight.position().top + this.search_results.scrollTop(), b = c + this.result_highlight.outerHeight(), b >= e) return this.search_results.scrollTop(b - d > 0 ? b - d : 0); if(f > c) return this.search_results.scrollTop(c) } }, Chosen.prototype.result_clear_highlight = function() { return this.result_highlight && this.result_highlight.removeClass("highlighted"), this.result_highlight = null }, Chosen.prototype.results_show = function() { return this.is_multiple && this.max_selected_options <= this.choices_count() ? (this.form_field_jq.trigger("chosen:maxselected", { chosen: this }), !1) : (this.container.addClass("chosen-with-drop"), this.results_showing = !0, this.search_field.focus(), this.search_field.val(this.search_field.val()), this.winnow_results(), this.form_field_jq.trigger("chosen:showing_dropdown", { chosen: this })) }, Chosen.prototype.update_results_content = function(a) { return this.search_results.html(a) }, Chosen.prototype.results_hide = function() { return this.results_showing && (this.result_clear_highlight(), this.container.removeClass("chosen-with-drop"), this.form_field_jq.trigger("chosen:hiding_dropdown", { chosen: this })), this.results_showing = !1 }, Chosen.prototype.set_tab_index = function(a) { var b; return this.form_field.tabIndex ? (b = this.form_field.tabIndex, this.form_field.tabIndex = -1, this.search_field[0].tabIndex = b) : void 0 }, Chosen.prototype.set_label_behavior = function() { var b = this; return this.form_field_label = this.form_field_jq.parents("label"), !this.form_field_label.length && this.form_field.id.length && (this.form_field_label = a("label[for='" + this.form_field.id + "']")), this.form_field_label.length > 0 ? this.form_field_label.bind("click.chosen", function(a) { return b.is_multiple ? b.container_mousedown(a) : b.activate_field() }) : void 0 }, Chosen.prototype.show_search_field_default = function() { return this.is_multiple && this.choices_count() < 1 && !this.active_field ? (this.search_field.val(this.default_text), this.search_field.addClass("default")) : (this.search_field.val(""), this.search_field.removeClass("default")) }, Chosen.prototype.search_results_mouseup = function(b) { var c; return c = a(b.target).hasClass("active-result") ? a(b.target) : a(b.target).parents(".active-result").first(), c.length ? (this.result_highlight = c, this.result_select(b), this.search_field.focus()) : void 0 }, Chosen.prototype.search_results_mouseover = function(b) { var c; return c = a(b.target).hasClass("active-result") ? a(b.target) : a(b.target).parents(".active-result").first(), c ? this.result_do_highlight(c) : void 0 }, Chosen.prototype.search_results_mouseout = function(b) { return a(b.target).hasClass("active-result") ? this.result_clear_highlight() : void 0 }, Chosen.prototype.choice_build = function(b) { var c, d, e = this; return c = a("<li />", { "class": "search-choice" }).html("<span>" + this.choice_label(b) + "</span>"), b.disabled ? c.addClass("search-choice-disabled") : (d = a("<a />", { "class": "search-choice-close", "data-option-array-index": b.array_index }), d.bind("click.chosen", function(a) { return e.choice_destroy_link_click(a) }), c.append(d)), this.search_container.before(c) }, Chosen.prototype.choice_destroy_link_click = function(b) { return b.preventDefault(), b.stopPropagation(), this.is_disabled ? void 0 : this.choice_destroy(a(b.target)) }, Chosen.prototype.choice_destroy = function(a) { return this.result_deselect(a[0].getAttribute("data-option-array-index")) ? (this.show_search_field_default(), this.is_multiple && this.choices_count() > 0 && this.search_field.val().length < 1 && this.results_hide(), a.parents("li").first().remove(), this.search_field_scale()) : void 0 }, Chosen.prototype.results_reset = function() { return this.reset_single_select_options(), this.form_field.options[0].selected = !0, this.single_set_selected_text(), this.show_search_field_default(), this.results_reset_cleanup(), this.form_field_jq.trigger("change"), this.active_field ? this.results_hide() : void 0 }, Chosen.prototype.results_reset_cleanup = function() { return this.current_selectedIndex = this.form_field.selectedIndex, this.selected_item.find("abbr").remove() }, Chosen.prototype.result_select = function(a) { var b, c; return this.result_highlight ? (b = this.result_highlight, this.result_clear_highlight(), this.is_multiple && this.max_selected_options <= this.choices_count() ? (this.form_field_jq.trigger("chosen:maxselected", { chosen: this }), !1) : (this.is_multiple ? b.removeClass("active-result") : this.reset_single_select_options(), b.addClass("result-selected"), c = this.results_data[b[0].getAttribute("data-option-array-index")], c.selected = !0, this.form_field.options[c.options_index].selected = !0, this.selected_option_count = null, this.is_multiple ? this.choice_build(c) : this.single_set_selected_text(this.choice_label(c)), (a.metaKey || a.ctrlKey) && this.is_multiple || this.results_hide(), this.show_search_field_default(), (this.is_multiple || this.form_field.selectedIndex !== this.current_selectedIndex) && this.form_field_jq.trigger("change", { selected: this.form_field.options[c.options_index].value }), this.current_selectedIndex = this.form_field.selectedIndex, a.preventDefault(), this.search_field_scale())) : void 0 }, Chosen.prototype.single_set_selected_text = function(a) { return null == a && (a = this.default_text), a === this.default_text ? this.selected_item.addClass("chosen-default") : (this.single_deselect_control_build(), this.selected_item.removeClass("chosen-default")), this.selected_item.find("span").html(a) }, Chosen.prototype.result_deselect = function(a) { var b; return b = this.results_data[a], this.form_field.options[b.options_index].disabled ? !1 : (b.selected = !1, this.form_field.options[b.options_index].selected = !1, this.selected_option_count = null, this.result_clear_highlight(), this.results_showing && this.winnow_results(), this.form_field_jq.trigger("change", { deselected: this.form_field.options[b.options_index].value }), this.search_field_scale(), !0) }, Chosen.prototype.single_deselect_control_build = function() { return this.allow_single_deselect ? (this.selected_item.find("abbr").length || this.selected_item.find("span").first().after('<abbr class="search-choice-close"></abbr>'), this.selected_item.addClass("chosen-single-with-deselect")) : void 0 }, Chosen.prototype.get_search_text = function() { return a("<div/>").text(a.trim(this.search_field.val())).html() }, Chosen.prototype.winnow_results_set_highlight = function() { var a, b; return b = this.is_multiple ? [] : this.search_results.find(".result-selected.active-result"), a = b.length ? b.first() : this.search_results.find(".active-result").first(), null != a ? this.result_do_highlight(a) : void 0 }, Chosen.prototype.no_results = function(b) { var c; return c = a('<li class="no-results">' + this.results_none_found + ' "<span></span>"</li>'), c.find("span").first().html(b), this.search_results.append(c), this.form_field_jq.trigger("chosen:no_results", { chosen: this }) }, Chosen.prototype.no_results_clear = function() { return this.search_results.find(".no-results").remove() }, Chosen.prototype.keydown_arrow = function() { var a; return this.results_showing && this.result_highlight ? (a = this.result_highlight.nextAll("li.active-result").first()) ? this.result_do_highlight(a) : void 0 : this.results_show() }, Chosen.prototype.keyup_arrow = function() { var a; return this.results_showing || this.is_multiple ? this.result_highlight ? (a = this.result_highlight.prevAll("li.active-result"), a.length ? this.result_do_highlight(a.first()) : (this.choices_count() > 0 && this.results_hide(), this.result_clear_highlight())) : void 0 : this.results_show() }, Chosen.prototype.keydown_backstroke = function() { var a; return this.pending_backstroke ? (this.choice_destroy(this.pending_backstroke.find("a").first()), this.clear_backstroke()) : (a = this.search_container.siblings("li.search-choice").last(), a.length && !a.hasClass("search-choice-disabled") ? (this.pending_backstroke = a, this.single_backstroke_delete ? this.keydown_backstroke() : this.pending_backstroke.addClass("search-choice-focus")) : void 0) }, Chosen.prototype.clear_backstroke = function() { return this.pending_backstroke && this.pending_backstroke.removeClass("search-choice-focus"), this.pending_backstroke = null }, Chosen.prototype.keydown_checker = function(a) { var b, c; switch(b = null != (c = a.which) ? c : a.keyCode, this.search_field_scale(), 8 !== b && this.pending_backstroke && this.clear_backstroke(), b) {
				case 8:
					this.backstroke_length = this.search_field.val().length; break;
				case 9:
					this.results_showing && !this.is_multiple && this.result_select(a), this.mouse_on_container = !1; break;
				case 13:
					this.results_showing && a.preventDefault(); break;
				case 32:
					this.disable_search && a.preventDefault(); break;
				case 38:
					a.preventDefault(), this.keyup_arrow(); break;
				case 40:
					a.preventDefault(), this.keydown_arrow() } }, Chosen.prototype.search_field_scale = function() { var b, c, d, e, f, g, h, i, j; if(this.is_multiple) { for(d = 0, h = 0, f = "position:absolute; left: -1000px; top: -1000px; display:none;", g = ["font-size", "font-style", "font-weight", "font-family", "line-height", "text-transform", "letter-spacing"], i = 0, j = g.length; j > i; i++) e = g[i], f += e + ":" + this.search_field.css(e) + ";"; return b = a("<div />", { style: f }), b.text(this.search_field.val()), a("body").append(b), h = b.width() + 25, b.remove(), c = this.container.outerWidth(), h > c - 10 && (h = c - 10), this.search_field.css({ width: h + "px" }) } }, Chosen }(AbstractChosen) }).call(this);

/*! jQuery Validation Plugin - v1.15.1 - 7/22/2016
 * http://jqueryvalidation.org/
 * Copyright (c) 2016 Jörn Zaefferer; Licensed MIT */
! function(a) { "function" == typeof define && define.amd ? define(["jquery"], a) : "object" == typeof module && module.exports ? module.exports = a(require("jquery")) : a(jQuery) }(function(a) { a.extend(a.fn, { validate: function(b) { if(!this.length) return void(b && b.debug && window.console && console.warn("Nothing selected, can't validate, returning nothing.")); var c = a.data(this[0], "validator"); return c ? c : (this.attr("novalidate", "novalidate"), c = new a.validator(b, this[0]), a.data(this[0], "validator", c), c.settings.onsubmit && (this.on("click.validate", ":submit", function(b) { c.settings.submitHandler && (c.submitButton = b.target), a(this).hasClass("cancel") && (c.cancelSubmit = !0), void 0 !== a(this).attr("formnovalidate") && (c.cancelSubmit = !0) }), this.on("submit.validate", function(b) {
				function d() { var d, e; return !c.settings.submitHandler || (c.submitButton && (d = a("<input type='hidden'/>").attr("name", c.submitButton.name).val(a(c.submitButton).val()).appendTo(c.currentForm)), e = c.settings.submitHandler.call(c, c.currentForm, b), c.submitButton && d.remove(), void 0 !== e && e) } return c.settings.debug && b.preventDefault(), c.cancelSubmit ? (c.cancelSubmit = !1, d()) : c.form() ? c.pendingRequest ? (c.formSubmitted = !0, !1) : d() : (c.focusInvalid(), !1) })), c) }, valid: function() { var b, c, d; return a(this[0]).is("form") ? b = this.validate().form() : (d = [], b = !0, c = a(this[0].form).validate(), this.each(function() { b = c.element(this) && b, b || (d = d.concat(c.errorList)) }), c.errorList = d), b }, rules: function(b, c) { var d, e, f, g, h, i, j = this[0]; if(null != j && null != j.form) { if(b) switch(d = a.data(j.form, "validator").settings, e = d.rules, f = a.validator.staticRules(j), b) {
					case "add":
						a.extend(f, a.validator.normalizeRule(c)), delete f.messages, e[j.name] = f, c.messages && (d.messages[j.name] = a.extend(d.messages[j.name], c.messages)); break;
					case "remove":
						return c ? (i = {}, a.each(c.split(/\s/), function(b, c) { i[c] = f[c], delete f[c], "required" === c && a(j).removeAttr("aria-required") }), i) : (delete e[j.name], f) }
				return g = a.validator.normalizeRules(a.extend({}, a.validator.classRules(j), a.validator.attributeRules(j), a.validator.dataRules(j), a.validator.staticRules(j)), j), g.required && (h = g.required, delete g.required, g = a.extend({ required: h }, g), a(j).attr("aria-required", "true")), g.remote && (h = g.remote, delete g.remote, g = a.extend(g, { remote: h })), g } } }), a.extend(a.expr[":"], { blank: function(b) { return !a.trim("" + a(b).val()) }, filled: function(b) { var c = a(b).val(); return null !== c && !!a.trim("" + c) }, unchecked: function(b) { return !a(b).prop("checked") } }), a.validator = function(b, c) { this.settings = a.extend(!0, {}, a.validator.defaults, b), this.currentForm = c, this.init() }, a.validator.format = function(b, c) { return 1 === arguments.length ? function() { var c = a.makeArray(arguments); return c.unshift(b), a.validator.format.apply(this, c) } : void 0 === c ? b : (arguments.length > 2 && c.constructor !== Array && (c = a.makeArray(arguments).slice(1)), c.constructor !== Array && (c = [c]), a.each(c, function(a, c) { b = b.replace(new RegExp("\\{" + a + "\\}", "g"), function() { return c }) }), b) }, a.extend(a.validator, { defaults: { messages: {}, groups: {}, rules: {}, errorClass: "error", pendingClass: "pending", validClass: "valid", errorElement: "label", focusCleanup: !1, focusInvalid: !0, errorContainer: a([]), errorLabelContainer: a([]), onsubmit: !0, ignore: ":hidden", ignoreTitle: !1, onfocusin: function(a) { this.lastActive = a, this.settings.focusCleanup && (this.settings.unhighlight && this.settings.unhighlight.call(this, a, this.settings.errorClass, this.settings.validClass), this.hideThese(this.errorsFor(a))) }, onfocusout: function(a) { this.checkable(a) || !(a.name in this.submitted) && this.optional(a) || this.element(a) }, onkeyup: function(b, c) { var d = [16, 17, 18, 20, 35, 36, 37, 38, 39, 40, 45, 144, 225];
				9 === c.which && "" === this.elementValue(b) || a.inArray(c.keyCode, d) !== -1 || (b.name in this.submitted || b.name in this.invalid) && this.element(b) }, onclick: function(a) { a.name in this.submitted ? this.element(a) : a.parentNode.name in this.submitted && this.element(a.parentNode) }, highlight: function(b, c, d) { "radio" === b.type ? this.findByName(b.name).addClass(c).removeClass(d) : a(b).addClass(c).removeClass(d) }, unhighlight: function(b, c, d) { "radio" === b.type ? this.findByName(b.name).removeClass(c).addClass(d) : a(b).removeClass(c).addClass(d) } }, setDefaults: function(b) { a.extend(a.validator.defaults, b) }, messages: { required: "This field is required.", remote: "Please fix this field.", email: "Please enter a valid email address.", url: "Please enter a valid URL.", date: "Please enter a valid date.", dateISO: "Please enter a valid date (ISO).", number: "Please enter a valid number.", digits: "Please enter only digits.", equalTo: "Please enter the same value again.", maxlength: a.validator.format("Please enter no more than {0} characters."), minlength: a.validator.format("Please enter at least {0} characters."), rangelength: a.validator.format("Please enter a value between {0} and {1} characters long."), range: a.validator.format("Please enter a value between {0} and {1}."), max: a.validator.format("Please enter a value less than or equal to {0}."), min: a.validator.format("Please enter a value greater than or equal to {0}."), step: a.validator.format("Please enter a multiple of {0}.") }, autoCreateRanges: !1, prototype: { init: function() {
				function b(b) {!this.form && this.hasAttribute("contenteditable") && (this.form = a(this).closest("form")[0]); var c = a.data(this.form, "validator"),
						d = "on" + b.type.replace(/^validate/, ""),
						e = c.settings;
					e[d] && !a(this).is(e.ignore) && e[d].call(c, this, b) } this.labelContainer = a(this.settings.errorLabelContainer), this.errorContext = this.labelContainer.length && this.labelContainer || a(this.currentForm), this.containers = a(this.settings.errorContainer).add(this.settings.errorLabelContainer), this.submitted = {}, this.valueCache = {}, this.pendingRequest = 0, this.pending = {}, this.invalid = {}, this.reset(); var c, d = this.groups = {};
				a.each(this.settings.groups, function(b, c) { "string" == typeof c && (c = c.split(/\s/)), a.each(c, function(a, c) { d[c] = b }) }), c = this.settings.rules, a.each(c, function(b, d) { c[b] = a.validator.normalizeRule(d) }), a(this.currentForm).on("focusin.validate focusout.validate keyup.validate", ":text, [type='password'], [type='file'], select, textarea, [type='number'], [type='search'], [type='tel'], [type='url'], [type='email'], [type='datetime'], [type='date'], [type='month'], [type='week'], [type='time'], [type='datetime-local'], [type='range'], [type='color'], [type='radio'], [type='checkbox'], [contenteditable]", b).on("click.validate", "select, option, [type='radio'], [type='checkbox']", b), this.settings.invalidHandler && a(this.currentForm).on("invalid-form.validate", this.settings.invalidHandler), a(this.currentForm).find("[required], [data-rule-required], .required").attr("aria-required", "true") }, form: function() { return this.checkForm(), a.extend(this.submitted, this.errorMap), this.invalid = a.extend({}, this.errorMap), this.valid() || a(this.currentForm).triggerHandler("invalid-form", [this]), this.showErrors(), this.valid() }, checkForm: function() { this.prepareForm(); for(var a = 0, b = this.currentElements = this.elements(); b[a]; a++) this.check(b[a]); return this.valid() }, element: function(b) { var c, d, e = this.clean(b),
					f = this.validationTargetFor(e),
					g = this,
					h = !0; return void 0 === f ? delete this.invalid[e.name] : (this.prepareElement(f), this.currentElements = a(f), d = this.groups[f.name], d && a.each(this.groups, function(a, b) { b === d && a !== f.name && (e = g.validationTargetFor(g.clean(g.findByName(a))), e && e.name in g.invalid && (g.currentElements.push(e), h = g.check(e) && h)) }), c = this.check(f) !== !1, h = h && c, c ? this.invalid[f.name] = !1 : this.invalid[f.name] = !0, this.numberOfInvalids() || (this.toHide = this.toHide.add(this.containers)), this.showErrors(), a(b).attr("aria-invalid", !c)), h }, showErrors: function(b) { if(b) { var c = this;
					a.extend(this.errorMap, b), this.errorList = a.map(this.errorMap, function(a, b) { return { message: a, element: c.findByName(b)[0] } }), this.successList = a.grep(this.successList, function(a) { return !(a.name in b) }) } this.settings.showErrors ? this.settings.showErrors.call(this, this.errorMap, this.errorList) : this.defaultShowErrors() }, resetForm: function() { a.fn.resetForm && a(this.currentForm).resetForm(), this.invalid = {}, this.submitted = {}, this.prepareForm(), this.hideErrors(); var b = this.elements().removeData("previousValue").removeAttr("aria-invalid");
				this.resetElements(b) }, resetElements: function(a) { var b; if(this.settings.unhighlight)
					for(b = 0; a[b]; b++) this.settings.unhighlight.call(this, a[b], this.settings.errorClass, ""), this.findByName(a[b].name).removeClass(this.settings.validClass);
				else a.removeClass(this.settings.errorClass).removeClass(this.settings.validClass) }, numberOfInvalids: function() { return this.objectLength(this.invalid) }, objectLength: function(a) { var b, c = 0; for(b in a) a[b] && c++; return c }, hideErrors: function() { this.hideThese(this.toHide) }, hideThese: function(a) { a.not(this.containers).text(""), this.addWrapper(a).hide() }, valid: function() { return 0 === this.size() }, size: function() { return this.errorList.length }, focusInvalid: function() { if(this.settings.focusInvalid) try { a(this.findLastActive() || this.errorList.length && this.errorList[0].element || []).filter(":visible").focus().trigger("focusin") } catch(a) {} }, findLastActive: function() { var b = this.lastActive; return b && 1 === a.grep(this.errorList, function(a) { return a.element.name === b.name }).length && b }, elements: function() { var b = this,
					c = {}; return a(this.currentForm).find("input, select, textarea, [contenteditable]").not(":submit, :reset, :image, :disabled").not(this.settings.ignore).filter(function() { var d = this.name || a(this).attr("name"); return !d && b.settings.debug && window.console && console.error("%o has no name assigned", this), this.hasAttribute("contenteditable") && (this.form = a(this).closest("form")[0]), !(d in c || !b.objectLength(a(this).rules())) && (c[d] = !0, !0) }) }, clean: function(b) { return a(b)[0] }, errors: function() { var b = this.settings.errorClass.split(" ").join("."); return a(this.settings.errorElement + "." + b, this.errorContext) }, resetInternals: function() { this.successList = [], this.errorList = [], this.errorMap = {}, this.toShow = a([]), this.toHide = a([]) }, reset: function() { this.resetInternals(), this.currentElements = a([]) }, prepareForm: function() { this.reset(), this.toHide = this.errors().add(this.containers) }, prepareElement: function(a) { this.reset(), this.toHide = this.errorsFor(a) }, elementValue: function(b) { var c, d, e = a(b),
					f = b.type; return "radio" === f || "checkbox" === f ? this.findByName(b.name).filter(":checked").val() : "number" === f && "undefined" != typeof b.validity ? b.validity.badInput ? "NaN" : e.val() : (c = b.hasAttribute("contenteditable") ? e.text() : e.val(), "file" === f ? "C:\\fakepath\\" === c.substr(0, 12) ? c.substr(12) : (d = c.lastIndexOf("/"), d >= 0 ? c.substr(d + 1) : (d = c.lastIndexOf("\\"), d >= 0 ? c.substr(d + 1) : c)) : "string" == typeof c ? c.replace(/\r/g, "") : c) }, check: function(b) { b = this.validationTargetFor(this.clean(b)); var c, d, e, f = a(b).rules(),
					g = a.map(f, function(a, b) { return b }).length,
					h = !1,
					i = this.elementValue(b); if("function" == typeof f.normalizer) { if(i = f.normalizer.call(b, i), "string" != typeof i) throw new TypeError("The normalizer should return a string value.");
					delete f.normalizer } for(d in f) { e = { method: d, parameters: f[d] }; try { if(c = a.validator.methods[d].call(this, i, b, e.parameters), "dependency-mismatch" === c && 1 === g) { h = !0; continue } if(h = !1, "pending" === c) return void(this.toHide = this.toHide.not(this.errorsFor(b))); if(!c) return this.formatAndAdd(b, e), !1 } catch(a) { throw this.settings.debug && window.console && console.log("Exception occurred when checking element " + b.id + ", check the '" + e.method + "' method.", a), a instanceof TypeError && (a.message += ".  Exception occurred when checking element " + b.id + ", check the '" + e.method + "' method."), a } } if(!h) return this.objectLength(f) && this.successList.push(b), !0 }, customDataMessage: function(b, c) { return a(b).data("msg" + c.charAt(0).toUpperCase() + c.substring(1).toLowerCase()) || a(b).data("msg") }, customMessage: function(a, b) { var c = this.settings.messages[a]; return c && (c.constructor === String ? c : c[b]) }, findDefined: function() { for(var a = 0; a < arguments.length; a++)
					if(void 0 !== arguments[a]) return arguments[a] }, defaultMessage: function(b, c) { "string" == typeof c && (c = { method: c }); var d = this.findDefined(this.customMessage(b.name, c.method), this.customDataMessage(b, c.method), !this.settings.ignoreTitle && b.title || void 0, a.validator.messages[c.method], "<strong>Warning: No message defined for " + b.name + "</strong>"),
					e = /\$?\{(\d+)\}/g; return "function" == typeof d ? d = d.call(this, c.parameters, b) : e.test(d) && (d = a.validator.format(d.replace(e, "{$1}"), c.parameters)), d }, formatAndAdd: function(a, b) { var c = this.defaultMessage(a, b);
				this.errorList.push({ message: c, element: a, method: b.method }), this.errorMap[a.name] = c, this.submitted[a.name] = c }, addWrapper: function(a) { return this.settings.wrapper && (a = a.add(a.parent(this.settings.wrapper))), a }, defaultShowErrors: function() { var a, b, c; for(a = 0; this.errorList[a]; a++) c = this.errorList[a], this.settings.highlight && this.settings.highlight.call(this, c.element, this.settings.errorClass, this.settings.validClass), this.showLabel(c.element, c.message); if(this.errorList.length && (this.toShow = this.toShow.add(this.containers)), this.settings.success)
					for(a = 0; this.successList[a]; a++) this.showLabel(this.successList[a]); if(this.settings.unhighlight)
					for(a = 0, b = this.validElements(); b[a]; a++) this.settings.unhighlight.call(this, b[a], this.settings.errorClass, this.settings.validClass);
				this.toHide = this.toHide.not(this.toShow), this.hideErrors(), this.addWrapper(this.toShow).show() }, validElements: function() { return this.currentElements.not(this.invalidElements()) }, invalidElements: function() { return a(this.errorList).map(function() { return this.element }) }, showLabel: function(b, c) { var d, e, f, g, h = this.errorsFor(b),
					i = this.idOrName(b),
					j = a(b).attr("aria-describedby");
				h.length ? (h.removeClass(this.settings.validClass).addClass(this.settings.errorClass), h.html(c)) : (h = a("<" + this.settings.errorElement + ">").attr("id", i + "-error").addClass(this.settings.errorClass).html(c || ""), d = h, this.settings.wrapper && (d = h.hide().show().wrap("<" + this.settings.wrapper + "/>").parent()), this.labelContainer.length ? this.labelContainer.append(d) : this.settings.errorPlacement ? this.settings.errorPlacement.call(this, d, a(b)) : d.insertAfter(b), h.is("label") ? h.attr("for", i) : 0 === h.parents("label[for='" + this.escapeCssMeta(i) + "']").length && (f = h.attr("id"), j ? j.match(new RegExp("\\b" + this.escapeCssMeta(f) + "\\b")) || (j += " " + f) : j = f, a(b).attr("aria-describedby", j), e = this.groups[b.name], e && (g = this, a.each(g.groups, function(b, c) { c === e && a("[name='" + g.escapeCssMeta(b) + "']", g.currentForm).attr("aria-describedby", h.attr("id")) })))), !c && this.settings.success && (h.text(""), "string" == typeof this.settings.success ? h.addClass(this.settings.success) : this.settings.success(h, b)), this.toShow = this.toShow.add(h) }, errorsFor: function(b) { var c = this.escapeCssMeta(this.idOrName(b)),
					d = a(b).attr("aria-describedby"),
					e = "label[for='" + c + "'], label[for='" + c + "'] *"; return d && (e = e + ", #" + this.escapeCssMeta(d).replace(/\s+/g, ", #")), this.errors().filter(e) }, escapeCssMeta: function(a) { return a.replace(/([\\!"#$%&'()*+,./:;<=>?@\[\]^`{|}~])/g, "\\$1") }, idOrName: function(a) { return this.groups[a.name] || (this.checkable(a) ? a.name : a.id || a.name) }, validationTargetFor: function(b) { return this.checkable(b) && (b = this.findByName(b.name)), a(b).not(this.settings.ignore)[0] }, checkable: function(a) { return /radio|checkbox/i.test(a.type) }, findByName: function(b) { return a(this.currentForm).find("[name='" + this.escapeCssMeta(b) + "']") }, getLength: function(b, c) { switch(c.nodeName.toLowerCase()) {
					case "select":
						return a("option:selected", c).length;
					case "input":
						if(this.checkable(c)) return this.findByName(c.name).filter(":checked").length } return b.length }, depend: function(a, b) { return !this.dependTypes[typeof a] || this.dependTypes[typeof a](a, b) }, dependTypes: { boolean: function(a) { return a }, string: function(b, c) { return !!a(b, c.form).length }, function: function(a, b) { return a(b) } }, optional: function(b) { var c = this.elementValue(b); return !a.validator.methods.required.call(this, c, b) && "dependency-mismatch" }, startRequest: function(b) { this.pending[b.name] || (this.pendingRequest++, a(b).addClass(this.settings.pendingClass), this.pending[b.name] = !0) }, stopRequest: function(b, c) { this.pendingRequest--, this.pendingRequest < 0 && (this.pendingRequest = 0), delete this.pending[b.name], a(b).removeClass(this.settings.pendingClass), c && 0 === this.pendingRequest && this.formSubmitted && this.form() ? (a(this.currentForm).submit(), this.formSubmitted = !1) : !c && 0 === this.pendingRequest && this.formSubmitted && (a(this.currentForm).triggerHandler("invalid-form", [this]), this.formSubmitted = !1) }, previousValue: function(b, c) { return c = "string" == typeof c && c || "remote", a.data(b, "previousValue") || a.data(b, "previousValue", { old: null, valid: !0, message: this.defaultMessage(b, { method: c }) }) }, destroy: function() { this.resetForm(), a(this.currentForm).off(".validate").removeData("validator").find(".validate-equalTo-blur").off(".validate-equalTo").removeClass("validate-equalTo-blur") } }, classRuleSettings: { required: { required: !0 }, email: { email: !0 }, url: { url: !0 }, date: { date: !0 }, dateISO: { dateISO: !0 }, number: { number: !0 }, digits: { digits: !0 }, creditcard: { creditcard: !0 } }, addClassRules: function(b, c) { b.constructor === String ? this.classRuleSettings[b] = c : a.extend(this.classRuleSettings, b) }, classRules: function(b) { var c = {},
				d = a(b).attr("class"); return d && a.each(d.split(" "), function() { this in a.validator.classRuleSettings && a.extend(c, a.validator.classRuleSettings[this]) }), c }, normalizeAttributeRule: function(a, b, c, d) { /min|max|step/.test(c) && (null === b || /number|range|text/.test(b)) && (d = Number(d), isNaN(d) && (d = void 0)), d || 0 === d ? a[c] = d : b === c && "range" !== b && (a[c] = !0) }, attributeRules: function(b) { var c, d, e = {},
				f = a(b),
				g = b.getAttribute("type"); for(c in a.validator.methods) "required" === c ? (d = b.getAttribute(c), "" === d && (d = !0), d = !!d) : d = f.attr(c), this.normalizeAttributeRule(e, g, c, d); return e.maxlength && /-1|2147483647|524288/.test(e.maxlength) && delete e.maxlength, e }, dataRules: function(b) { var c, d, e = {},
				f = a(b),
				g = b.getAttribute("type"); for(c in a.validator.methods) d = f.data("rule" + c.charAt(0).toUpperCase() + c.substring(1).toLowerCase()), this.normalizeAttributeRule(e, g, c, d); return e }, staticRules: function(b) { var c = {},
				d = a.data(b.form, "validator"); return d.settings.rules && (c = a.validator.normalizeRule(d.settings.rules[b.name]) || {}), c }, normalizeRules: function(b, c) { return a.each(b, function(d, e) { if(e === !1) return void delete b[d]; if(e.param || e.depends) { var f = !0; switch(typeof e.depends) {
						case "string":
							f = !!a(e.depends, c.form).length; break;
						case "function":
							f = e.depends.call(c, c) } f ? b[d] = void 0 === e.param || e.param : (a.data(c.form, "validator").resetElements(a(c)), delete b[d]) } }), a.each(b, function(d, e) { b[d] = a.isFunction(e) && "normalizer" !== d ? e(c) : e }), a.each(["minlength", "maxlength"], function() { b[this] && (b[this] = Number(b[this])) }), a.each(["rangelength", "range"], function() { var c;
				b[this] && (a.isArray(b[this]) ? b[this] = [Number(b[this][0]), Number(b[this][1])] : "string" == typeof b[this] && (c = b[this].replace(/[\[\]]/g, "").split(/[\s,]+/), b[this] = [Number(c[0]), Number(c[1])])) }), a.validator.autoCreateRanges && (null != b.min && null != b.max && (b.range = [b.min, b.max], delete b.min, delete b.max), null != b.minlength && null != b.maxlength && (b.rangelength = [b.minlength, b.maxlength], delete b.minlength, delete b.maxlength)), b }, normalizeRule: function(b) { if("string" == typeof b) { var c = {};
				a.each(b.split(/\s/), function() { c[this] = !0 }), b = c } return b }, addMethod: function(b, c, d) { a.validator.methods[b] = c, a.validator.messages[b] = void 0 !== d ? d : a.validator.messages[b], c.length < 3 && a.validator.addClassRules(b, a.validator.normalizeRule(b)) }, methods: { required: function(b, c, d) { if(!this.depend(d, c)) return "dependency-mismatch"; if("select" === c.nodeName.toLowerCase()) { var e = a(c).val(); return e && e.length > 0 } return this.checkable(c) ? this.getLength(b, c) > 0 : b.length > 0 }, email: function(a, b) { return this.optional(b) || /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/.test(a) }, url: function(a, b) { return this.optional(b) || /^(?:(?:(?:https?|ftp):)?\/\/)(?:\S+(?::\S*)?@)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})).?)(?::\d{2,5})?(?:[/?#]\S*)?$/i.test(a) }, date: function(a, b) { return this.optional(b) || !/Invalid|NaN/.test(new Date(a).toString()) }, dateISO: function(a, b) { return this.optional(b) || /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$/.test(a) }, number: function(a, b) { return this.optional(b) || /^(?:-?\d+|-?\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/.test(a) }, digits: function(a, b) { return this.optional(b) || /^\d+$/.test(a) }, minlength: function(b, c, d) { var e = a.isArray(b) ? b.length : this.getLength(b, c); return this.optional(c) || e >= d }, maxlength: function(b, c, d) { var e = a.isArray(b) ? b.length : this.getLength(b, c); return this.optional(c) || e <= d }, rangelength: function(b, c, d) { var e = a.isArray(b) ? b.length : this.getLength(b, c); return this.optional(c) || e >= d[0] && e <= d[1] }, min: function(a, b, c) { return this.optional(b) || a >= c }, max: function(a, b, c) { return this.optional(b) || a <= c }, range: function(a, b, c) { return this.optional(b) || a >= c[0] && a <= c[1] }, step: function(b, c, d) { var e, f = a(c).attr("type"),
					g = "Step attribute on input type " + f + " is not supported.",
					h = ["text", "number", "range"],
					i = new RegExp("\\b" + f + "\\b"),
					j = f && !i.test(h.join()),
					k = function(a) { var b = ("" + a).match(/(?:\.(\d+))?$/); return b && b[1] ? b[1].length : 0 },
					l = function(a) { return Math.round(a * Math.pow(10, e)) },
					m = !0; if(j) throw new Error(g); return e = k(d), (k(b) > e || l(b) % l(d) !== 0) && (m = !1), this.optional(c) || m }, equalTo: function(b, c, d) { var e = a(d); return this.settings.onfocusout && e.not(".validate-equalTo-blur").length && e.addClass("validate-equalTo-blur").on("blur.validate-equalTo", function() { a(c).valid() }), b === e.val() }, remote: function(b, c, d, e) { if(this.optional(c)) return "dependency-mismatch";
				e = "string" == typeof e && e || "remote"; var f, g, h, i = this.previousValue(c, e); return this.settings.messages[c.name] || (this.settings.messages[c.name] = {}), i.originalMessage = i.originalMessage || this.settings.messages[c.name][e], this.settings.messages[c.name][e] = i.message, d = "string" == typeof d && { url: d } || d, h = a.param(a.extend({ data: b }, d.data)), i.old === h ? i.valid : (i.old = h, f = this, this.startRequest(c), g = {}, g[c.name] = b, a.ajax(a.extend(!0, { mode: "abort", port: "validate" + c.name, dataType: "json", data: g, context: f.currentForm, success: function(a) { var d, g, h, j = a === !0 || "true" === a;
						f.settings.messages[c.name][e] = i.originalMessage, j ? (h = f.formSubmitted, f.resetInternals(), f.toHide = f.errorsFor(c), f.formSubmitted = h, f.successList.push(c), f.invalid[c.name] = !1, f.showErrors()) : (d = {}, g = a || f.defaultMessage(c, { method: e, parameters: b }), d[c.name] = i.message = g, f.invalid[c.name] = !0, f.showErrors(d)), i.valid = j, f.stopRequest(c, j) } }, d)), "pending") } } }); var b, c = {};
	a.ajaxPrefilter ? a.ajaxPrefilter(function(a, b, d) { var e = a.port; "abort" === a.mode && (c[e] && c[e].abort(), c[e] = d) }) : (b = a.ajax, a.ajax = function(d) { var e = ("mode" in d ? d : a.ajaxSettings).mode,
			f = ("port" in d ? d : a.ajaxSettings).port; return "abort" === e ? (c[f] && c[f].abort(), c[f] = b.apply(this, arguments), c[f]) : b.apply(this, arguments) }) });

/*
 * jQuery wizard plug-in 3.0.7 (18-SEPT-2012)
 *
 *
 * Copyright (c) 2012 Jan Sundman (jan.sundman[at]aland.net)
 *
 * http://www.thecodemine.org
 *
 * Licensed under the MIT licens:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 */
(function(e) { e.widget("ui.formwizard", { _init: function() { var t = this; var n = this.options.formOptions.success; var r = this.options.formOptions.complete; var i = this.options.formOptions.beforeSend; var s = this.options.formOptions.beforeSubmit; var o = this.options.formOptions.beforeSerialize;
			this.options.formOptions = e.extend(this.options.formOptions, { success: function(e, r, i) { if(n) { n(e, r, i) } if(t.options.formOptions && t.options.formOptions.resetForm || !t.options.formOptions) { t._reset() } }, complete: function(e, n) { if(r) { r(e, n) } t._enableNavigation() }, beforeSubmit: function(e, n, r) { if(s) { var i = s(e, n, r); if(!i) t._enableNavigation(); return i } }, beforeSend: function(e) { if(i) { var n = i(e); if(!n) t._enableNavigation(); return n } }, beforeSerialize: function(e, n) { if(o) { var r = o(e, n); if(!r) t._enableNavigation(); return r } } }); if(this.options.historyEnabled) { e.bbq.removeState("_" + e(this.element).attr("id")) } this.steps = this.element.find(".step").hide();
			this.firstStep = this.steps.eq(0).attr("id");
			this.activatedSteps = new Array;
			this.isLastStep = false;
			this.previousStep = undefined;
			this.currentStep = this.steps.eq(0).attr("id");
			this.nextButton = this.element.find(this.options.next).click(function() { return t._next() });
			this.nextButtonInitinalValue = this.nextButton.val();
			this.nextButton.val(this.options.textNext);
			this.backButton = this.element.find(this.options.back).click(function() { t._back(); return false });
			this.backButtonInitinalValue = this.backButton.val();
			this.backButton.val(this.options.textBack); if(this.options.validationEnabled && jQuery().validate == undefined) { this.options.validationEnabled = false; if(window["console"] !== undefined) { console.log("%s", "validationEnabled option set, but the validation plugin is not included") } } else if(this.options.validationEnabled) { this.element.validate(this.options.validationOptions) } if(this.options.formPluginEnabled && jQuery().ajaxSubmit == undefined) { this.options.formPluginEnabled = false; if(window["console"] !== undefined) { console.log("%s", "formPluginEnabled option set but the form plugin is not included") } } if(this.options.disableInputFields == true) { e(this.steps).find(":input:not('.wizard-ignore')").attr("disabled", "disabled") } if(this.options.historyEnabled) { e(window).bind("hashchange", undefined, function(n) { var r = n.getState("_" + e(t.element).attr("id")) || t.firstStep; if(r !== t.currentStep) { if(t.options.validationEnabled && r === t._navigate(t.currentStep)) { if(!t.element.valid()) { t._updateHistory(t.currentStep);
								t.element.validate().focusInvalid(); return false } } if(r !== t.currentStep) t._show(r) } }) } this.element.addClass("ui-formwizard");
			this.element.find(":input").addClass("ui-wizard-content");
			this.steps.addClass("ui-formwizard-content");
			this.backButton.addClass("ui-formwizard-button ui-wizard-content");
			this.nextButton.addClass("ui-formwizard-button ui-wizard-content"); if(!this.options.disableUIStyles) { this.element.addClass("ui-helper-reset ui-widget ui-widget-content ui-helper-reset ui-corner-all");
				this.element.find(":input").addClass("ui-helper-reset ui-state-default");
				this.steps.addClass("ui-helper-reset ui-corner-all");
				this.backButton.addClass("ui-helper-reset ui-state-default");
				this.nextButton.addClass("ui-helper-reset ui-state-default") } this._show(undefined); return e(this) }, _next: function() { if(this.options.validationEnabled) { if(!this.element.valid()) { this.element.validate().focusInvalid(); return false } } if(this.options.remoteAjax != undefined) { var t = this.options.remoteAjax[this.currentStep]; var n = this; if(t !== undefined) { var r = t.success; var i = t.beforeSend; var s = t.complete;
					t = e.extend({}, t, { success: function(e, t) { if(r !== undefined && r(e, t) || r == undefined) { n._continueToNextStep() } }, beforeSend: function(t) { n._disableNavigation(); if(i !== undefined) i(t);
							e(n.element).trigger("before_remote_ajax", { currentStep: n.currentStep }) }, complete: function(t, r) { if(s !== undefined) s(t, r);
							e(n.element).trigger("after_remote_ajax", { currentStep: n.currentStep });
							n._enableNavigation() } });
					this.element.ajaxSubmit(t); return false } } return this._continueToNextStep() }, _back: function() { if(this.activatedSteps.length > 0) { if(this.options.historyEnabled) { this._updateHistory(this.activatedSteps[this.activatedSteps.length - 2]) } else { this._show(this.activatedSteps[this.activatedSteps.length - 2], true) } } return false }, _continueToNextStep: function() { if(this.isLastStep) { for(var e = 0; e < this.activatedSteps.length; e++) { this.steps.filter("#" + this.activatedSteps[e]).find(":input").not(".wizard-ignore").removeAttr("disabled") } if(!this.options.formPluginEnabled) { return true } else { this._disableNavigation();
					this.element.ajaxSubmit(this.options.formOptions); return false } } var t = this._navigate(this.currentStep); if(t == this.currentStep) { return false } if(this.options.historyEnabled) { this._updateHistory(t) } else { this._show(t, true) } return false }, _updateHistory: function(t) { var n = {};
			n["_" + e(this.element).attr("id")] = t;
			e.bbq.pushState(n) }, _disableNavigation: function() { this.nextButton.attr("disabled", "disabled");
			this.backButton.attr("disabled", "disabled"); if(!this.options.disableUIStyles) { this.nextButton.removeClass("ui-state-active").addClass("ui-state-disabled");
				this.backButton.removeClass("ui-state-active").addClass("ui-state-disabled") } }, _enableNavigation: function() { if(this.isLastStep) { this.nextButton.val(this.options.textSubmit) } else { this.nextButton.val(this.options.textNext) } if(e.trim(this.currentStep) !== this.steps.eq(0).attr("id")) { this.backButton.removeAttr("disabled"); if(!this.options.disableUIStyles) { this.backButton.removeClass("ui-state-disabled").addClass("ui-state-active") } } this.nextButton.removeAttr("disabled"); if(!this.options.disableUIStyles) { this.nextButton.removeClass("ui-state-disabled").addClass("ui-state-active") } }, _animate: function(e, t, n) { this._disableNavigation(); var r = this.steps.filter("#" + e); var i = this.steps.filter("#" + t);
			r.find(":input").not(".wizard-ignore").attr("disabled", "disabled");
			i.find(":input").not(".wizard-ignore").removeAttr("disabled"); var s = this;
			r.animate(s.options.outAnimation, s.options.outDuration, s.options.easing, function() { i.animate(s.options.inAnimation, s.options.inDuration, s.options.easing, function() { if(s.options.focusFirstInput) i.find(":input:first").focus();
					s._enableNavigation();
					n.apply(s) }); return }) }, _checkIflastStep: function(t) { this.isLastStep = false; if(e("#" + t).hasClass(this.options.submitStepClass) || this.steps.filter(":last").attr("id") == t) { this.isLastStep = true } }, _getLink: function(t) { var n = undefined; var r = this.steps.filter("#" + t).find(this.options.linkClass); if(r != undefined) { if(r.filter(":radio,:checkbox").size() > 0) { n = r.filter(this.options.linkClass + ":checked").val() } else { n = e(r).val() } } return n }, _navigate: function(e) { var t = this._getLink(e); if(t != undefined) { if(t != "" && t != null && t != undefined && this.steps.filter("#" + t).attr("id") != undefined) { return t } return this.currentStep } else if(t == undefined && !this.isLastStep) { var n = this.steps.filter("#" + e).next().attr("id"); return n } }, _show: function(t) { var n = false; var r = t !== undefined; if(t == undefined || t == "") { this.activatedSteps.pop();
				t = this.firstStep;
				this.activatedSteps.push(t) } else { if(e.inArray(t, this.activatedSteps) > -1) { n = true;
					this.activatedSteps.pop() } else { this.activatedSteps.push(t) } } if(this.currentStep !== t || t === this.firstStep) { this.previousStep = this.currentStep;
				this._checkIflastStep(t);
				this.currentStep = t; var i = function() { if(r) { e(this.element).trigger("step_shown", e.extend({ isBackNavigation: n }, this._state())) } }; if(r) { e(this.element).trigger("before_step_shown", e.extend({ isBackNavigation: n }, this._state())) } this._animate(this.previousStep, t, i) } }, _reset: function() { this.element.resetForm();
			e("label,:input,textarea", this).removeClass("error"); for(var t = 0; t < this.activatedSteps.length; t++) { this.steps.filter("#" + this.activatedSteps[t]).hide().find(":input").attr("disabled", "disabled") } this.activatedSteps = new Array;
			this.previousStep = undefined;
			this.isLastStep = false; if(this.options.historyEnabled) { this._updateHistory(this.firstStep) } else { this._show(this.firstStep) } }, _state: function(e) { var t = { settings: this.options, activatedSteps: this.activatedSteps, isLastStep: this.isLastStep, isFirstStep: this.currentStep === this.firstStep, previousStep: this.previousStep, currentStep: this.currentStep, backButton: this.backButton, nextButton: this.nextButton, steps: this.steps, firstStep: this.firstStep }; if(e !== undefined) return t[e]; return t }, show: function(e) { if(this.options.historyEnabled) { this._updateHistory(e) } else { this._show(e) } }, state: function(e) { return this._state(e) }, reset: function() { this._reset() }, next: function() { this._next() }, back: function() { this._back() }, destroy: function() { this.element.find("*").removeAttr("disabled").show();
			this.nextButton.unbind("click").val(this.nextButtonInitinalValue).removeClass("ui-state-disabled").addClass("ui-state-active");
			this.backButton.unbind("click").val(this.backButtonInitinalValue).removeClass("ui-state-disabled").addClass("ui-state-active");
			this.backButtonInitinalValue = undefined;
			this.nextButtonInitinalValue = undefined;
			this.activatedSteps = undefined;
			this.previousStep = undefined;
			this.currentStep = undefined;
			this.isLastStep = undefined;
			this.options = undefined;
			this.nextButton = undefined;
			this.backButton = undefined;
			this.formwizard = undefined;
			this.element = undefined;
			this.steps = undefined;
			this.firstStep = undefined }, update_steps: function() { this.steps = this.element.find(".step").addClass("ui-formwizard-content");
			this.firstStep = this.steps.eq(0).attr("id");
			this.steps.not("#" + this.currentStep).hide().find(":input").addClass("ui-wizard-content").attr("disabled", "disabled");
			this._checkIflastStep(this.currentStep);
			this._enableNavigation(); if(!this.options.disableUIStyles) { this.steps.addClass("ui-helper-reset ui-corner-all");
				this.steps.find(":input").addClass("ui-helper-reset ui-state-default") } }, options: { historyEnabled: false, validationEnabled: false, validationOptions: undefined, formPluginEnabled: false, linkClass: ".link", submitStepClass: "submit_step", back: ":reset", next: ":submit", textSubmit: "Submit", textNext: "Next", textBack: "Back", remoteAjax: undefined, inAnimation: { opacity: "show" }, outAnimation: { opacity: "hide" }, inDuration: 400, outDuration: 400, easing: "swing", focusFirstInput: false, disableInputFields: true, formOptions: { reset: true, success: function(e) { if(window["console"] !== undefined) { console.log("%s", "form submit successful") } }, disableUIStyles: false } } }) })(jQuery);

/*!
 * jQuery Tags Input Plugin 1.3.6
 *
 * Copyright (c) 2011 XOXCO, Inc
 *
 * Documentation for this plugin lives here:
 * https://github.com/xoxco/jQuery-Tags-Input
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 * ben@xoxco.com
 */
! function(a) { var b = new Array,
		c = new Array;
	a.fn.doAutosize = function(b) { var c = a(this).data("minwidth"),
			d = a(this).data("maxwidth"),
			e = "",
			f = a(this),
			g = a("#" + a(this).data("tester_id")); if(e !== (e = f.val())) { var h = e.replace(/&/g, "&amp;").replace(/\s/g, " ").replace(/</g, "&lt;").replace(/>/g, "&gt;");
			g.html(h); var i = g.width(),
				j = i + b.comfortZone >= c ? i + b.comfortZone : c,
				k = f.width(),
				l = k > j && j >= c || j > c && d > j;
			l && f.width(j) } }, a.fn.resetAutosize = function(b) { var c = a(this).data("minwidth") || b.minInputWidth || a(this).width(),
			d = a(this).data("maxwidth") || b.maxInputWidth || a(this).closest(".tagsinput").width() - b.inputPadding,
			e = a(this),
			f = a("<tester/>").css({ position: "absolute", top: -9999, left: -9999, width: "auto", fontSize: e.css("fontSize"), fontFamily: e.css("fontFamily"), fontWeight: e.css("fontWeight"), letterSpacing: e.css("letterSpacing"), whiteSpace: "nowrap" }),
			g = a(this).attr("id") + "_autosize_tester";!a("#" + g).length > 0 && (f.attr("id", g), f.appendTo("body")), e.data("minwidth", c), e.data("maxwidth", d), e.data("tester_id", g), e.css("width", c) }, a.fn.addTag = function(d, e) { return e = jQuery.extend({ focus: !1, callback: !0 }, e), this.each(function() { var f = a(this).attr("id"),
				g = a(this).val().split(b[f]); if("" == g[0] && (g = new Array), d = jQuery.trim(d), e.unique) { var h = a(this).tagExist(d);
				1 == h && a("#" + f + "_tag").addClass("not_valid") } else var h = !1; if("" != d && 1 != h) { if(a("<span>").addClass("tag").append(a("<span>").text(d).append("&nbsp;&nbsp;"), a("<a>", { href: "#", title: "Removing tag", text: "x" }).click(function() { return a("#" + f).removeTag(escape(d)) })).insertBefore("#" + f + "_addTag"), g.push(d), a("#" + f + "_tag").val(""), e.focus ? a("#" + f + "_tag").focus() : a("#" + f + "_tag").blur(), a.fn.tagsInput.updateTagsField(this, g), e.callback && c[f] && c[f].onAddTag) { var i = c[f].onAddTag;
					i.call(this, d) } if(c[f] && c[f].onChange) { var j = g.length,
						i = c[f].onChange;
					i.call(this, a(this), g[j - 1]) } } }), !1 }, a.fn.removeTag = function(d) { return d = unescape(d), this.each(function() { var e = a(this).attr("id"),
				f = a(this).val().split(b[e]); for(a("#" + e + "_tagsinput .tag").remove(), str = "", i = 0; i < f.length; i++) f[i] != d && (str = str + b[e] + f[i]); if(a.fn.tagsInput.importTags(this, str), c[e] && c[e].onRemoveTag) { var g = c[e].onRemoveTag;
				g.call(this, d) } }), !1 }, a.fn.tagExist = function(c) { var d = a(this).attr("id"),
			e = a(this).val().split(b[d]); return jQuery.inArray(c, e) >= 0 }, a.fn.importTags = function(b) { var c = a(this).attr("id");
		a("#" + c + "_tagsinput .tag").remove(), a.fn.tagsInput.importTags(this, b) }, a.fn.tagsInput = function(e) { var f = jQuery.extend({ interactive: !0, defaultText: "add a tag", minChars: 0, width: "300px", height: "100px", autocomplete: { selectFirst: !1 }, hide: !0, delimiter: ",", unique: !0, removeWithBackspace: !0, placeholderColor: "#666666", autosize: !0, comfortZone: 20, inputPadding: 12 }, e),
			g = 0; return this.each(function() { if("undefined" == typeof a(this).attr("data-tagsinput-init")) { a(this).attr("data-tagsinput-init", !0), f.hide && a(this).hide(); var e = a(this).attr("id");
				(!e || b[a(this).attr("id")]) && (e = a(this).attr("id", "tags" + (new Date).getTime() + g++).attr("id")); var h = jQuery.extend({ pid: e, real_input: "#" + e, holder: "#" + e + "_tagsinput", input_wrapper: "#" + e + "_addTag", fake_input: "#" + e + "_tag" }, f);
				b[e] = h.delimiter, (f.onAddTag || f.onRemoveTag || f.onChange) && (c[e] = new Array, c[e].onAddTag = f.onAddTag, c[e].onRemoveTag = f.onRemoveTag, c[e].onChange = f.onChange); var i = '<div id="' + e + '_tagsinput" class="tagsinput"><div id="' + e + '_addTag">'; if(f.interactive && (i = i + '<input id="' + e + '_tag" value="" data-default="' + f.defaultText + '" />'), i += '</div><div class="tags_clear"></div></div>', a(i).insertAfter(this), a(h.holder).css("width", f.width), a(h.holder).css("min-height", f.height), a(h.holder).css("height", f.height), "" != a(h.real_input).val() && a.fn.tagsInput.importTags(a(h.real_input), a(h.real_input).val()), f.interactive) { if(a(h.fake_input).val(a(h.fake_input).attr("data-default")), a(h.fake_input).css("color", f.placeholderColor), a(h.fake_input).resetAutosize(f), a(h.holder).bind("click", h, function(b) { a(b.data.fake_input).focus() }), a(h.fake_input).bind("focus", h, function(b) { a(b.data.fake_input).val() == a(b.data.fake_input).attr("data-default") && a(b.data.fake_input).val(""), a(b.data.fake_input).css("color", "#000000") }), void 0 != f.autocomplete_url) { autocomplete_options = { source: f.autocomplete_url }; for(attrname in f.autocomplete) autocomplete_options[attrname] = f.autocomplete[attrname];
						void 0 !== jQuery.Autocompleter ? (a(h.fake_input).autocomplete(f.autocomplete_url, f.autocomplete), a(h.fake_input).bind("result", h, function(b, c, d) { c && a("#" + e).addTag(c[0] + "", { focus: !0, unique: f.unique }) })) : void 0 !== jQuery.ui.autocomplete && (a(h.fake_input).autocomplete(autocomplete_options), a(h.fake_input).bind("autocompleteselect", h, function(b, c) { return a(b.data.real_input).addTag(c.item.value, { focus: !0, unique: f.unique }), !1 })) } else a(h.fake_input).bind("blur", h, function(b) { var c = a(this).attr("data-default"); return "" != a(b.data.fake_input).val() && a(b.data.fake_input).val() != c ? b.data.minChars <= a(b.data.fake_input).val().length && (!b.data.maxChars || b.data.maxChars >= a(b.data.fake_input).val().length) && a(b.data.real_input).addTag(a(b.data.fake_input).val(), { focus: !0, unique: f.unique }) : (a(b.data.fake_input).val(a(b.data.fake_input).attr("data-default")), a(b.data.fake_input).css("color", f.placeholderColor)), !1 });
					a(h.fake_input).bind("keypress", h, function(b) { return d(b) ? (b.preventDefault(), b.data.minChars <= a(b.data.fake_input).val().length && (!b.data.maxChars || b.data.maxChars >= a(b.data.fake_input).val().length) && a(b.data.real_input).addTag(a(b.data.fake_input).val(), { focus: !0, unique: f.unique }), a(b.data.fake_input).resetAutosize(f), !1) : void(b.data.autosize && a(b.data.fake_input).doAutosize(f)) }), h.removeWithBackspace && a(h.fake_input).bind("keydown", function(b) { if(8 == b.keyCode && "" == a(this).val()) { b.preventDefault(); var c = a(this).closest(".tagsinput").find(".tag:last").text(),
								d = a(this).attr("id").replace(/_tag$/, "");
							c = c.replace(/[\s]+x$/, ""), a("#" + d).removeTag(escape(c)), a(this).trigger("focus") } }), a(h.fake_input).blur(), h.unique && a(h.fake_input).keydown(function(b) {
						(8 == b.keyCode || String.fromCharCode(b.which).match(/\w+|[áéíóúÁÉÍÓÚñÑ,/]+/)) && a(this).removeClass("not_valid") }) } } }), this }, a.fn.tagsInput.updateTagsField = function(c, d) { var e = a(c).attr("id");
		a(c).val(d.join(b[e])) }, a.fn.tagsInput.importTags = function(d, e) { a(d).val(""); var f = a(d).attr("id"),
			g = e.split(b[f]); for(i = 0; i < g.length; i++) a(d).addTag(g[i], { focus: !1, callback: !1 }); if(c[f] && c[f].onChange) { var h = c[f].onChange;
			h.call(d, d, g[i]) } }; var d = function(b) { var c = !1; return 13 == b.which ? !0 : ("string" == typeof b.data.delimiter ? b.which == b.data.delimiter.charCodeAt(0) && (c = !0) : a.each(b.data.delimiter, function(a, d) { b.which == d.charCodeAt(0) && (c = !0) }), c) } }(jQuery);

/*!
 * jquery.sparkline 2.1.2 - http://omnipotent.net/jquery.sparkline/
 * Licensed under the New BSD License - see above site for details
 */
(function(a, b, c) {
	(function(a) { typeof define == "function" && define.amd ? define(["jquery"], a) : jQuery && !jQuery.fn.sparkline && a(jQuery) })(function(d) { "use strict"; var e = {},
			f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L = 0;
		f = function() { return { common: { type: "line", lineColor: "#00f", fillColor: "#cdf", defaultPixelsPerValue: 3, width: "auto", height: "auto", composite: !1, tagValuesAttribute: "values", tagOptionsPrefix: "spark", enableTagOptions: !1, enableHighlight: !0, highlightLighten: 1.4, tooltipSkipNull: !0, tooltipPrefix: "", tooltipSuffix: "", disableHiddenCheck: !1, numberFormatter: !1, numberDigitGroupCount: 3, numberDigitGroupSep: ",", numberDecimalMark: ".", disableTooltips: !1, disableInteraction: !1 }, line: { spotColor: "#f80", highlightSpotColor: "#5f5", highlightLineColor: "#f22", spotRadius: 1.5, minSpotColor: "#f80", maxSpotColor: "#f80", lineWidth: 1, normalRangeMin: c, normalRangeMax: c, normalRangeColor: "#ccc", drawNormalOnTop: !1, chartRangeMin: c, chartRangeMax: c, chartRangeMinX: c, chartRangeMaxX: c, tooltipFormat: new h('<span style="color: {{color}}">&#9679;</span> {{prefix}}{{y}}{{suffix}}') }, bar: { barColor: "#3366cc", negBarColor: "#f44", stackedBarColor: ["#3366cc", "#dc3912", "#ff9900", "#109618", "#66aa00", "#dd4477", "#0099c6", "#990099"], zeroColor: c, nullColor: c, zeroAxis: !0, barWidth: 4, barSpacing: 1, chartRangeMax: c, chartRangeMin: c, chartRangeClip: !1, colorMap: c, tooltipFormat: new h('<span style="color: {{color}}">&#9679;</span> {{prefix}}{{value}}{{suffix}}') }, tristate: { barWidth: 4, barSpacing: 1, posBarColor: "#6f6", negBarColor: "#f44", zeroBarColor: "#999", colorMap: {}, tooltipFormat: new h('<span style="color: {{color}}">&#9679;</span> {{value:map}}'), tooltipValueLookups: { map: { "-1": "Loss", 0: "Draw", 1: "Win" } } }, discrete: { lineHeight: "auto", thresholdColor: c, thresholdValue: 0, chartRangeMax: c, chartRangeMin: c, chartRangeClip: !1, tooltipFormat: new h("{{prefix}}{{value}}{{suffix}}") }, bullet: { targetColor: "#f33", targetWidth: 3, performanceColor: "#33f", rangeColors: ["#d3dafe", "#a8b6ff", "#7f94ff"], base: c, tooltipFormat: new h("{{fieldkey:fields}} - {{value}}"), tooltipValueLookups: { fields: { r: "Range", p: "Performance", t: "Target" } } }, pie: { offset: 0, sliceColors: ["#3366cc", "#dc3912", "#ff9900", "#109618", "#66aa00", "#dd4477", "#0099c6", "#990099"], borderWidth: 0, borderColor: "#000", tooltipFormat: new h('<span style="color: {{color}}">&#9679;</span> {{value}} ({{percent.1}}%)') }, box: { raw: !1, boxLineColor: "#000", boxFillColor: "#cdf", whiskerColor: "#000", outlierLineColor: "#333", outlierFillColor: "#fff", medianColor: "#f00", showOutliers: !0, outlierIQR: 1.5, spotRadius: 1.5, target: c, targetColor: "#4a2", chartRangeMax: c, chartRangeMin: c, tooltipFormat: new h("{{field:fields}}: {{value}}"), tooltipFormatFieldlistKey: "field", tooltipValueLookups: { fields: { lq: "Lower Quartile", med: "Median", uq: "Upper Quartile", lo: "Left Outlier", ro: "Right Outlier", lw: "Left Whisker", rw: "Right Whisker" } } } } }, E = '.jqstooltip { width: auto !important; height: auto !important; position: absolute;left: 0px;top: 0px;visibility: hidden;background: #000000;color: white;font-size: 11px;text-align: left;white-space: nowrap;padding: 5px;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}', g = function() { var a, b; return a = function() { this.init.apply(this, arguments) }, arguments.length > 1 ? (arguments[0] ? (a.prototype = d.extend(new arguments[0], arguments[arguments.length - 1]), a._super = arguments[0].prototype) : a.prototype = arguments[arguments.length - 1], arguments.length > 2 && (b = Array.prototype.slice.call(arguments, 1, -1), b.unshift(a.prototype), d.extend.apply(d, b))) : a.prototype = arguments[0], a.prototype.cls = a, a }, d.SPFormatClass = h = g({ fre: /\{\{([\w.]+?)(:(.+?))?\}\}/g, precre: /(\w+)\.(\d+)/, init: function(a, b) { this.format = a, this.fclass = b }, render: function(a, b, d) { var e = this,
					f = a,
					g, h, i, j, k; return this.format.replace(this.fre, function() { var a; return h = arguments[1], i = arguments[3], g = e.precre.exec(h), g ? (k = g[2], h = g[1]) : k = !1, j = f[h], j === c ? "" : i && b && b[i] ? (a = b[i], a.get ? b[i].get(j) || j : b[i][j] || j) : (n(j) && (d.get("numberFormatter") ? j = d.get("numberFormatter")(j) : j = s(j, k, d.get("numberDigitGroupCount"), d.get("numberDigitGroupSep"), d.get("numberDecimalMark"))), j) }) } }), d.spformat = function(a, b) { return new h(a, b) }, i = function(a, b, c) { return a < b ? b : a > c ? c : a }, j = function(a, c) { var d; return c === 2 ? (d = b.floor(a.length / 2), a.length % 2 ? a[d] : (a[d - 1] + a[d]) / 2) : a.length % 2 ? (d = (a.length * c + c) / 4, d % 1 ? (a[b.floor(d)] + a[b.floor(d) - 1]) / 2 : a[d - 1]) : (d = (a.length * c + 2) / 4, d % 1 ? (a[b.floor(d)] + a[b.floor(d) - 1]) / 2 : a[d - 1]) }, k = function(a) { var b; switch(a) {
				case "undefined":
					a = c; break;
				case "null":
					a = null; break;
				case "true":
					a = !0; break;
				case "false":
					a = !1; break;
				default:
					b = parseFloat(a), a == b && (a = b) } return a }, l = function(a) { var b, c = []; for(b = a.length; b--;) c[b] = k(a[b]); return c }, m = function(a, b) { var c, d, e = []; for(c = 0, d = a.length; c < d; c++) a[c] !== b && e.push(a[c]); return e }, n = function(a) { return !isNaN(parseFloat(a)) && isFinite(a) }, s = function(a, b, c, e, f) { var g, h;
			a = (b === !1 ? parseFloat(a).toString() : a.toFixed(b)).split(""), g = (g = d.inArray(".", a)) < 0 ? a.length : g, g < a.length && (a[g] = f); for(h = g - c; h > 0; h -= c) a.splice(h, 0, e); return a.join("") }, o = function(a, b, c) { var d; for(d = b.length; d--;) { if(c && b[d] === null) continue; if(b[d] !== a) return !1 } return !0 }, p = function(a) { var b = 0,
				c; for(c = a.length; c--;) b += typeof a[c] == "number" ? a[c] : 0; return b }, r = function(a) { return d.isArray(a) ? a : [a] }, q = function(b) { var c;
			a.createStyleSheet ? a.createStyleSheet().cssText = b : (c = a.createElement("style"), c.type = "text/css", a.getElementsByTagName("head")[0].appendChild(c), c[typeof a.body.style.WebkitAppearance == "string" ? "innerText" : "innerHTML"] = b) }, d.fn.simpledraw = function(b, e, f, g) { var h, i; if(f && (h = this.data("_jqs_vcanvas"))) return h; if(d.fn.sparkline.canvas === !1) return !1; if(d.fn.sparkline.canvas === c) { var j = a.createElement("canvas"); if(!j.getContext || !j.getContext("2d")) { if(!a.namespaces || !!a.namespaces.v) return d.fn.sparkline.canvas = !1, !1;
					a.namespaces.add("v", "urn:schemas-microsoft-com:vml", "#default#VML"), d.fn.sparkline.canvas = function(a, b, c, d) { return new J(a, b, c) } } else d.fn.sparkline.canvas = function(a, b, c, d) { return new I(a, b, c, d) } } return b === c && (b = d(this).innerWidth()), e === c && (e = d(this).innerHeight()), h = d.fn.sparkline.canvas(b, e, this, g), i = d(this).data("_jqs_mhandler"), i && i.registerCanvas(h), h }, d.fn.cleardraw = function() { var a = this.data("_jqs_vcanvas");
			a && a.reset() }, d.RangeMapClass = t = g({ init: function(a) { var b, c, d = []; for(b in a) a.hasOwnProperty(b) && typeof b == "string" && b.indexOf(":") > -1 && (c = b.split(":"), c[0] = c[0].length === 0 ? -Infinity : parseFloat(c[0]), c[1] = c[1].length === 0 ? Infinity : parseFloat(c[1]), c[2] = a[b], d.push(c));
				this.map = a, this.rangelist = d || !1 }, get: function(a) { var b = this.rangelist,
					d, e, f; if((f = this.map[a]) !== c) return f; if(b)
					for(d = b.length; d--;) { e = b[d]; if(e[0] <= a && e[1] >= a) return e[2] }
				return c } }), d.range_map = function(a) { return new t(a) }, u = g({ init: function(a, b) { var c = d(a);
				this.$el = c, this.options = b, this.currentPageX = 0, this.currentPageY = 0, this.el = a, this.splist = [], this.tooltip = null, this.over = !1, this.displayTooltips = !b.get("disableTooltips"), this.highlightEnabled = !b.get("disableHighlight") }, registerSparkline: function(a) { this.splist.push(a), this.over && this.updateDisplay() }, registerCanvas: function(a) { var b = d(a.canvas);
				this.canvas = a, this.$canvas = b, b.mouseenter(d.proxy(this.mouseenter, this)), b.mouseleave(d.proxy(this.mouseleave, this)), b.click(d.proxy(this.mouseclick, this)) }, reset: function(a) { this.splist = [], this.tooltip && a && (this.tooltip.remove(), this.tooltip = c) }, mouseclick: function(a) { var b = d.Event("sparklineClick");
				b.originalEvent = a, b.sparklines = this.splist, this.$el.trigger(b) }, mouseenter: function(b) { d(a.body).unbind("mousemove.jqs"), d(a.body).bind("mousemove.jqs", d.proxy(this.mousemove, this)), this.over = !0, this.currentPageX = b.pageX, this.currentPageY = b.pageY, this.currentEl = b.target, !this.tooltip && this.displayTooltips && (this.tooltip = new v(this.options), this.tooltip.updatePosition(b.pageX, b.pageY)), this.updateDisplay() }, mouseleave: function() { d(a.body).unbind("mousemove.jqs"); var b = this.splist,
					c = b.length,
					e = !1,
					f, g;
				this.over = !1, this.currentEl = null, this.tooltip && (this.tooltip.remove(), this.tooltip = null); for(g = 0; g < c; g++) f = b[g], f.clearRegionHighlight() && (e = !0);
				e && this.canvas.render() }, mousemove: function(a) { this.currentPageX = a.pageX, this.currentPageY = a.pageY, this.currentEl = a.target, this.tooltip && this.tooltip.updatePosition(a.pageX, a.pageY), this.updateDisplay() }, updateDisplay: function() { var a = this.splist,
					b = a.length,
					c = !1,
					e = this.$canvas.offset(),
					f = this.currentPageX - e.left,
					g = this.currentPageY - e.top,
					h, i, j, k, l; if(!this.over) return; for(j = 0; j < b; j++) i = a[j], k = i.setRegionHighlight(this.currentEl, f, g), k && (c = !0); if(c) { l = d.Event("sparklineRegionChange"), l.sparklines = this.splist, this.$el.trigger(l); if(this.tooltip) { h = ""; for(j = 0; j < b; j++) i = a[j], h += i.getCurrentRegionTooltip();
						this.tooltip.setContent(h) } this.disableHighlight || this.canvas.render() } k === null && this.mouseleave() } }), v = g({ sizeStyle: "position: static !important;display: block !important;visibility: hidden !important;float: left !important;", init: function(b) { var c = b.get("tooltipClassname", "jqstooltip"),
					e = this.sizeStyle,
					f;
				this.container = b.get("tooltipContainer") || a.body, this.tooltipOffsetX = b.get("tooltipOffsetX", 10), this.tooltipOffsetY = b.get("tooltipOffsetY", 12), d("#jqssizetip").remove(), d("#jqstooltip").remove(), this.sizetip = d("<div/>", { id: "jqssizetip", style: e, "class": c }), this.tooltip = d("<div/>", { id: "jqstooltip", "class": c }).appendTo(this.container), f = this.tooltip.offset(), this.offsetLeft = f.left, this.offsetTop = f.top, this.hidden = !0, d(window).unbind("resize.jqs scroll.jqs"), d(window).bind("resize.jqs scroll.jqs", d.proxy(this.updateWindowDims, this)), this.updateWindowDims() }, updateWindowDims: function() { this.scrollTop = d(window).scrollTop(), this.scrollLeft = d(window).scrollLeft(), this.scrollRight = this.scrollLeft + d(window).width(), this.updatePosition() }, getSize: function(a) { this.sizetip.html(a).appendTo(this.container), this.width = this.sizetip.width() + 1, this.height = this.sizetip.height(), this.sizetip.remove() }, setContent: function(a) { if(!a) { this.tooltip.css("visibility", "hidden"), this.hidden = !0; return } this.getSize(a), this.tooltip.html(a).css({ width: this.width, height: this.height, visibility: "visible" }), this.hidden && (this.hidden = !1, this.updatePosition()) }, updatePosition: function(a, b) { if(a === c) { if(this.mousex === c) return;
					a = this.mousex - this.offsetLeft, b = this.mousey - this.offsetTop } else this.mousex = a -= this.offsetLeft, this.mousey = b -= this.offsetTop; if(!this.height || !this.width || this.hidden) return;
				b -= this.height + this.tooltipOffsetY, a += this.tooltipOffsetX, b < this.scrollTop && (b = this.scrollTop), a < this.scrollLeft ? a = this.scrollLeft : a + this.width > this.scrollRight && (a = this.scrollRight - this.width), this.tooltip.css({ left: a, top: b }) }, remove: function() { this.tooltip.remove(), this.sizetip.remove(), this.sizetip = this.tooltip = c, d(window).unbind("resize.jqs scroll.jqs") } }), F = function() { q(E) }, d(F), K = [], d.fn.sparkline = function(b, e) { return this.each(function() { var f = new d.fn.sparkline.options(this, e),
					g = d(this),
					h, i;
				h = function() { var e, h, i, j, k, l, m; if(b === "html" || b === c) { m = this.getAttribute(f.get("tagValuesAttribute")); if(m === c || m === null) m = g.html();
						e = m.replace(/(^\s*<!--)|(-->\s*$)|\s+/g, "").split(",") } else e = b;
					h = f.get("width") === "auto" ? e.length * f.get("defaultPixelsPerValue") : f.get("width"); if(f.get("height") === "auto") { if(!f.get("composite") || !d.data(this, "_jqs_vcanvas")) j = a.createElement("span"), j.innerHTML = "a", g.html(j), i = d(j).innerHeight() || d(j).height(), d(j).remove(), j = null } else i = f.get("height");
					f.get("disableInteraction") ? k = !1 : (k = d.data(this, "_jqs_mhandler"), k ? f.get("composite") || k.reset() : (k = new u(this, f), d.data(this, "_jqs_mhandler", k))); if(f.get("composite") && !d.data(this, "_jqs_vcanvas")) { d.data(this, "_jqs_errnotify") || (alert("Attempted to attach a composite sparkline to an element with no existing sparkline"), d.data(this, "_jqs_errnotify", !0)); return } l = new(d.fn.sparkline[f.get("type")])(this, e, f, h, i), l.render(), k && k.registerSparkline(l) }; if(d(this).html() && !f.get("disableHiddenCheck") && d(this).is(":hidden") || !d(this).parents("body").length) { if(!f.get("composite") && d.data(this, "_jqs_pending"))
						for(i = K.length; i; i--) K[i - 1][0] == this && K.splice(i - 1, 1);
					K.push([this, h]), d.data(this, "_jqs_pending", !0) } else h.call(this) }) }, d.fn.sparkline.defaults = f(), d.sparkline_display_visible = function() { var a, b, c, e = []; for(b = 0, c = K.length; b < c; b++) a = K[b][0], d(a).is(":visible") && !d(a).parents().is(":hidden") ? (K[b][1].call(a), d.data(K[b][0], "_jqs_pending", !1), e.push(b)) : !d(a).closest("html").length && !d.data(a, "_jqs_pending") && (d.data(K[b][0], "_jqs_pending", !1), e.push(b)); for(b = e.length; b; b--) K.splice(e[b - 1], 1) }, d.fn.sparkline.options = g({ init: function(a, b) { var c, f, g, h;
				this.userOptions = b = b || {}, this.tag = a, this.tagValCache = {}, f = d.fn.sparkline.defaults, g = f.common, this.tagOptionsPrefix = b.enableTagOptions && (b.tagOptionsPrefix || g.tagOptionsPrefix), h = this.getTagSetting("type"), h === e ? c = f[b.type || g.type] : c = f[h], this.mergedOptions = d.extend({}, g, c, b) }, getTagSetting: function(a) { var b = this.tagOptionsPrefix,
					d, f, g, h; if(b === !1 || b === c) return e; if(this.tagValCache.hasOwnProperty(a)) d = this.tagValCache.key;
				else { d = this.tag.getAttribute(b + a); if(d === c || d === null) d = e;
					else if(d.substr(0, 1) === "[") { d = d.substr(1, d.length - 2).split(","); for(f = d.length; f--;) d[f] = k(d[f].replace(/(^\s*)|(\s*$)/g, "")) } else if(d.substr(0, 1) === "{") { g = d.substr(1, d.length - 2).split(","), d = {}; for(f = g.length; f--;) h = g[f].split(":", 2), d[h[0].replace(/(^\s*)|(\s*$)/g, "")] = k(h[1].replace(/(^\s*)|(\s*$)/g, "")) } else d = k(d);
					this.tagValCache.key = d } return d }, get: function(a, b) { var d = this.getTagSetting(a),
					f; return d !== e ? d : (f = this.mergedOptions[a]) === c ? b : f } }), d.fn.sparkline._base = g({ disabled: !1, init: function(a, b, e, f, g) { this.el = a, this.$el = d(a), this.values = b, this.options = e, this.width = f, this.height = g, this.currentRegion = c }, initTarget: function() { var a = !this.options.get("disableInteraction");
				(this.target = this.$el.simpledraw(this.width, this.height, this.options.get("composite"), a)) ? (this.canvasWidth = this.target.pixelWidth, this.canvasHeight = this.target.pixelHeight) : this.disabled = !0 }, render: function() { return this.disabled ? (this.el.innerHTML = "", !1) : !0 }, getRegion: function(a, b) {}, setRegionHighlight: function(a, b, d) { var e = this.currentRegion,
					f = !this.options.get("disableHighlight"),
					g; return b > this.canvasWidth || d > this.canvasHeight || b < 0 || d < 0 ? null : (g = this.getRegion(a, b, d), e !== g ? (e !== c && f && this.removeHighlight(), this.currentRegion = g, g !== c && f && this.renderHighlight(), !0) : !1) }, clearRegionHighlight: function() { return this.currentRegion !== c ? (this.removeHighlight(), this.currentRegion = c, !0) : !1 }, renderHighlight: function() { this.changeHighlight(!0) }, removeHighlight: function() { this.changeHighlight(!1) }, changeHighlight: function(a) {}, getCurrentRegionTooltip: function() { var a = this.options,
					b = "",
					e = [],
					f, g, i, j, k, l, m, n, o, p, q, r, s, t; if(this.currentRegion === c) return "";
				f = this.getCurrentRegionFields(), q = a.get("tooltipFormatter"); if(q) return q(this, a, f);
				a.get("tooltipChartTitle") && (b += '<div class="jqs jqstitle">' + a.get("tooltipChartTitle") + "</div>\n"), g = this.options.get("tooltipFormat"); if(!g) return "";
				d.isArray(g) || (g = [g]), d.isArray(f) || (f = [f]), m = this.options.get("tooltipFormatFieldlist"), n = this.options.get("tooltipFormatFieldlistKey"); if(m && n) { o = []; for(l = f.length; l--;) p = f[l][n], (t = d.inArray(p, m)) != -1 && (o[t] = f[l]);
					f = o } i = g.length, s = f.length; for(l = 0; l < i; l++) { r = g[l], typeof r == "string" && (r = new h(r)), j = r.fclass || "jqsfield"; for(t = 0; t < s; t++)
						if(!f[t].isNull || !a.get("tooltipSkipNull")) d.extend(f[t], { prefix: a.get("tooltipPrefix"), suffix: a.get("tooltipSuffix") }), k = r.render(f[t], a.get("tooltipValueLookups"), a), e.push('<div class="' + j + '">' + k + "</div>") } return e.length ? b + e.join("\n") : "" }, getCurrentRegionFields: function() {}, calcHighlightColor: function(a, c) { var d = c.get("highlightColor"),
					e = c.get("highlightLighten"),
					f, g, h, j; if(d) return d; if(e) { f = /^#([0-9a-f])([0-9a-f])([0-9a-f])$/i.exec(a) || /^#([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i.exec(a); if(f) { h = [], g = a.length === 4 ? 16 : 1; for(j = 0; j < 3; j++) h[j] = i(b.round(parseInt(f[j + 1], 16) * g * e), 0, 255); return "rgb(" + h.join(",") + ")" } } return a } }), w = { changeHighlight: function(a) { var b = this.currentRegion,
					c = this.target,
					e = this.regionShapes[b],
					f;
				e && (f = this.renderRegion(b, a), d.isArray(f) || d.isArray(e) ? (c.replaceWithShapes(e, f), this.regionShapes[b] = d.map(f, function(a) { return a.id })) : (c.replaceWithShape(e, f), this.regionShapes[b] = f.id)) }, render: function() { var a = this.values,
					b = this.target,
					c = this.regionShapes,
					e, f, g, h; if(!this.cls._super.render.call(this)) return; for(g = a.length; g--;) { e = this.renderRegion(g); if(e)
						if(d.isArray(e)) { f = []; for(h = e.length; h--;) e[h].append(), f.push(e[h].id);
							c[g] = f } else e.append(), c[g] = e.id;
					else c[g] = null } b.render() } }, d.fn.sparkline.line = x = g(d.fn.sparkline._base, { type: "line", init: function(a, b, c, d, e) { x._super.init.call(this, a, b, c, d, e), this.vertices = [], this.regionMap = [], this.xvalues = [], this.yvalues = [], this.yminmax = [], this.hightlightSpotId = null, this.lastShapeId = null, this.initTarget() }, getRegion: function(a, b, d) { var e, f = this.regionMap; for(e = f.length; e--;)
					if(f[e] !== null && b >= f[e][0] && b <= f[e][1]) return f[e][2]; return c }, getCurrentRegionFields: function() { var a = this.currentRegion; return { isNull: this.yvalues[a] === null, x: this.xvalues[a], y: this.yvalues[a], color: this.options.get("lineColor"), fillColor: this.options.get("fillColor"), offset: a } }, renderHighlight: function() { var a = this.currentRegion,
					b = this.target,
					d = this.vertices[a],
					e = this.options,
					f = e.get("spotRadius"),
					g = e.get("highlightSpotColor"),
					h = e.get("highlightLineColor"),
					i, j; if(!d) return;
				f && g && (i = b.drawCircle(d[0], d[1], f, c, g), this.highlightSpotId = i.id, b.insertAfterShape(this.lastShapeId, i)), h && (j = b.drawLine(d[0], this.canvasTop, d[0], this.canvasTop + this.canvasHeight, h), this.highlightLineId = j.id, b.insertAfterShape(this.lastShapeId, j)) }, removeHighlight: function() { var a = this.target;
				this.highlightSpotId && (a.removeShapeId(this.highlightSpotId), this.highlightSpotId = null), this.highlightLineId && (a.removeShapeId(this.highlightLineId), this.highlightLineId = null) }, scanValues: function() { var a = this.values,
					c = a.length,
					d = this.xvalues,
					e = this.yvalues,
					f = this.yminmax,
					g, h, i, j, k; for(g = 0; g < c; g++) h = a[g], i = typeof a[g] == "string", j = typeof a[g] == "object" && a[g] instanceof Array, k = i && a[g].split(":"), i && k.length === 2 ? (d.push(Number(k[0])), e.push(Number(k[1])), f.push(Number(k[1]))) : j ? (d.push(h[0]), e.push(h[1]), f.push(h[1])) : (d.push(g), a[g] === null || a[g] === "null" ? e.push(null) : (e.push(Number(h)), f.push(Number(h))));
				this.options.get("xvalues") && (d = this.options.get("xvalues")), this.maxy = this.maxyorg = b.max.apply(b, f), this.miny = this.minyorg = b.min.apply(b, f), this.maxx = b.max.apply(b, d), this.minx = b.min.apply(b, d), this.xvalues = d, this.yvalues = e, this.yminmax = f }, processRangeOptions: function() { var a = this.options,
					b = a.get("normalRangeMin"),
					d = a.get("normalRangeMax");
				b !== c && (b < this.miny && (this.miny = b), d > this.maxy && (this.maxy = d)), a.get("chartRangeMin") !== c && (a.get("chartRangeClip") || a.get("chartRangeMin") < this.miny) && (this.miny = a.get("chartRangeMin")), a.get("chartRangeMax") !== c && (a.get("chartRangeClip") || a.get("chartRangeMax") > this.maxy) && (this.maxy = a.get("chartRangeMax")), a.get("chartRangeMinX") !== c && (a.get("chartRangeClipX") || a.get("chartRangeMinX") < this.minx) && (this.minx = a.get("chartRangeMinX")), a.get("chartRangeMaxX") !== c && (a.get("chartRangeClipX") || a.get("chartRangeMaxX") > this.maxx) && (this.maxx = a.get("chartRangeMaxX")) }, drawNormalRange: function(a, d, e, f, g) { var h = this.options.get("normalRangeMin"),
					i = this.options.get("normalRangeMax"),
					j = d + b.round(e - e * ((i - this.miny) / g)),
					k = b.round(e * (i - h) / g);
				this.target.drawRect(a, j, f, k, c, this.options.get("normalRangeColor")).append() }, render: function() { var a = this.options,
					e = this.target,
					f = this.canvasWidth,
					g = this.canvasHeight,
					h = this.vertices,
					i = a.get("spotRadius"),
					j = this.regionMap,
					k, l, m, n, o, p, q, r, s, u, v, w, y, z, A, B, C, D, E, F, G, H, I, J, K; if(!x._super.render.call(this)) return;
				this.scanValues(), this.processRangeOptions(), I = this.xvalues, J = this.yvalues; if(!this.yminmax.length || this.yvalues.length < 2) return;
				n = o = 0, k = this.maxx - this.minx === 0 ? 1 : this.maxx - this.minx, l = this.maxy - this.miny === 0 ? 1 : this.maxy - this.miny, m = this.yvalues.length - 1, i && (f < i * 4 || g < i * 4) && (i = 0); if(i) { G = a.get("highlightSpotColor") && !a.get("disableInteraction"); if(G || a.get("minSpotColor") || a.get("spotColor") && J[m] === this.miny) g -= b.ceil(i); if(G || a.get("maxSpotColor") || a.get("spotColor") && J[m] === this.maxy) g -= b.ceil(i), n += b.ceil(i); if(G || (a.get("minSpotColor") || a.get("maxSpotColor")) && (J[0] === this.miny || J[0] === this.maxy)) o += b.ceil(i), f -= b.ceil(i); if(G || a.get("spotColor") || a.get("minSpotColor") || a.get("maxSpotColor") && (J[m] === this.miny || J[m] === this.maxy)) f -= b.ceil(i) } g--, a.get("normalRangeMin") !== c && !a.get("drawNormalOnTop") && this.drawNormalRange(o, n, g, f, l), q = [], r = [q], z = A = null, B = J.length; for(K = 0; K < B; K++) s = I[K], v = I[K + 1], u = J[K], w = o + b.round((s - this.minx) * (f / k)), y = K < B - 1 ? o + b.round((v - this.minx) * (f / k)) : f, A = w + (y - w) / 2, j[K] = [z || 0, A, K], z = A, u === null ? K && (J[K - 1] !== null && (q = [], r.push(q)), h.push(null)) : (u < this.miny && (u = this.miny), u > this.maxy && (u = this.maxy), q.length || q.push([w, n + g]), p = [w, n + b.round(g - g * ((u - this.miny) / l))], q.push(p), h.push(p));
				C = [], D = [], E = r.length; for(K = 0; K < E; K++) q = r[K], q.length && (a.get("fillColor") && (q.push([q[q.length - 1][0], n + g]), D.push(q.slice(0)), q.pop()), q.length > 2 && (q[0] = [q[0][0], q[1][1]]), C.push(q));
				E = D.length; for(K = 0; K < E; K++) e.drawShape(D[K], a.get("fillColor"), a.get("fillColor")).append();
				a.get("normalRangeMin") !== c && a.get("drawNormalOnTop") && this.drawNormalRange(o, n, g, f, l), E = C.length; for(K = 0; K < E; K++) e.drawShape(C[K], a.get("lineColor"), c, a.get("lineWidth")).append(); if(i && a.get("valueSpots")) { F = a.get("valueSpots"), F.get === c && (F = new t(F)); for(K = 0; K < B; K++) H = F.get(J[K]), H && e.drawCircle(o + b.round((I[K] - this.minx) * (f / k)), n + b.round(g - g * ((J[K] - this.miny) / l)), i, c, H).append() } i && a.get("spotColor") && J[m] !== null && e.drawCircle(o + b.round((I[I.length - 1] - this.minx) * (f / k)), n + b.round(g - g * ((J[m] - this.miny) / l)), i, c, a.get("spotColor")).append(), this.maxy !== this.minyorg && (i && a.get("minSpotColor") && (s = I[d.inArray(this.minyorg, J)], e.drawCircle(o + b.round((s - this.minx) * (f / k)), n + b.round(g - g * ((this.minyorg - this.miny) / l)), i, c, a.get("minSpotColor")).append()), i && a.get("maxSpotColor") && (s = I[d.inArray(this.maxyorg, J)], e.drawCircle(o + b.round((s - this.minx) * (f / k)), n + b.round(g - g * ((this.maxyorg - this.miny) / l)), i, c, a.get("maxSpotColor")).append())), this.lastShapeId = e.getLastShapeId(), this.canvasTop = n, e.render() } }), d.fn.sparkline.bar = y = g(d.fn.sparkline._base, w, { type: "bar", init: function(a, e, f, g, h) { var j = parseInt(f.get("barWidth"), 10),
					n = parseInt(f.get("barSpacing"), 10),
					o = f.get("chartRangeMin"),
					p = f.get("chartRangeMax"),
					q = f.get("chartRangeClip"),
					r = Infinity,
					s = -Infinity,
					u, v, w, x, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R;
				y._super.init.call(this, a, e, f, g, h); for(A = 0, B = e.length; A < B; A++) { O = e[A], u = typeof O == "string" && O.indexOf(":") > -1; if(u || d.isArray(O)) J = !0, u && (O = e[A] = l(O.split(":"))), O = m(O, null), v = b.min.apply(b, O), w = b.max.apply(b, O), v < r && (r = v), w > s && (s = w) } this.stacked = J, this.regionShapes = {}, this.barWidth = j, this.barSpacing = n, this.totalBarWidth = j + n, this.width = g = e.length * j + (e.length - 1) * n, this.initTarget(), q && (H = o === c ? -Infinity : o, I = p === c ? Infinity : p), z = [], x = J ? [] : z; var S = [],
					T = []; for(A = 0, B = e.length; A < B; A++)
					if(J) { K = e[A], e[A] = N = [], S[A] = 0, x[A] = T[A] = 0; for(L = 0, M = K.length; L < M; L++) O = N[L] = q ? i(K[L], H, I) : K[L], O !== null && (O > 0 && (S[A] += O), r < 0 && s > 0 ? O < 0 ? T[A] += b.abs(O) : x[A] += O : x[A] += b.abs(O - (O < 0 ? s : r)), z.push(O)) } else O = q ? i(e[A], H, I) : e[A], O = e[A] = k(O), O !== null && z.push(O);
				this.max = G = b.max.apply(b, z), this.min = F = b.min.apply(b, z), this.stackMax = s = J ? b.max.apply(b, S) : G, this.stackMin = r = J ? b.min.apply(b, z) : F, f.get("chartRangeMin") !== c && (f.get("chartRangeClip") || f.get("chartRangeMin") < F) && (F = f.get("chartRangeMin")), f.get("chartRangeMax") !== c && (f.get("chartRangeClip") || f.get("chartRangeMax") > G) && (G = f.get("chartRangeMax")), this.zeroAxis = D = f.get("zeroAxis", !0), F <= 0 && G >= 0 && D ? E = 0 : D == 0 ? E = F : F > 0 ? E = F : E = G, this.xaxisOffset = E, C = J ? b.max.apply(b, x) + b.max.apply(b, T) : G - F, this.canvasHeightEf = D && F < 0 ? this.canvasHeight - 2 : this.canvasHeight - 1, F < E ? (Q = J && G >= 0 ? s : G, P = (Q - E) / C * this.canvasHeight, P !== b.ceil(P) && (this.canvasHeightEf -= 2, P = b.ceil(P))) : P = this.canvasHeight, this.yoffset = P, d.isArray(f.get("colorMap")) ? (this.colorMapByIndex = f.get("colorMap"), this.colorMapByValue = null) : (this.colorMapByIndex = null, this.colorMapByValue = f.get("colorMap"), this.colorMapByValue && this.colorMapByValue.get === c && (this.colorMapByValue = new t(this.colorMapByValue))), this.range = C }, getRegion: function(a, d, e) { var f = b.floor(d / this.totalBarWidth); return f < 0 || f >= this.values.length ? c : f }, getCurrentRegionFields: function() { var a = this.currentRegion,
					b = r(this.values[a]),
					c = [],
					d, e; for(e = b.length; e--;) d = b[e], c.push({ isNull: d === null, value: d, color: this.calcColor(e, d, a), offset: a }); return c }, calcColor: function(a, b, e) { var f = this.colorMapByIndex,
					g = this.colorMapByValue,
					h = this.options,
					i, j; return this.stacked ? i = h.get("stackedBarColor") : i = b < 0 ? h.get("negBarColor") : h.get("barColor"), b === 0 && h.get("zeroColor") !== c && (i = h.get("zeroColor")), g && (j = g.get(b)) ? i = j : f && f.length > e && (i = f[e]), d.isArray(i) ? i[a % i.length] : i }, renderRegion: function(a, e) { var f = this.values[a],
					g = this.options,
					h = this.xaxisOffset,
					i = [],
					j = this.range,
					k = this.stacked,
					l = this.target,
					m = a * this.totalBarWidth,
					n = this.canvasHeightEf,
					p = this.yoffset,
					q, r, s, t, u, v, w, x, y, z;
				f = d.isArray(f) ? f : [f], w = f.length, x = f[0], t = o(null, f), z = o(h, f, !0); if(t) return g.get("nullColor") ? (s = e ? g.get("nullColor") : this.calcHighlightColor(g.get("nullColor"), g), q = p > 0 ? p - 1 : p, l.drawRect(m, q, this.barWidth - 1, 0, s, s)) : c;
				u = p; for(v = 0; v < w; v++) { x = f[v]; if(k && x === h) { if(!z || y) continue;
						y = !0 } j > 0 ? r = b.floor(n * (b.abs(x - h) / j)) + 1 : r = 1, x < h || x === h && p === 0 ? (q = u, u += r) : (q = p - r, p -= r), s = this.calcColor(v, x, a), e && (s = this.calcHighlightColor(s, g)), i.push(l.drawRect(m, q, this.barWidth - 1, r - 1, s, s)) } return i.length === 1 ? i[0] : i } }), d.fn.sparkline.tristate = z = g(d.fn.sparkline._base, w, { type: "tristate", init: function(a, b, e, f, g) { var h = parseInt(e.get("barWidth"), 10),
					i = parseInt(e.get("barSpacing"), 10);
				z._super.init.call(this, a, b, e, f, g), this.regionShapes = {}, this.barWidth = h, this.barSpacing = i, this.totalBarWidth = h + i, this.values = d.map(b, Number), this.width = f = b.length * h + (b.length - 1) * i, d.isArray(e.get("colorMap")) ? (this.colorMapByIndex = e.get("colorMap"), this.colorMapByValue = null) : (this.colorMapByIndex = null, this.colorMapByValue = e.get("colorMap"), this.colorMapByValue && this.colorMapByValue.get === c && (this.colorMapByValue = new t(this.colorMapByValue))), this.initTarget() }, getRegion: function(a, c, d) { return b.floor(c / this.totalBarWidth) }, getCurrentRegionFields: function() { var a = this.currentRegion; return { isNull: this.values[a] === c, value: this.values[a], color: this.calcColor(this.values[a], a), offset: a } }, calcColor: function(a, b) { var c = this.values,
					d = this.options,
					e = this.colorMapByIndex,
					f = this.colorMapByValue,
					g, h; return f && (h = f.get(a)) ? g = h : e && e.length > b ? g = e[b] : c[b] < 0 ? g = d.get("negBarColor") : c[b] > 0 ? g = d.get("posBarColor") : g = d.get("zeroBarColor"), g }, renderRegion: function(a, c) { var d = this.values,
					e = this.options,
					f = this.target,
					g, h, i, j, k, l;
				g = f.pixelHeight, i = b.round(g / 2), j = a * this.totalBarWidth, d[a] < 0 ? (k = i, h = i - 1) : d[a] > 0 ? (k = 0, h = i - 1) : (k = i - 1, h = 2), l = this.calcColor(d[a], a); if(l === null) return; return c && (l = this.calcHighlightColor(l, e)), f.drawRect(j, k, this.barWidth - 1, h - 1, l, l) } }), d.fn.sparkline.discrete = A = g(d.fn.sparkline._base, w, { type: "discrete", init: function(a, e, f, g, h) { A._super.init.call(this, a, e, f, g, h), this.regionShapes = {}, this.values = e = d.map(e, Number), this.min = b.min.apply(b, e), this.max = b.max.apply(b, e), this.range = this.max - this.min, this.width = g = f.get("width") === "auto" ? e.length * 2 : this.width, this.interval = b.floor(g / e.length), this.itemWidth = g / e.length, f.get("chartRangeMin") !== c && (f.get("chartRangeClip") || f.get("chartRangeMin") < this.min) && (this.min = f.get("chartRangeMin")), f.get("chartRangeMax") !== c && (f.get("chartRangeClip") || f.get("chartRangeMax") > this.max) && (this.max = f.get("chartRangeMax")), this.initTarget(), this.target && (this.lineHeight = f.get("lineHeight") === "auto" ? b.round(this.canvasHeight * .3) : f.get("lineHeight")) }, getRegion: function(a, c, d) { return b.floor(c / this.itemWidth) }, getCurrentRegionFields: function() { var a = this.currentRegion; return { isNull: this.values[a] === c, value: this.values[a], offset: a } }, renderRegion: function(a, c) { var d = this.values,
					e = this.options,
					f = this.min,
					g = this.max,
					h = this.range,
					j = this.interval,
					k = this.target,
					l = this.canvasHeight,
					m = this.lineHeight,
					n = l - m,
					o, p, q, r; return p = i(d[a], f, g), r = a * j, o = b.round(n - n * ((p - f) / h)), q = e.get("thresholdColor") && p < e.get("thresholdValue") ? e.get("thresholdColor") : e.get("lineColor"), c && (q = this.calcHighlightColor(q, e)), k.drawLine(r, o, r, o + m, q) } }), d.fn.sparkline.bullet = B = g(d.fn.sparkline._base, { type: "bullet", init: function(a, d, e, f, g) { var h, i, j;
				B._super.init.call(this, a, d, e, f, g), this.values = d = l(d), j = d.slice(), j[0] = j[0] === null ? j[2] : j[0], j[1] = d[1] === null ? j[2] : j[1], h = b.min.apply(b, d), i = b.max.apply(b, d), e.get("base") === c ? h = h < 0 ? h : 0 : h = e.get("base"), this.min = h, this.max = i, this.range = i - h, this.shapes = {}, this.valueShapes = {}, this.regiondata = {}, this.width = f = e.get("width") === "auto" ? "4.0em" : f, this.target = this.$el.simpledraw(f, g, e.get("composite")), d.length || (this.disabled = !0), this.initTarget() }, getRegion: function(a, b, d) { var e = this.target.getShapeAt(a, b, d); return e !== c && this.shapes[e] !== c ? this.shapes[e] : c }, getCurrentRegionFields: function() { var a = this.currentRegion; return { fieldkey: a.substr(0, 1), value: this.values[a.substr(1)], region: a } }, changeHighlight: function(a) { var b = this.currentRegion,
					c = this.valueShapes[b],
					d;
				delete this.shapes[c]; switch(b.substr(0, 1)) {
					case "r":
						d = this.renderRange(b.substr(1), a); break;
					case "p":
						d = this.renderPerformance(a); break;
					case "t":
						d = this.renderTarget(a) } this.valueShapes[b] = d.id, this.shapes[d.id] = b, this.target.replaceWithShape(c, d) }, renderRange: function(a, c) { var d = this.values[a],
					e = b.round(this.canvasWidth * ((d - this.min) / this.range)),
					f = this.options.get("rangeColors")[a - 2]; return c && (f = this.calcHighlightColor(f, this.options)), this.target.drawRect(0, 0, e - 1, this.canvasHeight - 1, f, f) }, renderPerformance: function(a) { var c = this.values[1],
					d = b.round(this.canvasWidth * ((c - this.min) / this.range)),
					e = this.options.get("performanceColor"); return a && (e = this.calcHighlightColor(e, this.options)), this.target.drawRect(0, b.round(this.canvasHeight * .3), d - 1, b.round(this.canvasHeight * .4) - 1, e, e) }, renderTarget: function(a) { var c = this.values[0],
					d = b.round(this.canvasWidth * ((c - this.min) / this.range) - this.options.get("targetWidth") / 2),
					e = b.round(this.canvasHeight * .1),
					f = this.canvasHeight - e * 2,
					g = this.options.get("targetColor"); return a && (g = this.calcHighlightColor(g, this.options)), this.target.drawRect(d, e, this.options.get("targetWidth") - 1, f - 1, g, g) }, render: function() { var a = this.values.length,
					b = this.target,
					c, d; if(!B._super.render.call(this)) return; for(c = 2; c < a; c++) d = this.renderRange(c).append(), this.shapes[d.id] = "r" + c, this.valueShapes["r" + c] = d.id;
				this.values[1] !== null && (d = this.renderPerformance().append(), this.shapes[d.id] = "p1", this.valueShapes.p1 = d.id), this.values[0] !== null && (d = this.renderTarget().append(), this.shapes[d.id] = "t0", this.valueShapes.t0 = d.id), b.render() } }), d.fn.sparkline.pie = C = g(d.fn.sparkline._base, { type: "pie", init: function(a, c, e, f, g) { var h = 0,
					i;
				C._super.init.call(this, a, c, e, f, g), this.shapes = {}, this.valueShapes = {}, this.values = c = d.map(c, Number), e.get("width") === "auto" && (this.width = this.height); if(c.length > 0)
					for(i = c.length; i--;) h += c[i];
				this.total = h, this.initTarget(), this.radius = b.floor(b.min(this.canvasWidth, this.canvasHeight) / 2) }, getRegion: function(a, b, d) { var e = this.target.getShapeAt(a, b, d); return e !== c && this.shapes[e] !== c ? this.shapes[e] : c }, getCurrentRegionFields: function() { var a = this.currentRegion; return { isNull: this.values[a] === c, value: this.values[a], percent: this.values[a] / this.total * 100, color: this.options.get("sliceColors")[a % this.options.get("sliceColors").length], offset: a } }, changeHighlight: function(a) { var b = this.currentRegion,
					c = this.renderSlice(b, a),
					d = this.valueShapes[b];
				delete this.shapes[d], this.target.replaceWithShape(d, c), this.valueShapes[b] = c.id, this.shapes[c.id] = b }, renderSlice: function(a, d) { var e = this.target,
					f = this.options,
					g = this.radius,
					h = f.get("borderWidth"),
					i = f.get("offset"),
					j = 2 * b.PI,
					k = this.values,
					l = this.total,
					m = i ? 2 * b.PI * (i / 360) : 0,
					n, o, p, q, r;
				q = k.length; for(p = 0; p < q; p++) { n = m, o = m, l > 0 && (o = m + j * (k[p] / l)); if(a === p) return r = f.get("sliceColors")[p % f.get("sliceColors").length], d && (r = this.calcHighlightColor(r, f)), e.drawPieSlice(g, g, g - h, n, o, c, r);
					m = o } }, render: function() { var a = this.target,
					d = this.values,
					e = this.options,
					f = this.radius,
					g = e.get("borderWidth"),
					h, i; if(!C._super.render.call(this)) return;
				g && a.drawCircle(f, f, b.floor(f - g / 2), e.get("borderColor"), c, g).append(); for(i = d.length; i--;) d[i] && (h = this.renderSlice(i).append(), this.valueShapes[i] = h.id, this.shapes[h.id] = i);
				a.render() } }), d.fn.sparkline.box = D = g(d.fn.sparkline._base, { type: "box", init: function(a, b, c, e, f) { D._super.init.call(this, a, b, c, e, f), this.values = d.map(b, Number), this.width = c.get("width") === "auto" ? "4.0em" : e, this.initTarget(), this.values.length || (this.disabled = 1) }, getRegion: function() { return 1 }, getCurrentRegionFields: function() { var a = [{ field: "lq", value: this.quartiles[0] }, { field: "med", value: this.quartiles[1] }, { field: "uq", value: this.quartiles[2] }]; return this.loutlier !== c && a.push({ field: "lo", value: this.loutlier }), this.routlier !== c && a.push({ field: "ro", value: this.routlier }), this.lwhisker !== c && a.push({ field: "lw", value: this.lwhisker }), this.rwhisker !== c && a.push({ field: "rw", value: this.rwhisker }), a }, render: function() { var a = this.target,
					d = this.values,
					e = d.length,
					f = this.options,
					g = this.canvasWidth,
					h = this.canvasHeight,
					i = f.get("chartRangeMin") === c ? b.min.apply(b, d) : f.get("chartRangeMin"),
					k = f.get("chartRangeMax") === c ? b.max.apply(b, d) : f.get("chartRangeMax"),
					l = 0,
					m, n, o, p, q, r, s, t, u, v, w; if(!D._super.render.call(this)) return; if(f.get("raw")) f.get("showOutliers") && d.length > 5 ? (n = d[0], m = d[1], p = d[2], q = d[3], r = d[4], s = d[5], t = d[6]) : (m = d[0], p = d[1], q = d[2], r = d[3], s = d[4]);
				else { d.sort(function(a, b) { return a - b }), p = j(d, 1), q = j(d, 2), r = j(d, 3), o = r - p; if(f.get("showOutliers")) { m = s = c; for(u = 0; u < e; u++) m === c && d[u] > p - o * f.get("outlierIQR") && (m = d[u]), d[u] < r + o * f.get("outlierIQR") && (s = d[u]);
						n = d[0], t = d[e - 1] } else m = d[0], s = d[e - 1] } this.quartiles = [p, q, r], this.lwhisker = m, this.rwhisker = s, this.loutlier = n, this.routlier = t, w = g / (k - i + 1), f.get("showOutliers") && (l = b.ceil(f.get("spotRadius")), g -= 2 * b.ceil(f.get("spotRadius")), w = g / (k - i + 1), n < m && a.drawCircle((n - i) * w + l, h / 2, f.get("spotRadius"), f.get("outlierLineColor"), f.get("outlierFillColor")).append(), t > s && a.drawCircle((t - i) * w + l, h / 2, f.get("spotRadius"), f.get("outlierLineColor"), f.get("outlierFillColor")).append()), a.drawRect(b.round((p - i) * w + l), b.round(h * .1), b.round((r - p) * w), b.round(h * .8), f.get("boxLineColor"), f.get("boxFillColor")).append(), a.drawLine(b.round((m - i) * w + l), b.round(h / 2), b.round((p - i) * w + l), b.round(h / 2), f.get("lineColor")).append(), a.drawLine(b.round((m - i) * w + l), b.round(h / 4), b.round((m - i) * w + l), b.round(h - h / 4), f.get("whiskerColor")).append(), a.drawLine(b.round((s - i) * w + l), b.round(h / 2), b.round((r - i) * w + l), b.round(h / 2), f.get("lineColor")).append(), a.drawLine(b.round((s - i) * w + l), b.round(h / 4), b.round((s - i) * w + l), b.round(h - h / 4), f.get("whiskerColor")).append(), a.drawLine(b.round((q - i) * w + l), b.round(h * .1), b.round((q - i) * w + l), b.round(h * .9), f.get("medianColor")).append(), f.get("target") && (v = b.ceil(f.get("spotRadius")), a.drawLine(b.round((f.get("target") - i) * w + l), b.round(h / 2 - v), b.round((f.get("target") - i) * w + l), b.round(h / 2 + v), f.get("targetColor")).append(), a.drawLine(b.round((f.get("target") - i) * w + l - v), b.round(h / 2), b.round((f.get("target") - i) * w + l + v), b.round(h / 2), f.get("targetColor")).append()), a.render() } }), G = g({ init: function(a, b, c, d) { this.target = a, this.id = b, this.type = c, this.args = d }, append: function() { return this.target.appendShape(this), this } }), H = g({ _pxregex: /(\d+)(px)?\s*$/i, init: function(a, b, c) { if(!a) return;
				this.width = a, this.height = b, this.target = c, this.lastShapeId = null, c[0] && (c = c[0]), d.data(c, "_jqs_vcanvas", this) }, drawLine: function(a, b, c, d, e, f) { return this.drawShape([
					[a, b],
					[c, d]
				], e, f) }, drawShape: function(a, b, c, d) { return this._genShape("Shape", [a, b, c, d]) }, drawCircle: function(a, b, c, d, e, f) { return this._genShape("Circle", [a, b, c, d, e, f]) }, drawPieSlice: function(a, b, c, d, e, f, g) { return this._genShape("PieSlice", [a, b, c, d, e, f, g]) }, drawRect: function(a, b, c, d, e, f) { return this._genShape("Rect", [a, b, c, d, e, f]) }, getElement: function() { return this.canvas }, getLastShapeId: function() { return this.lastShapeId }, reset: function() { alert("reset not implemented") }, _insert: function(a, b) { d(b).html(a) }, _calculatePixelDims: function(a, b, c) { var e;
				e = this._pxregex.exec(b), e ? this.pixelHeight = e[1] : this.pixelHeight = d(c).height(), e = this._pxregex.exec(a), e ? this.pixelWidth = e[1] : this.pixelWidth = d(c).width() }, _genShape: function(a, b) { var c = L++; return b.unshift(c), new G(this, c, a, b) }, appendShape: function(a) { alert("appendShape not implemented") }, replaceWithShape: function(a, b) { alert("replaceWithShape not implemented") }, insertAfterShape: function(a, b) { alert("insertAfterShape not implemented") }, removeShapeId: function(a) { alert("removeShapeId not implemented") }, getShapeAt: function(a, b, c) { alert("getShapeAt not implemented") }, render: function() { alert("render not implemented") } }), I = g(H, { init: function(b, e, f, g) { I._super.init.call(this, b, e, f), this.canvas = a.createElement("canvas"), f[0] && (f = f[0]), d.data(f, "_jqs_vcanvas", this), d(this.canvas).css({ display: "inline-block", width: b, height: e, verticalAlign: "top" }), this._insert(this.canvas, f), this._calculatePixelDims(b, e, this.canvas), this.canvas.width = this.pixelWidth, this.canvas.height = this.pixelHeight, this.interact = g, this.shapes = {}, this.shapeseq = [], this.currentTargetShapeId = c, d(this.canvas).css({ width: this.pixelWidth, height: this.pixelHeight }) }, _getContext: function(a, b, d) { var e = this.canvas.getContext("2d"); return a !== c && (e.strokeStyle = a), e.lineWidth = d === c ? 1 : d, b !== c && (e.fillStyle = b), e }, reset: function() { var a = this._getContext();
				a.clearRect(0, 0, this.pixelWidth, this.pixelHeight), this.shapes = {}, this.shapeseq = [], this.currentTargetShapeId = c }, _drawShape: function(a, b, d, e, f) { var g = this._getContext(d, e, f),
					h, i;
				g.beginPath(), g.moveTo(b[0][0] + .5, b[0][1] + .5); for(h = 1, i = b.length; h < i; h++) g.lineTo(b[h][0] + .5, b[h][1] + .5);
				d !== c && g.stroke(), e !== c && g.fill(), this.targetX !== c && this.targetY !== c && g.isPointInPath(this.targetX, this.targetY) && (this.currentTargetShapeId = a) }, _drawCircle: function(a, d, e, f, g, h, i) { var j = this._getContext(g, h, i);
				j.beginPath(), j.arc(d, e, f, 0, 2 * b.PI, !1), this.targetX !== c && this.targetY !== c && j.isPointInPath(this.targetX, this.targetY) && (this.currentTargetShapeId = a), g !== c && j.stroke(), h !== c && j.fill() }, _drawPieSlice: function(a, b, d, e, f, g, h, i) { var j = this._getContext(h, i);
				j.beginPath(), j.moveTo(b, d), j.arc(b, d, e, f, g, !1), j.lineTo(b, d), j.closePath(), h !== c && j.stroke(), i && j.fill(), this.targetX !== c && this.targetY !== c && j.isPointInPath(this.targetX, this.targetY) && (this.currentTargetShapeId = a) }, _drawRect: function(a, b, c, d, e, f, g) { return this._drawShape(a, [
					[b, c],
					[b + d, c],
					[b + d, c + e],
					[b, c + e],
					[b, c]
				], f, g) }, appendShape: function(a) { return this.shapes[a.id] = a, this.shapeseq.push(a.id), this.lastShapeId = a.id, a.id }, replaceWithShape: function(a, b) { var c = this.shapeseq,
					d;
				this.shapes[b.id] = b; for(d = c.length; d--;) c[d] == a && (c[d] = b.id);
				delete this.shapes[a] }, replaceWithShapes: function(a, b) { var c = this.shapeseq,
					d = {},
					e, f, g; for(f = a.length; f--;) d[a[f]] = !0; for(f = c.length; f--;) e = c[f], d[e] && (c.splice(f, 1), delete this.shapes[e], g = f); for(f = b.length; f--;) c.splice(g, 0, b[f].id), this.shapes[b[f].id] = b[f] }, insertAfterShape: function(a, b) { var c = this.shapeseq,
					d; for(d = c.length; d--;)
					if(c[d] === a) { c.splice(d + 1, 0, b.id), this.shapes[b.id] = b; return } }, removeShapeId: function(a) { var b = this.shapeseq,
					c; for(c = b.length; c--;)
					if(b[c] === a) { b.splice(c, 1); break }
				delete this.shapes[a] }, getShapeAt: function(a, b, c) { return this.targetX = b, this.targetY = c, this.render(), this.currentTargetShapeId }, render: function() { var a = this.shapeseq,
					b = this.shapes,
					c = a.length,
					d = this._getContext(),
					e, f, g;
				d.clearRect(0, 0, this.pixelWidth, this.pixelHeight); for(g = 0; g < c; g++) e = a[g], f = b[e], this["_draw" + f.type].apply(this, f.args);
				this.interact || (this.shapes = {}, this.shapeseq = []) } }), J = g(H, { init: function(b, c, e) { var f;
				J._super.init.call(this, b, c, e), e[0] && (e = e[0]), d.data(e, "_jqs_vcanvas", this), this.canvas = a.createElement("span"), d(this.canvas).css({ display: "inline-block", position: "relative", overflow: "hidden", width: b, height: c, margin: "0px", padding: "0px", verticalAlign: "top" }), this._insert(this.canvas, e), this._calculatePixelDims(b, c, this.canvas), this.canvas.width = this.pixelWidth, this.canvas.height = this.pixelHeight, f = '<v:group coordorigin="0 0" coordsize="' + this.pixelWidth + " " + this.pixelHeight + '"' + ' style="position:absolute;top:0;left:0;width:' + this.pixelWidth + "px;height=" + this.pixelHeight + 'px;"></v:group>', this.canvas.insertAdjacentHTML("beforeEnd", f), this.group = d(this.canvas).children()[0], this.rendered = !1, this.prerender = "" }, _drawShape: function(a, b, d, e, f) { var g = [],
					h, i, j, k, l, m, n; for(n = 0, m = b.length; n < m; n++) g[n] = "" + b[n][0] + "," + b[n][1]; return h = g.splice(0, 1), f = f === c ? 1 : f, i = d === c ? ' stroked="false" ' : ' strokeWeight="' + f + 'px" strokeColor="' + d + '" ', j = e === c ? ' filled="false"' : ' fillColor="' + e + '" filled="true" ', k = g[0] === g[g.length - 1] ? "x " : "", l = '<v:shape coordorigin="0 0" coordsize="' + this.pixelWidth + " " + this.pixelHeight + '" ' + ' id="jqsshape' + a + '" ' + i + j + ' style="position:absolute;left:0px;top:0px;height:' + this.pixelHeight + "px;width:" + this.pixelWidth + 'px;padding:0px;margin:0px;" ' + ' path="m ' + h + " l " + g.join(", ") + " " + k + 'e">' + " </v:shape>", l }, _drawCircle: function(a, b, d, e, f, g, h) { var i, j, k; return b -= e, d -= e, i = f === c ? ' stroked="false" ' : ' strokeWeight="' + h + 'px" strokeColor="' + f + '" ', j = g === c ? ' filled="false"' : ' fillColor="' + g + '" filled="true" ', k = '<v:oval  id="jqsshape' + a + '" ' + i + j + ' style="position:absolute;top:' + d + "px; left:" + b + "px; width:" + e * 2 + "px; height:" + e * 2 + 'px"></v:oval>', k }, _drawPieSlice: function(a, d, e, f, g, h, i, j) { var k, l, m, n, o, p, q, r; if(g === h) return "";
				h - g === 2 * b.PI && (g = 0, h = 2 * b.PI), l = d + b.round(b.cos(g) * f), m = e + b.round(b.sin(g) * f), n = d + b.round(b.cos(h) * f), o = e + b.round(b.sin(h) * f); if(l === n && m === o) { if(h - g < b.PI) return "";
					l = n = d + f, m = o = e } return l === n && m === o && h - g < b.PI ? "" : (k = [d - f, e - f, d + f, e + f, l, m, n, o], p = i === c ? ' stroked="false" ' : ' strokeWeight="1px" strokeColor="' + i + '" ', q = j === c ? ' filled="false"' : ' fillColor="' + j + '" filled="true" ', r = '<v:shape coordorigin="0 0" coordsize="' + this.pixelWidth + " " + this.pixelHeight + '" ' + ' id="jqsshape' + a + '" ' + p + q + ' style="position:absolute;left:0px;top:0px;height:' + this.pixelHeight + "px;width:" + this.pixelWidth + 'px;padding:0px;margin:0px;" ' + ' path="m ' + d + "," + e + " wa " + k.join(", ") + ' x e">' + " </v:shape>", r) }, _drawRect: function(a, b, c, d, e, f, g) { return this._drawShape(a, [
					[b, c],
					[b, c + e],
					[b + d, c + e],
					[b + d, c],
					[b, c]
				], f, g) }, reset: function() { this.group.innerHTML = "" }, appendShape: function(a) { var b = this["_draw" + a.type].apply(this, a.args); return this.rendered ? this.group.insertAdjacentHTML("beforeEnd", b) : this.prerender += b, this.lastShapeId = a.id, a.id }, replaceWithShape: function(a, b) { var c = d("#jqsshape" + a),
					e = this["_draw" + b.type].apply(this, b.args);
				c[0].outerHTML = e }, replaceWithShapes: function(a, b) { var c = d("#jqsshape" + a[0]),
					e = "",
					f = b.length,
					g; for(g = 0; g < f; g++) e += this["_draw" + b[g].type].apply(this, b[g].args);
				c[0].outerHTML = e; for(g = 1; g < a.length; g++) d("#jqsshape" + a[g]).remove() }, insertAfterShape: function(a, b) { var c = d("#jqsshape" + a),
					e = this["_draw" + b.type].apply(this, b.args);
				c[0].insertAdjacentHTML("afterEnd", e) }, removeShapeId: function(a) { var b = d("#jqsshape" + a);
				this.group.removeChild(b[0]) }, getShapeAt: function(a, b, c) { var d = a.id.substr(8); return d }, render: function() { this.rendered || (this.group.innerHTML = this.prerender, this.rendered = !0) } }) }) })(document, Math);

// Magnific Popup v1.1.0 by Dmitry Semenov
// http://bit.ly/magnific-popup#build=inline+image+ajax+iframe+gallery+retina+imagezoom
(function(a) { typeof define == "function" && define.amd ? define(["jquery"], a) : typeof exports == "object" ? a(require("jquery")) : a(window.jQuery || window.Zepto) })(function(a) { var b = "Close",
		c = "BeforeClose",
		d = "AfterClose",
		e = "BeforeAppend",
		f = "MarkupParse",
		g = "Open",
		h = "Change",
		i = "mfp",
		j = "." + i,
		k = "mfp-ready",
		l = "mfp-removing",
		m = "mfp-prevent-close",
		n, o = function() {},
		p = !!window.jQuery,
		q, r = a(window),
		s, t, u, v, w = function(a, b) { n.ev.on(i + a + j, b) },
		x = function(b, c, d, e) { var f = document.createElement("div"); return f.className = "mfp-" + b, d && (f.innerHTML = d), e ? c && c.appendChild(f) : (f = a(f), c && f.appendTo(c)), f },
		y = function(b, c) { n.ev.triggerHandler(i + b, c), n.st.callbacks && (b = b.charAt(0).toLowerCase() + b.slice(1), n.st.callbacks[b] && n.st.callbacks[b].apply(n, a.isArray(c) ? c : [c])) },
		z = function(b) { if(b !== v || !n.currTemplate.closeBtn) n.currTemplate.closeBtn = a(n.st.closeMarkup.replace("%title%", n.st.tClose)), v = b; return n.currTemplate.closeBtn },
		A = function() { a.magnificPopup.instance || (n = new o, n.init(), a.magnificPopup.instance = n) },
		B = function() { var a = document.createElement("p").style,
				b = ["ms", "O", "Moz", "Webkit"]; if(a.transition !== undefined) return !0; while(b.length)
				if(b.pop() + "Transition" in a) return !0; return !1 };
	o.prototype = { constructor: o, init: function() { var b = navigator.appVersion;
			n.isLowIE = n.isIE8 = document.all && !document.addEventListener, n.isAndroid = /android/gi.test(b), n.isIOS = /iphone|ipad|ipod/gi.test(b), n.supportsTransition = B(), n.probablyMobile = n.isAndroid || n.isIOS || /(Opera Mini)|Kindle|webOS|BlackBerry|(Opera Mobi)|(Windows Phone)|IEMobile/i.test(navigator.userAgent), s = a(document), n.popupsCache = {} }, open: function(b) { var c; if(b.isObj === !1) { n.items = b.items.toArray(), n.index = 0; var d = b.items,
					e; for(c = 0; c < d.length; c++) { e = d[c], e.parsed && (e = e.el[0]); if(e === b.el[0]) { n.index = c; break } } } else n.items = a.isArray(b.items) ? b.items : [b.items], n.index = b.index || 0; if(n.isOpen) { n.updateItemHTML(); return } n.types = [], u = "", b.mainEl && b.mainEl.length ? n.ev = b.mainEl.eq(0) : n.ev = s, b.key ? (n.popupsCache[b.key] || (n.popupsCache[b.key] = {}), n.currTemplate = n.popupsCache[b.key]) : n.currTemplate = {}, n.st = a.extend(!0, {}, a.magnificPopup.defaults, b), n.fixedContentPos = n.st.fixedContentPos === "auto" ? !n.probablyMobile : n.st.fixedContentPos, n.st.modal && (n.st.closeOnContentClick = !1, n.st.closeOnBgClick = !1, n.st.showCloseBtn = !1, n.st.enableEscapeKey = !1), n.bgOverlay || (n.bgOverlay = x("bg").on("click" + j, function() { n.close() }), n.wrap = x("wrap").attr("tabindex", -1).on("click" + j, function(a) { n._checkIfClose(a.target) && n.close() }), n.container = x("container", n.wrap)), n.contentContainer = x("content"), n.st.preloader && (n.preloader = x("preloader", n.container, n.st.tLoading)); var h = a.magnificPopup.modules; for(c = 0; c < h.length; c++) { var i = h[c];
				i = i.charAt(0).toUpperCase() + i.slice(1), n["init" + i].call(n) } y("BeforeOpen"), n.st.showCloseBtn && (n.st.closeBtnInside ? (w(f, function(a, b, c, d) { c.close_replaceWith = z(d.type) }), u += " mfp-close-btn-in") : n.wrap.append(z())), n.st.alignTop && (u += " mfp-align-top"), n.fixedContentPos ? n.wrap.css({ overflow: n.st.overflowY, overflowX: "hidden", overflowY: n.st.overflowY }) : n.wrap.css({ top: r.scrollTop(), position: "absolute" }), (n.st.fixedBgPos === !1 || n.st.fixedBgPos === "auto" && !n.fixedContentPos) && n.bgOverlay.css({ height: s.height(), position: "absolute" }), n.st.enableEscapeKey && s.on("keyup" + j, function(a) { a.keyCode === 27 && n.close() }), r.on("resize" + j, function() { n.updateSize() }), n.st.closeOnContentClick || (u += " mfp-auto-cursor"), u && n.wrap.addClass(u); var l = n.wH = r.height(),
				m = {}; if(n.fixedContentPos && n._hasScrollBar(l)) { var o = n._getScrollbarSize();
				o && (m.marginRight = o) } n.fixedContentPos && (n.isIE7 ? a("body, html").css("overflow", "hidden") : m.overflow = "hidden"); var p = n.st.mainClass; return n.isIE7 && (p += " mfp-ie7"), p && n._addClassToMFP(p), n.updateItemHTML(), y("BuildControls"), a("html").css(m), n.bgOverlay.add(n.wrap).prependTo(n.st.prependTo || a(document.body)), n._lastFocusedEl = document.activeElement, setTimeout(function() { n.content ? (n._addClassToMFP(k), n._setFocus()) : n.bgOverlay.addClass(k), s.on("focusin" + j, n._onFocusIn) }, 16), n.isOpen = !0, n.updateSize(l), y(g), b }, close: function() { if(!n.isOpen) return;
			y(c), n.isOpen = !1, n.st.removalDelay && !n.isLowIE && n.supportsTransition ? (n._addClassToMFP(l), setTimeout(function() { n._close() }, n.st.removalDelay)) : n._close() }, _close: function() { y(b); var c = l + " " + k + " ";
			n.bgOverlay.detach(), n.wrap.detach(), n.container.empty(), n.st.mainClass && (c += n.st.mainClass + " "), n._removeClassFromMFP(c); if(n.fixedContentPos) { var e = { marginRight: "" };
				n.isIE7 ? a("body, html").css("overflow", "") : e.overflow = "", a("html").css(e) } s.off("keyup" + j + " focusin" + j), n.ev.off(j), n.wrap.attr("class", "mfp-wrap").removeAttr("style"), n.bgOverlay.attr("class", "mfp-bg"), n.container.attr("class", "mfp-container"), n.st.showCloseBtn && (!n.st.closeBtnInside || n.currTemplate[n.currItem.type] === !0) && n.currTemplate.closeBtn && n.currTemplate.closeBtn.detach(), n.st.autoFocusLast && n._lastFocusedEl && a(n._lastFocusedEl).focus(), n.currItem = null, n.content = null, n.currTemplate = null, n.prevHeight = 0, y(d) }, updateSize: function(a) { if(n.isIOS) { var b = document.documentElement.clientWidth / window.innerWidth,
					c = window.innerHeight * b;
				n.wrap.css("height", c), n.wH = c } else n.wH = a || r.height();
			n.fixedContentPos || n.wrap.css("height", n.wH), y("Resize") }, updateItemHTML: function() { var b = n.items[n.index];
			n.contentContainer.detach(), n.content && n.content.detach(), b.parsed || (b = n.parseEl(n.index)); var c = b.type;
			y("BeforeChange", [n.currItem ? n.currItem.type : "", c]), n.currItem = b; if(!n.currTemplate[c]) { var d = n.st[c] ? n.st[c].markup : !1;
				y("FirstMarkupParse", d), d ? n.currTemplate[c] = a(d) : n.currTemplate[c] = !0 } t && t !== b.type && n.container.removeClass("mfp-" + t + "-holder"); var e = n["get" + c.charAt(0).toUpperCase() + c.slice(1)](b, n.currTemplate[c]);
			n.appendContent(e, c), b.preloaded = !0, y(h, b), t = b.type, n.container.prepend(n.contentContainer), y("AfterChange") }, appendContent: function(a, b) { n.content = a, a ? n.st.showCloseBtn && n.st.closeBtnInside && n.currTemplate[b] === !0 ? n.content.find(".mfp-close").length || n.content.append(z()) : n.content = a : n.content = "", y(e), n.container.addClass("mfp-" + b + "-holder"), n.contentContainer.append(n.content) }, parseEl: function(b) { var c = n.items[b],
				d;
			c.tagName ? c = { el: a(c) } : (d = c.type, c = { data: c, src: c.src }); if(c.el) { var e = n.types; for(var f = 0; f < e.length; f++)
					if(c.el.hasClass("mfp-" + e[f])) { d = e[f]; break }
				c.src = c.el.attr("data-mfp-src"), c.src || (c.src = c.el.attr("href")) } return c.type = d || n.st.type || "inline", c.index = b, c.parsed = !0, n.items[b] = c, y("ElementParse", c), n.items[b] }, addGroup: function(a, b) { var c = function(c) { c.mfpEl = this, n._openClick(c, a, b) };
			b || (b = {}); var d = "click.magnificPopup";
			b.mainEl = a, b.items ? (b.isObj = !0, a.off(d).on(d, c)) : (b.isObj = !1, b.delegate ? a.off(d).on(d, b.delegate, c) : (b.items = a, a.off(d).on(d, c))) }, _openClick: function(b, c, d) { var e = d.midClick !== undefined ? d.midClick : a.magnificPopup.defaults.midClick; if(!e && (b.which === 2 || b.ctrlKey || b.metaKey || b.altKey || b.shiftKey)) return; var f = d.disableOn !== undefined ? d.disableOn : a.magnificPopup.defaults.disableOn; if(f)
				if(a.isFunction(f)) { if(!f.call(n)) return !0 } else if(r.width() < f) return !0;
			b.type && (b.preventDefault(), n.isOpen && b.stopPropagation()), d.el = a(b.mfpEl), d.delegate && (d.items = c.find(d.delegate)), n.open(d) }, updateStatus: function(a, b) { if(n.preloader) { q !== a && n.container.removeClass("mfp-s-" + q), !b && a === "loading" && (b = n.st.tLoading); var c = { status: a, text: b };
				y("UpdateStatus", c), a = c.status, b = c.text, n.preloader.html(b), n.preloader.find("a").on("click", function(a) { a.stopImmediatePropagation() }), n.container.addClass("mfp-s-" + a), q = a } }, _checkIfClose: function(b) { if(a(b).hasClass(m)) return; var c = n.st.closeOnContentClick,
				d = n.st.closeOnBgClick; if(c && d) return !0; if(!n.content || a(b).hasClass("mfp-close") || n.preloader && b === n.preloader[0]) return !0; if(b !== n.content[0] && !a.contains(n.content[0], b)) { if(d && a.contains(document, b)) return !0 } else if(c) return !0; return !1 }, _addClassToMFP: function(a) { n.bgOverlay.addClass(a), n.wrap.addClass(a) }, _removeClassFromMFP: function(a) { this.bgOverlay.removeClass(a), n.wrap.removeClass(a) }, _hasScrollBar: function(a) { return(n.isIE7 ? s.height() : document.body.scrollHeight) > (a || r.height()) }, _setFocus: function() {
			(n.st.focus ? n.content.find(n.st.focus).eq(0) : n.wrap).focus() }, _onFocusIn: function(b) { if(b.target !== n.wrap[0] && !a.contains(n.wrap[0], b.target)) return n._setFocus(), !1 }, _parseMarkup: function(b, c, d) { var e;
			d.data && (c = a.extend(d.data, c)), y(f, [b, c, d]), a.each(c, function(c, d) { if(d === undefined || d === !1) return !0;
				e = c.split("_"); if(e.length > 1) { var f = b.find(j + "-" + e[0]); if(f.length > 0) { var g = e[1];
						g === "replaceWith" ? f[0] !== d[0] && f.replaceWith(d) : g === "img" ? f.is("img") ? f.attr("src", d) : f.replaceWith(a("<img>").attr("src", d).attr("class", f.attr("class"))) : f.attr(e[1], d) } } else b.find(j + "-" + c).html(d) }) }, _getScrollbarSize: function() { if(n.scrollbarSize === undefined) { var a = document.createElement("div");
				a.style.cssText = "width: 99px; height: 99px; overflow: scroll; position: absolute; top: -9999px;", document.body.appendChild(a), n.scrollbarSize = a.offsetWidth - a.clientWidth, document.body.removeChild(a) } return n.scrollbarSize } }, a.magnificPopup = { instance: null, proto: o.prototype, modules: [], open: function(b, c) { return A(), b ? b = a.extend(!0, {}, b) : b = {}, b.isObj = !0, b.index = c || 0, this.instance.open(b) }, close: function() { return a.magnificPopup.instance && a.magnificPopup.instance.close() }, registerModule: function(b, c) { c.options && (a.magnificPopup.defaults[b] = c.options), a.extend(this.proto, c.proto), this.modules.push(b) }, defaults: { disableOn: 0, key: null, midClick: !1, mainClass: "", preloader: !0, focus: "", closeOnContentClick: !1, closeOnBgClick: !0, closeBtnInside: !0, showCloseBtn: !0, enableEscapeKey: !0, modal: !1, alignTop: !1, removalDelay: 0, prependTo: null, fixedContentPos: "auto", fixedBgPos: "auto", overflowY: "auto", closeMarkup: '<button title="%title%" type="button" class="mfp-close">&#215;</button>', tClose: "Close (Esc)", tLoading: "Loading...", autoFocusLast: !0 } }, a.fn.magnificPopup = function(b) { A(); var c = a(this); if(typeof b == "string")
			if(b === "open") { var d, e = p ? c.data("magnificPopup") : c[0].magnificPopup,
					f = parseInt(arguments[1], 10) || 0;
				e.items ? d = e.items[f] : (d = c, e.delegate && (d = d.find(e.delegate)), d = d.eq(f)), n._openClick({ mfpEl: d }, c, e) } else n.isOpen && n[b].apply(n, Array.prototype.slice.call(arguments, 1));
		else b = a.extend(!0, {}, b), p ? c.data("magnificPopup", b) : c[0].magnificPopup = b, n.addGroup(c, b); return c }; var C = "inline",
		D, E, F, G = function() { F && (E.after(F.addClass(D)).detach(), F = null) };
	a.magnificPopup.registerModule(C, { options: { hiddenClass: "hide", markup: "", tNotFound: "Content not found" }, proto: { initInline: function() { n.types.push(C), w(b + "." + C, function() { G() }) }, getInline: function(b, c) { G(); if(b.src) { var d = n.st.inline,
						e = a(b.src); if(e.length) { var f = e[0].parentNode;
						f && f.tagName && (E || (D = d.hiddenClass, E = x(D), D = "mfp-" + D), F = e.after(E).detach().removeClass(D)), n.updateStatus("ready") } else n.updateStatus("error", d.tNotFound), e = a("<div>"); return b.inlineElement = e, e } return n.updateStatus("ready"), n._parseMarkup(c, {}, b), c } } }); var H = "ajax",
		I, J = function() { I && a(document.body).removeClass(I) },
		K = function() { J(), n.req && n.req.abort() };
	a.magnificPopup.registerModule(H, { options: { settings: null, cursor: "mfp-ajax-cur", tError: '<a href="%url%">The content</a> could not be loaded.' }, proto: { initAjax: function() { n.types.push(H), I = n.st.ajax.cursor, w(b + "." + H, K), w("BeforeChange." + H, K) }, getAjax: function(b) { I && a(document.body).addClass(I), n.updateStatus("loading"); var c = a.extend({ url: b.src, success: function(c, d, e) { var f = { data: c, xhr: e };
						y("ParseAjax", f), n.appendContent(a(f.data), H), b.finished = !0, J(), n._setFocus(), setTimeout(function() { n.wrap.addClass(k) }, 16), n.updateStatus("ready"), y("AjaxContentAdded") }, error: function() { J(), b.finished = b.loadError = !0, n.updateStatus("error", n.st.ajax.tError.replace("%url%", b.src)) } }, n.st.ajax.settings); return n.req = a.ajax(c), "" } } }); var L, M = function(b) { if(b.data && b.data.title !== undefined) return b.data.title; var c = n.st.image.titleSrc; if(c) { if(a.isFunction(c)) return c.call(n, b); if(b.el) return b.el.attr(c) || "" } return "" };
	a.magnificPopup.registerModule("image", { options: { markup: '<div class="mfp-figure"><div class="mfp-close"></div><figure><div class="mfp-img"></div><figcaption><div class="mfp-bottom-bar"><div class="mfp-title"></div><div class="mfp-counter"></div></div></figcaption></figure></div>', cursor: "mfp-zoom-out-cur", titleSrc: "title", verticalFit: !0, tError: '<a href="%url%">The image</a> could not be loaded.' }, proto: { initImage: function() { var c = n.st.image,
					d = ".image";
				n.types.push("image"), w(g + d, function() { n.currItem.type === "image" && c.cursor && a(document.body).addClass(c.cursor) }), w(b + d, function() { c.cursor && a(document.body).removeClass(c.cursor), r.off("resize" + j) }), w("Resize" + d, n.resizeImage), n.isLowIE && w("AfterChange", n.resizeImage) }, resizeImage: function() { var a = n.currItem; if(!a || !a.img) return; if(n.st.image.verticalFit) { var b = 0;
					n.isLowIE && (b = parseInt(a.img.css("padding-top"), 10) + parseInt(a.img.css("padding-bottom"), 10)), a.img.css("max-height", n.wH - b) } }, _onImageHasSize: function(a) { a.img && (a.hasSize = !0, L && clearInterval(L), a.isCheckingImgSize = !1, y("ImageHasSize", a), a.imgHidden && (n.content && n.content.removeClass("mfp-loading"), a.imgHidden = !1)) }, findImageSize: function(a) { var b = 0,
					c = a.img[0],
					d = function(e) { L && clearInterval(L), L = setInterval(function() { if(c.naturalWidth > 0) { n._onImageHasSize(a); return } b > 200 && clearInterval(L), b++, b === 3 ? d(10) : b === 40 ? d(50) : b === 100 && d(500) }, e) };
				d(1) }, getImage: function(b, c) { var d = 0,
					e = function() { b && (b.img[0].complete ? (b.img.off(".mfploader"), b === n.currItem && (n._onImageHasSize(b), n.updateStatus("ready")), b.hasSize = !0, b.loaded = !0, y("ImageLoadComplete")) : (d++, d < 200 ? setTimeout(e, 100) : f())) },
					f = function() { b && (b.img.off(".mfploader"), b === n.currItem && (n._onImageHasSize(b), n.updateStatus("error", g.tError.replace("%url%", b.src))), b.hasSize = !0, b.loaded = !0, b.loadError = !0) },
					g = n.st.image,
					h = c.find(".mfp-img"); if(h.length) { var i = document.createElement("img");
					i.className = "mfp-img", b.el && b.el.find("img").length && (i.alt = b.el.find("img").attr("alt")), b.img = a(i).on("load.mfploader", e).on("error.mfploader", f), i.src = b.src, h.is("img") && (b.img = b.img.clone()), i = b.img[0], i.naturalWidth > 0 ? b.hasSize = !0 : i.width || (b.hasSize = !1) } return n._parseMarkup(c, { title: M(b), img_replaceWith: b.img }, b), n.resizeImage(), b.hasSize ? (L && clearInterval(L), b.loadError ? (c.addClass("mfp-loading"), n.updateStatus("error", g.tError.replace("%url%", b.src))) : (c.removeClass("mfp-loading"), n.updateStatus("ready")), c) : (n.updateStatus("loading"), b.loading = !0, b.hasSize || (b.imgHidden = !0, c.addClass("mfp-loading"), n.findImageSize(b)), c) } } }); var N, O = function() { return N === undefined && (N = document.createElement("p").style.MozTransform !== undefined), N };
	a.magnificPopup.registerModule("zoom", { options: { enabled: !1, easing: "ease-in-out", duration: 300, opener: function(a) { return a.is("img") ? a : a.find("img") } }, proto: { initZoom: function() { var a = n.st.zoom,
					d = ".zoom",
					e; if(!a.enabled || !n.supportsTransition) return; var f = a.duration,
					g = function(b) { var c = b.clone().removeAttr("style").removeAttr("class").addClass("mfp-animated-image"),
							d = "all " + a.duration / 1e3 + "s " + a.easing,
							e = { position: "fixed", zIndex: 9999, left: 0, top: 0, "-webkit-backface-visibility": "hidden" },
							f = "transition"; return e["-webkit-" + f] = e["-moz-" + f] = e["-o-" + f] = e[f] = d, c.css(e), c },
					h = function() { n.content.css("visibility", "visible") },
					i, j;
				w("BuildControls" + d, function() { if(n._allowZoom()) { clearTimeout(i), n.content.css("visibility", "hidden"), e = n._getItemToZoom(); if(!e) { h(); return } j = g(e), j.css(n._getOffset()), n.wrap.append(j), i = setTimeout(function() { j.css(n._getOffset(!0)), i = setTimeout(function() { h(), setTimeout(function() { j.remove(), e = j = null, y("ZoomAnimationEnded") }, 16) }, f) }, 16) } }), w(c + d, function() { if(n._allowZoom()) { clearTimeout(i), n.st.removalDelay = f; if(!e) { e = n._getItemToZoom(); if(!e) return;
							j = g(e) } j.css(n._getOffset(!0)), n.wrap.append(j), n.content.css("visibility", "hidden"), setTimeout(function() { j.css(n._getOffset()) }, 16) } }), w(b + d, function() { n._allowZoom() && (h(), j && j.remove(), e = null) }) }, _allowZoom: function() { return n.currItem.type === "image" }, _getItemToZoom: function() { return n.currItem.hasSize ? n.currItem.img : !1 }, _getOffset: function(b) { var c;
				b ? c = n.currItem.img : c = n.st.zoom.opener(n.currItem.el || n.currItem); var d = c.offset(),
					e = parseInt(c.css("padding-top"), 10),
					f = parseInt(c.css("padding-bottom"), 10);
				d.top -= a(window).scrollTop() - e; var g = { width: c.width(), height: (p ? c.innerHeight() : c[0].offsetHeight) - f - e }; return O() ? g["-moz-transform"] = g.transform = "translate(" + d.left + "px," + d.top + "px)" : (g.left = d.left, g.top = d.top), g } } }); var P = "iframe",
		Q = "//about:blank",
		R = function(a) { if(n.currTemplate[P]) { var b = n.currTemplate[P].find("iframe");
				b.length && (a || (b[0].src = Q), n.isIE8 && b.css("display", a ? "block" : "none")) } };
	a.magnificPopup.registerModule(P, { options: { markup: '<div class="mfp-iframe-scaler"><div class="mfp-close"></div><iframe class="mfp-iframe" src="//about:blank" frameborder="0" allowfullscreen></iframe></div>', srcAction: "iframe_src", patterns: { youtube: { index: "youtube.com", id: "v=", src: "//www.youtube.com/embed/%id%?autoplay=1" }, vimeo: { index: "vimeo.com/", id: "/", src: "//player.vimeo.com/video/%id%?autoplay=1" }, gmaps: { index: "//maps.google.", src: "%id%&output=embed" } } }, proto: { initIframe: function() { n.types.push(P), w("BeforeChange", function(a, b, c) { b !== c && (b === P ? R() : c === P && R(!0)) }), w(b + "." + P, function() { R() }) }, getIframe: function(b, c) { var d = b.src,
					e = n.st.iframe;
				a.each(e.patterns, function() { if(d.indexOf(this.index) > -1) return this.id && (typeof this.id == "string" ? d = d.substr(d.lastIndexOf(this.id) + this.id.length, d.length) : d = this.id.call(this, d)), d = this.src.replace("%id%", d), !1 }); var f = {}; return e.srcAction && (f[e.srcAction] = d), n._parseMarkup(c, f, b), n.updateStatus("ready"), c } } }); var S = function(a) { var b = n.items.length; return a > b - 1 ? a - b : a < 0 ? b + a : a },
		T = function(a, b, c) { return a.replace(/%curr%/gi, b + 1).replace(/%total%/gi, c) };
	a.magnificPopup.registerModule("gallery", { options: { enabled: !1, arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>', preload: [0, 2], navigateByImgClick: !0, arrows: !0, tPrev: "Previous (Left arrow key)", tNext: "Next (Right arrow key)", tCounter: "%curr% of %total%" }, proto: { initGallery: function() { var c = n.st.gallery,
					d = ".mfp-gallery";
				n.direction = !0; if(!c || !c.enabled) return !1;
				u += " mfp-gallery", w(g + d, function() { c.navigateByImgClick && n.wrap.on("click" + d, ".mfp-img", function() { if(n.items.length > 1) return n.next(), !1 }), s.on("keydown" + d, function(a) { a.keyCode === 37 ? n.prev() : a.keyCode === 39 && n.next() }) }), w("UpdateStatus" + d, function(a, b) { b.text && (b.text = T(b.text, n.currItem.index, n.items.length)) }), w(f + d, function(a, b, d, e) { var f = n.items.length;
					d.counter = f > 1 ? T(c.tCounter, e.index, f) : "" }), w("BuildControls" + d, function() { if(n.items.length > 1 && c.arrows && !n.arrowLeft) { var b = c.arrowMarkup,
							d = n.arrowLeft = a(b.replace(/%title%/gi, c.tPrev).replace(/%dir%/gi, "left")).addClass(m),
							e = n.arrowRight = a(b.replace(/%title%/gi, c.tNext).replace(/%dir%/gi, "right")).addClass(m);
						d.click(function() { n.prev() }), e.click(function() { n.next() }), n.container.append(d.add(e)) } }), w(h + d, function() { n._preloadTimeout && clearTimeout(n._preloadTimeout), n._preloadTimeout = setTimeout(function() { n.preloadNearbyImages(), n._preloadTimeout = null }, 16) }), w(b + d, function() { s.off(d), n.wrap.off("click" + d), n.arrowRight = n.arrowLeft = null }) }, next: function() { n.direction = !0, n.index = S(n.index + 1), n.updateItemHTML() }, prev: function() { n.direction = !1, n.index = S(n.index - 1), n.updateItemHTML() }, goTo: function(a) { n.direction = a >= n.index, n.index = a, n.updateItemHTML() }, preloadNearbyImages: function() { var a = n.st.gallery.preload,
					b = Math.min(a[0], n.items.length),
					c = Math.min(a[1], n.items.length),
					d; for(d = 1; d <= (n.direction ? c : b); d++) n._preloadItem(n.index + d); for(d = 1; d <= (n.direction ? b : c); d++) n._preloadItem(n.index - d) }, _preloadItem: function(b) { b = S(b); if(n.items[b].preloaded) return; var c = n.items[b];
				c.parsed || (c = n.parseEl(b)), y("LazyLoad", c), c.type === "image" && (c.img = a('<img class="mfp-img" />').on("load.mfploader", function() { c.hasSize = !0 }).on("error.mfploader", function() { c.hasSize = !0, c.loadError = !0, y("LazyLoadError", c) }).attr("src", c.src)), c.preloaded = !0 } } }); var U = "retina";
	a.magnificPopup.registerModule(U, { options: { replaceSrc: function(a) { return a.src.replace(/\.\w+$/, function(a) { return "@2x" + a }) }, ratio: 1 }, proto: { initRetina: function() { if(window.devicePixelRatio > 1) { var a = n.st.retina,
						b = a.ratio;
					b = isNaN(b) ? b() : b, b > 1 && (w("ImageHasSize." + U, function(a, c) { c.img.css({ "max-width": c.img[0].naturalWidth / b, width: "100%" }) }), w("ElementParse." + U, function(c, d) { d.src = a.replaceSrc(d, b) })) } } } }), A() });

/*! Copyright (c) 2011 Piotr Rochala (http://rocha.la)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php)
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * Version: 1.3.8
 *
 */
(function(e) {
	e.fn.extend({
		slimScroll: function(f) {
			var a = e.extend({ width: "auto", height: "250px", size: "7px", color: "#000", position: "right", distance: "1px", start: "top", opacity: .4, alwaysVisible: !1, disableFadeOut: !1, railVisible: !1, railColor: "#333", railOpacity: .2, railDraggable: !0, railClass: "slimScrollRail", barClass: "slimScrollBar", wrapperClass: "slimScrollDiv", allowPageScroll: !1, wheelStep: 20, touchScrollStep: 200, borderRadius: "7px", railBorderRadius: "7px" }, f);
			this.each(function() {
				function v(d) {
					if(r) {
						d = d || window.event;
						var c = 0;
						d.wheelDelta && (c = -d.wheelDelta / 120);
						d.detail && (c = d.detail / 3);
						e(d.target || d.srcTarget || d.srcElement).closest("." + a.wrapperClass).is(b.parent()) && n(c, !0);
						d.preventDefault && !k && d.preventDefault();
						k || (d.returnValue = !1)
					}
				}

				function n(d, e, f) {
					k = !1;
					var g = d,
						h = b.outerHeight() - c.outerHeight();
					e && (g = parseInt(c.css("top")) + d * parseInt(a.wheelStep) / 100 * c.outerHeight(), g = Math.min(Math.max(g, 0), h), g = 0 < d ? Math.ceil(g) : Math.floor(g), c.css({ top: g + "px" }));
					l = parseInt(c.css("top")) / (b.outerHeight() - c.outerHeight());
					g = l * (b[0].scrollHeight - b.outerHeight());
					f && (g = d, d = g / b[0].scrollHeight * b.outerHeight(), d = Math.min(Math.max(d, 0), h), c.css({ top: d + "px" }));
					b.scrollTop(g);
					b.trigger("slimscrolling", ~~g);
					w();
					q()
				}

				function x() { u = Math.max(b.outerHeight() / b[0].scrollHeight * b.outerHeight(), 30);
					c.css({ height: u + "px" }); var a = u == b.outerHeight() ? "none" : "block";
					c.css({ display: a }) }

				function w() {
					x();
					clearTimeout(B);
					l == ~~l ? (k = a.allowPageScroll, C != l && b.trigger("slimscroll", 0 == ~~l ? "top" : "bottom")) : k = !1;
					C = l;
					u >= b.outerHeight() ? k = !0 : (c.stop(!0, !0).fadeIn("fast"), a.railVisible && m.stop(!0, !0).fadeIn("fast"))
				}

				function q() { a.alwaysVisible || (B = setTimeout(function() { a.disableFadeOut && r || y || z || (c.fadeOut("slow"), m.fadeOut("slow")) }, 1E3)) }
				var r, y, z, B, A, u, l, C, k = !1,
					b = e(this);
				if(b.parent().hasClass(a.wrapperClass)) {
					var p = b.scrollTop(),
						c = b.siblings("." + a.barClass),
						m = b.siblings("." + a.railClass);
					x();
					if(e.isPlainObject(f)) {
						if("height" in f && "auto" == f.height) {
							b.parent().css("height", "auto");
							b.css("height", "auto");
							var h = b.parent().parent().height();
							b.parent().css("height",
								h);
							b.css("height", h)
						} else "height" in f && (h = f.height, b.parent().css("height", h), b.css("height", h));
						if("scrollTo" in f) p = parseInt(a.scrollTo);
						else if("scrollBy" in f) p += parseInt(a.scrollBy);
						else if("destroy" in f) { c.remove();
							m.remove();
							b.unwrap(); return } n(p, !1, !0)
					}
				} else if(!(e.isPlainObject(f) && "destroy" in f)) {
					a.height = "auto" == a.height ? b.parent().height() : a.height;
					p = e("<div></div>").addClass(a.wrapperClass).css({ position: "relative", overflow: "hidden", width: a.width, height: a.height });
					b.css({
						overflow: "hidden",
						width: a.width,
						height: a.height
					});
					var m = e("<div></div>").addClass(a.railClass).css({ width: a.size, height: "100%", position: "absolute", top: 0, display: a.alwaysVisible && a.railVisible ? "block" : "none", "border-radius": a.railBorderRadius, background: a.railColor, opacity: a.railOpacity, zIndex: 90 }),
						c = e("<div></div>").addClass(a.barClass).css({
							background: a.color,
							width: a.size,
							position: "absolute",
							top: 0,
							opacity: a.opacity,
							display: a.alwaysVisible ? "block" : "none",
							"border-radius": a.borderRadius,
							BorderRadius: a.borderRadius,
							MozBorderRadius: a.borderRadius,
							WebkitBorderRadius: a.borderRadius,
							zIndex: 99
						}),
						h = "right" == a.position ? { right: a.distance } : { left: a.distance };
					m.css(h);
					c.css(h);
					b.wrap(p);
					b.parent().append(c);
					b.parent().append(m);
					a.railDraggable && c.bind("mousedown", function(a) { var b = e(document);
						z = !0;
						t = parseFloat(c.css("top"));
						pageY = a.pageY;
						b.bind("mousemove.slimscroll", function(a) { currTop = t + a.pageY - pageY;
							c.css("top", currTop);
							n(0, c.position().top, !1) });
						b.bind("mouseup.slimscroll", function(a) { z = !1;
							q();
							b.unbind(".slimscroll") }); return !1 }).bind("selectstart.slimscroll",
						function(a) { a.stopPropagation();
							a.preventDefault(); return !1 });
					m.hover(function() { w() }, function() { q() });
					c.hover(function() { y = !0 }, function() { y = !1 });
					b.hover(function() { r = !0;
						w();
						q() }, function() { r = !1;
						q() });
					b.bind("touchstart", function(a, b) { a.originalEvent.touches.length && (A = a.originalEvent.touches[0].pageY) });
					b.bind("touchmove", function(b) { k || b.originalEvent.preventDefault();
						b.originalEvent.touches.length && (n((A - b.originalEvent.touches[0].pageY) / a.touchScrollStep, !0), A = b.originalEvent.touches[0].pageY) });
					x();
					"bottom" === a.start ? (c.css({ top: b.outerHeight() - c.outerHeight() }), n(0, !0)) : "top" !== a.start && (n(e(a.start).position().top, null, !0), a.alwaysVisible || c.hide());
					window.addEventListener ? (this.addEventListener("DOMMouseScroll", v, !1), this.addEventListener("mousewheel", v, !1)) : document.attachEvent("onmousewheel", v)
				}
			});
			return this
		}
	});
	e.fn.extend({ slimscroll: e.fn.slimScroll })
})(jQuery);

/* HTML5 Placeholder jQuery Plugin - v2.3.1
 * Copyright (c)2015 Mathias Bynens
 * 2015-12-16
 */
! function(a) { "function" == typeof define && define.amd ? define(["jquery"], a) : a("object" == typeof module && module.exports ? require("jquery") : jQuery) }(function(a) {
	function b(b) { var c = {},
			d = /^jQuery\d+$/; return a.each(b.attributes, function(a, b) { b.specified && !d.test(b.name) && (c[b.name] = b.value) }), c }

	function c(b, c) { var d = this,
			f = a(this); if(d.value === f.attr(h ? "placeholder-x" : "placeholder") && f.hasClass(n.customClass))
			if(d.value = "", f.removeClass(n.customClass), f.data("placeholder-password")) { if(f = f.hide().nextAll('input[type="password"]:first').show().attr("id", f.removeAttr("id").data("placeholder-id")), b === !0) return f[0].value = c, c;
				f.focus() } else d == e() && d.select() }

	function d(d) { var e, f = this,
			g = a(this),
			i = f.id; if(!d || "blur" !== d.type || !g.hasClass(n.customClass))
			if("" === f.value) { if("password" === f.type) { if(!g.data("placeholder-textinput")) { try { e = g.clone().prop({ type: "text" }) } catch(j) { e = a("<input>").attr(a.extend(b(this), { type: "text" })) } e.removeAttr("name").data({ "placeholder-enabled": !0, "placeholder-password": g, "placeholder-id": i }).bind("focus.placeholder", c), g.data({ "placeholder-textinput": e, "placeholder-id": i }).before(e) } f.value = "", g = g.removeAttr("id").hide().prevAll('input[type="text"]:first').attr("id", g.data("placeholder-id")).show() } else { var k = g.data("placeholder-password");
					k && (k[0].value = "", g.attr("id", g.data("placeholder-id")).show().nextAll('input[type="password"]:last').hide().removeAttr("id")) } g.addClass(n.customClass), g[0].value = g.attr(h ? "placeholder-x" : "placeholder") } else g.removeClass(n.customClass) }

	function e() { try { return document.activeElement } catch(a) {} } var f, g, h = !1,
		i = "[object OperaMini]" === Object.prototype.toString.call(window.operamini),
		j = "placeholder" in document.createElement("input") && !i && !h,
		k = "placeholder" in document.createElement("textarea") && !i && !h,
		l = a.valHooks,
		m = a.propHooks,
		n = {};
	j && k ? (g = a.fn.placeholder = function() { return this }, g.input = !0, g.textarea = !0) : (g = a.fn.placeholder = function(b) { var e = { customClass: "placeholder" }; return n = a.extend({}, e, b), this.filter((j ? "textarea" : ":input") + "[" + (h ? "placeholder-x" : "placeholder") + "]").not("." + n.customClass).not(":radio, :checkbox, [type=hidden]").bind({ "focus.placeholder": c, "blur.placeholder": d }).data("placeholder-enabled", !0).trigger("blur.placeholder") }, g.input = j, g.textarea = k, f = { get: function(b) { var c = a(b),
				d = c.data("placeholder-password"); return d ? d[0].value : c.data("placeholder-enabled") && c.hasClass(n.customClass) ? "" : b.value }, set: function(b, f) { var g, h, i = a(b); return "" !== f && (g = i.data("placeholder-textinput"), h = i.data("placeholder-password"), g ? (c.call(g[0], !0, f) || (b.value = f), g[0].value = f) : h && (c.call(b, !0, f) || (h[0].value = f), b.value = f)), i.data("placeholder-enabled") ? ("" === f ? (b.value = f, b != e() && d.call(b)) : (i.hasClass(n.customClass) && c.call(b), b.value = f), i) : (b.value = f, i) } }, j || (l.input = f, m.value = f), k || (l.textarea = f, m.value = f), a(function() { a(document).delegate("form", "submit.placeholder", function() { var b = a("." + n.customClass, this).each(function() { c.call(this, !0, "") });
			setTimeout(function() { b.each(d) }, 10) }) }), a(window).bind("beforeunload.placeholder", function() { var b = !0; try { "javascript:void(0)" === document.activeElement.toString() && (b = !1) } catch(c) {} b && a("." + n.customClass).each(function() { this.value = "" }) })) });

/*! =======================================================
                      VERSION  6.0.17
========================================================= */
"use strict";

function _typeof(a) { return a && "undefined" != typeof Symbol && a.constructor === Symbol ? "symbol" : typeof a }
/*! =========================================================
 * bootstrap-slider.js
 *
 * Maintainers:
 *		Kyle Kemp
 *			- Twitter: @seiyria
 *			- Github:  seiyria
 *		Rohit Kalkur
 *			- Twitter: @Rovolutionary
 *			- Github:  rovolution
 *
 * =========================================================
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================= */
! function(a) { if("function" == typeof define && define.amd) define(["jquery"], a);
	else if("object" === ("undefined" == typeof module ? "undefined" : _typeof(module)) && module.exports) { var b; try { b = require("jquery") } catch(c) { b = null } module.exports = a(b) } else window && (window.Slider = a(window.jQuery)) }(function(a) { var b; return function(a) {
			function b() {}

			function c(a) {
				function c(b) { b.prototype.option || (b.prototype.option = function(b) { a.isPlainObject(b) && (this.options = a.extend(!0, this.options, b)) }) }

				function e(b, c) { a.fn[b] = function(e) { if("string" == typeof e) { for(var g = d.call(arguments, 1), h = 0, i = this.length; i > h; h++) { var j = this[h],
									k = a.data(j, b); if(k)
									if(a.isFunction(k[e]) && "_" !== e.charAt(0)) { var l = k[e].apply(k, g); if(void 0 !== l && l !== k) return l } else f("no such method '" + e + "' for " + b + " instance");
								else f("cannot call methods on " + b + " prior to initialization; attempted to call '" + e + "'") } return this } var m = this.map(function() { var d = a.data(this, b); return d ? (d.option(e), d._init()) : (d = new c(this, e), a.data(this, b, d)), a(this) }); return !m || m.length > 1 ? m : m[0] } } if(a) { var f = "undefined" == typeof console ? b : function(a) { console.error(a) }; return a.bridget = function(a, b) { c(b), e(a, b) }, a.bridget } } var d = Array.prototype.slice;
			c(a) }(a),
		function(a) {
			function c(b, c) {
				function d(a, b) { var c = "data-slider-" + b.replace(/_/g, "-"),
						d = a.getAttribute(c); try { return JSON.parse(d) } catch(e) { return d } } this._state = { value: null, enabled: null, offset: null, size: null, percentage: null, inDrag: !1, over: !1 }, "string" == typeof b ? this.element = document.querySelector(b) : b instanceof HTMLElement && (this.element = b), c = c ? c : {}; for(var f = Object.keys(this.defaultOptions), g = 0; g < f.length; g++) { var h = f[g],
						i = c[h];
					i = "undefined" != typeof i ? i : d(this.element, h), i = null !== i ? i : this.defaultOptions[h], this.options || (this.options = {}), this.options[h] = i } "vertical" !== this.options.orientation || "top" !== this.options.tooltip_position && "bottom" !== this.options.tooltip_position ? "horizontal" !== this.options.orientation || "left" !== this.options.tooltip_position && "right" !== this.options.tooltip_position || (this.options.tooltip_position = "top") : this.options.tooltip_position = "right"; var j, k, l, m, n, o = this.element.style.width,
					p = !1,
					q = this.element.parentNode; if(this.sliderElem) p = !0;
				else { this.sliderElem = document.createElement("div"), this.sliderElem.className = "slider"; var r = document.createElement("div");
					r.className = "slider-track", k = document.createElement("div"), k.className = "slider-track-low", j = document.createElement("div"), j.className = "slider-selection", l = document.createElement("div"), l.className = "slider-track-high", m = document.createElement("div"), m.className = "slider-handle min-slider-handle", m.setAttribute("role", "slider"), m.setAttribute("aria-valuemin", this.options.min), m.setAttribute("aria-valuemax", this.options.max), n = document.createElement("div"), n.className = "slider-handle max-slider-handle", n.setAttribute("role", "slider"), n.setAttribute("aria-valuemin", this.options.min), n.setAttribute("aria-valuemax", this.options.max), r.appendChild(k), r.appendChild(j), r.appendChild(l); var s = Array.isArray(this.options.labelledby); if(s && this.options.labelledby[0] && m.setAttribute("aria-labelledby", this.options.labelledby[0]), s && this.options.labelledby[1] && n.setAttribute("aria-labelledby", this.options.labelledby[1]), !s && this.options.labelledby && (m.setAttribute("aria-labelledby", this.options.labelledby), n.setAttribute("aria-labelledby", this.options.labelledby)), this.ticks = [], Array.isArray(this.options.ticks) && this.options.ticks.length > 0) { for(g = 0; g < this.options.ticks.length; g++) { var t = document.createElement("div");
							t.className = "slider-tick", this.ticks.push(t), r.appendChild(t) } j.className += " tick-slider-selection" } if(r.appendChild(m), r.appendChild(n), this.tickLabels = [], Array.isArray(this.options.ticks_labels) && this.options.ticks_labels.length > 0)
						for(this.tickLabelContainer = document.createElement("div"), this.tickLabelContainer.className = "slider-tick-label-container", g = 0; g < this.options.ticks_labels.length; g++) { var u = document.createElement("div"),
								v = 0 === this.options.ticks_positions.length,
								w = this.options.reversed && v ? this.options.ticks_labels.length - (g + 1) : g;
							u.className = "slider-tick-label", u.innerHTML = this.options.ticks_labels[w], this.tickLabels.push(u), this.tickLabelContainer.appendChild(u) }
					var x = function(a) { var b = document.createElement("div");
							b.className = "tooltip-arrow"; var c = document.createElement("div");
							c.className = "tooltip-inner", a.appendChild(b), a.appendChild(c) },
						y = document.createElement("div");
					y.className = "tooltip tooltip-main", y.setAttribute("role", "presentation"), x(y); var z = document.createElement("div");
					z.className = "tooltip tooltip-min", z.setAttribute("role", "presentation"), x(z); var A = document.createElement("div");
					A.className = "tooltip tooltip-max", A.setAttribute("role", "presentation"), x(A), this.sliderElem.appendChild(r), this.sliderElem.appendChild(y), this.sliderElem.appendChild(z), this.sliderElem.appendChild(A), this.tickLabelContainer && this.sliderElem.appendChild(this.tickLabelContainer), q.insertBefore(this.sliderElem, this.element), this.element.style.display = "none" } if(a && (this.$element = a(this.element), this.$sliderElem = a(this.sliderElem)), this.eventToCallbackMap = {}, this.sliderElem.id = this.options.id, this.touchCapable = "ontouchstart" in window || window.DocumentTouch && document instanceof window.DocumentTouch, this.tooltip = this.sliderElem.querySelector(".tooltip-main"), this.tooltipInner = this.tooltip.querySelector(".tooltip-inner"), this.tooltip_min = this.sliderElem.querySelector(".tooltip-min"), this.tooltipInner_min = this.tooltip_min.querySelector(".tooltip-inner"), this.tooltip_max = this.sliderElem.querySelector(".tooltip-max"), this.tooltipInner_max = this.tooltip_max.querySelector(".tooltip-inner"), e[this.options.scale] && (this.options.scale = e[this.options.scale]), p === !0 && (this._removeClass(this.sliderElem, "slider-horizontal"), this._removeClass(this.sliderElem, "slider-vertical"), this._removeClass(this.tooltip, "hide"), this._removeClass(this.tooltip_min, "hide"), this._removeClass(this.tooltip_max, "hide"), ["left", "top", "width", "height"].forEach(function(a) { this._removeProperty(this.trackLow, a), this._removeProperty(this.trackSelection, a), this._removeProperty(this.trackHigh, a) }, this), [this.handle1, this.handle2].forEach(function(a) { this._removeProperty(a, "left"), this._removeProperty(a, "top") }, this), [this.tooltip, this.tooltip_min, this.tooltip_max].forEach(function(a) { this._removeProperty(a, "left"), this._removeProperty(a, "top"), this._removeProperty(a, "margin-left"), this._removeProperty(a, "margin-top"), this._removeClass(a, "right"), this._removeClass(a, "top") }, this)), "vertical" === this.options.orientation ? (this._addClass(this.sliderElem, "slider-vertical"), this.stylePos = "top", this.mousePos = "pageY", this.sizePos = "offsetHeight") : (this._addClass(this.sliderElem, "slider-horizontal"), this.sliderElem.style.width = o, this.options.orientation = "horizontal", this.stylePos = "left", this.mousePos = "pageX", this.sizePos = "offsetWidth"), this._setTooltipPosition(), Array.isArray(this.options.ticks) && this.options.ticks.length > 0 && (this.options.max = Math.max.apply(Math, this.options.ticks), this.options.min = Math.min.apply(Math, this.options.ticks)), Array.isArray(this.options.value) ? (this.options.range = !0, this._state.value = this.options.value) : this.options.range ? this._state.value = [this.options.value, this.options.max] : this._state.value = this.options.value, this.trackLow = k || this.trackLow, this.trackSelection = j || this.trackSelection, this.trackHigh = l || this.trackHigh, "none" === this.options.selection && (this._addClass(this.trackLow, "hide"), this._addClass(this.trackSelection, "hide"), this._addClass(this.trackHigh, "hide")), this.handle1 = m || this.handle1, this.handle2 = n || this.handle2, p === !0)
					for(this._removeClass(this.handle1, "round triangle"), this._removeClass(this.handle2, "round triangle hide"), g = 0; g < this.ticks.length; g++) this._removeClass(this.ticks[g], "round triangle hide"); var B = ["round", "triangle", "custom"],
					C = -1 !== B.indexOf(this.options.handle); if(C)
					for(this._addClass(this.handle1, this.options.handle), this._addClass(this.handle2, this.options.handle), g = 0; g < this.ticks.length; g++) this._addClass(this.ticks[g], this.options.handle);
				this._state.offset = this._offset(this.sliderElem), this._state.size = this.sliderElem[this.sizePos], this.setValue(this._state.value), this.handle1Keydown = this._keydown.bind(this, 0), this.handle1.addEventListener("keydown", this.handle1Keydown, !1), this.handle2Keydown = this._keydown.bind(this, 1), this.handle2.addEventListener("keydown", this.handle2Keydown, !1), this.mousedown = this._mousedown.bind(this), this.touchCapable && this.sliderElem.addEventListener("touchstart", this.mousedown, !1), this.sliderElem.addEventListener("mousedown", this.mousedown, !1), this.resize = this._resize.bind(this), window.addEventListener("resize", this.resize, !1), "hide" === this.options.tooltip ? (this._addClass(this.tooltip, "hide"), this._addClass(this.tooltip_min, "hide"), this._addClass(this.tooltip_max, "hide")) : "always" === this.options.tooltip ? (this._showTooltip(), this._alwaysShowTooltip = !0) : (this.showTooltip = this._showTooltip.bind(this), this.hideTooltip = this._hideTooltip.bind(this), this.sliderElem.addEventListener("mouseenter", this.showTooltip, !1), this.sliderElem.addEventListener("mouseleave", this.hideTooltip, !1), this.handle1.addEventListener("focus", this.showTooltip, !1), this.handle1.addEventListener("blur", this.hideTooltip, !1), this.handle2.addEventListener("focus", this.showTooltip, !1), this.handle2.addEventListener("blur", this.hideTooltip, !1)), this.options.enabled ? this.enable() : this.disable() } var d = { formatInvalidInputErrorMsg: function(a) { return "Invalid input value '" + a + "' passed in" }, callingContextNotSliderInstance: "Calling context element does not have instance of Slider bound to it. Check your code to make sure the JQuery object returned from the call to the slider() initializer is calling the method" },
				e = { linear: { toValue: function(a) { var b = a / 100 * (this.options.max - this.options.min),
								c = !0; if(this.options.ticks_positions.length > 0) { for(var d, e, f, g = 0, h = 1; h < this.options.ticks_positions.length; h++)
									if(a <= this.options.ticks_positions[h]) { d = this.options.ticks[h - 1], f = this.options.ticks_positions[h - 1], e = this.options.ticks[h], g = this.options.ticks_positions[h]; break }
								var i = (a - f) / (g - f);
								b = d + i * (e - d), c = !1 } var j = c ? this.options.min : 0,
								k = j + Math.round(b / this.options.step) * this.options.step; return k < this.options.min ? this.options.min : k > this.options.max ? this.options.max : k }, toPercentage: function(a) { if(this.options.max === this.options.min) return 0; if(this.options.ticks_positions.length > 0) { for(var b, c, d, e = 0, f = 0; f < this.options.ticks.length; f++)
									if(a <= this.options.ticks[f]) { b = f > 0 ? this.options.ticks[f - 1] : 0, d = f > 0 ? this.options.ticks_positions[f - 1] : 0, c = this.options.ticks[f], e = this.options.ticks_positions[f]; break }
								if(f > 0) { var g = (a - b) / (c - b); return d + g * (e - d) } } return 100 * (a - this.options.min) / (this.options.max - this.options.min) } }, logarithmic: { toValue: function(a) { var b = 0 === this.options.min ? 0 : Math.log(this.options.min),
								c = Math.log(this.options.max),
								d = Math.exp(b + (c - b) * a / 100); return d = this.options.min + Math.round((d - this.options.min) / this.options.step) * this.options.step, d < this.options.min ? this.options.min : d > this.options.max ? this.options.max : d }, toPercentage: function(a) { if(this.options.max === this.options.min) return 0; var b = Math.log(this.options.max),
								c = 0 === this.options.min ? 0 : Math.log(this.options.min),
								d = 0 === a ? 0 : Math.log(a); return 100 * (d - c) / (b - c) } } }; if(b = function(a, b) { return c.call(this, a, b), this }, b.prototype = { _init: function() {}, constructor: b, defaultOptions: { id: "", min: 0, max: 10, step: 1, precision: 0, orientation: "horizontal", value: 5, range: !1, selection: "before", tooltip: "show", tooltip_split: !1, handle: "round", reversed: !1, enabled: !0, formatter: function(a) { return Array.isArray(a) ? a[0] + " : " + a[1] : a }, natural_arrow_keys: !1, ticks: [], ticks_positions: [], ticks_labels: [], ticks_snap_bounds: 0, scale: "linear", focus: !1, tooltip_position: null, labelledby: null }, getElement: function() { return this.sliderElem }, getValue: function() { return this.options.range ? this._state.value : this._state.value[0] }, setValue: function(a, b, c) { a || (a = 0); var d = this.getValue();
						this._state.value = this._validateInputValue(a); var e = this._applyPrecision.bind(this);
						this.options.range ? (this._state.value[0] = e(this._state.value[0]), this._state.value[1] = e(this._state.value[1]), this._state.value[0] = Math.max(this.options.min, Math.min(this.options.max, this._state.value[0])), this._state.value[1] = Math.max(this.options.min, Math.min(this.options.max, this._state.value[1]))) : (this._state.value = e(this._state.value), this._state.value = [Math.max(this.options.min, Math.min(this.options.max, this._state.value))], this._addClass(this.handle2, "hide"), "after" === this.options.selection ? this._state.value[1] = this.options.max : this._state.value[1] = this.options.min), this.options.max > this.options.min ? this._state.percentage = [this._toPercentage(this._state.value[0]), this._toPercentage(this._state.value[1]), 100 * this.options.step / (this.options.max - this.options.min)] : this._state.percentage = [0, 0, 100], this._layout(); var f = this.options.range ? this._state.value : this._state.value[0]; return this._setDataVal(f), b === !0 && this._trigger("slide", f), d !== f && c === !0 && this._trigger("change", { oldValue: d, newValue: f }), this }, destroy: function() { this._removeSliderEventHandlers(), this.sliderElem.parentNode.removeChild(this.sliderElem), this.element.style.display = "", this._cleanUpEventCallbacksMap(), this.element.removeAttribute("data"), a && (this._unbindJQueryEventHandlers(), this.$element.removeData("slider")) }, disable: function() { return this._state.enabled = !1, this.handle1.removeAttribute("tabindex"), this.handle2.removeAttribute("tabindex"), this._addClass(this.sliderElem, "slider-disabled"), this._trigger("slideDisabled"), this }, enable: function() { return this._state.enabled = !0, this.handle1.setAttribute("tabindex", 0), this.handle2.setAttribute("tabindex", 0), this._removeClass(this.sliderElem, "slider-disabled"), this._trigger("slideEnabled"), this }, toggle: function() { return this._state.enabled ? this.disable() : this.enable(), this }, isEnabled: function() { return this._state.enabled }, on: function(a, b) { return this._bindNonQueryEventHandler(a, b), this }, off: function(b, c) { a ? (this.$element.off(b, c), this.$sliderElem.off(b, c)) : this._unbindNonQueryEventHandler(b, c) }, getAttribute: function(a) { return a ? this.options[a] : this.options }, setAttribute: function(a, b) { return this.options[a] = b, this }, refresh: function() { return this._removeSliderEventHandlers(), c.call(this, this.element, this.options), a && a.data(this.element, "slider", this), this }, relayout: function() { return this._layout(), this }, _removeSliderEventHandlers: function() { this.handle1.removeEventListener("keydown", this.handle1Keydown, !1), this.handle2.removeEventListener("keydown", this.handle2Keydown, !1), this.showTooltip && (this.handle1.removeEventListener("focus", this.showTooltip, !1), this.handle2.removeEventListener("focus", this.showTooltip, !1)), this.hideTooltip && (this.handle1.removeEventListener("blur", this.hideTooltip, !1), this.handle2.removeEventListener("blur", this.hideTooltip, !1)), this.showTooltip && this.sliderElem.removeEventListener("mouseenter", this.showTooltip, !1), this.hideTooltip && this.sliderElem.removeEventListener("mouseleave", this.hideTooltip, !1), this.sliderElem.removeEventListener("touchstart", this.mousedown, !1), this.sliderElem.removeEventListener("mousedown", this.mousedown, !1), window.removeEventListener("resize", this.resize, !1) }, _bindNonQueryEventHandler: function(a, b) { void 0 === this.eventToCallbackMap[a] && (this.eventToCallbackMap[a] = []), this.eventToCallbackMap[a].push(b) }, _unbindNonQueryEventHandler: function(a, b) { var c = this.eventToCallbackMap[a]; if(void 0 !== c)
							for(var d = 0; d < c.length; d++)
								if(c[d] === b) { c.splice(d, 1); break } }, _cleanUpEventCallbacksMap: function() { for(var a = Object.keys(this.eventToCallbackMap), b = 0; b < a.length; b++) { var c = a[b];
							this.eventToCallbackMap[c] = null } }, _showTooltip: function() { this.options.tooltip_split === !1 ? (this._addClass(this.tooltip, "in"), this.tooltip_min.style.display = "none", this.tooltip_max.style.display = "none") : (this._addClass(this.tooltip_min, "in"), this._addClass(this.tooltip_max, "in"), this.tooltip.style.display = "none"), this._state.over = !0 }, _hideTooltip: function() { this._state.inDrag === !1 && this.alwaysShowTooltip !== !0 && (this._removeClass(this.tooltip, "in"), this._removeClass(this.tooltip_min, "in"), this._removeClass(this.tooltip_max, "in")), this._state.over = !1 }, _layout: function() { var a; if(a = this.options.reversed ? [100 - this._state.percentage[0], this.options.range ? 100 - this._state.percentage[1] : this._state.percentage[1]] : [this._state.percentage[0], this._state.percentage[1]], this.handle1.style[this.stylePos] = a[0] + "%", this.handle1.setAttribute("aria-valuenow", this._state.value[0]), this.handle2.style[this.stylePos] = a[1] + "%", this.handle2.setAttribute("aria-valuenow", this._state.value[1]), Array.isArray(this.options.ticks) && this.options.ticks.length > 0) { var b = "vertical" === this.options.orientation ? "height" : "width",
								c = "vertical" === this.options.orientation ? "marginTop" : "marginLeft",
								d = this._state.size / (this.options.ticks.length - 1); if(this.tickLabelContainer) { var e = 0; if(0 === this.options.ticks_positions.length) "vertical" !== this.options.orientation && (this.tickLabelContainer.style[c] = -d / 2 + "px"), e = this.tickLabelContainer.offsetHeight;
								else
									for(f = 0; f < this.tickLabelContainer.childNodes.length; f++) this.tickLabelContainer.childNodes[f].offsetHeight > e && (e = this.tickLabelContainer.childNodes[f].offsetHeight); "horizontal" === this.options.orientation && (this.sliderElem.style.marginBottom = e + "px") } for(var f = 0; f < this.options.ticks.length; f++) { var g = this.options.ticks_positions[f] || this._toPercentage(this.options.ticks[f]);
								this.options.reversed && (g = 100 - g), this.ticks[f].style[this.stylePos] = g + "%", this._removeClass(this.ticks[f], "in-selection"), this.options.range ? g >= a[0] && g <= a[1] && this._addClass(this.ticks[f], "in-selection") : "after" === this.options.selection && g >= a[0] ? this._addClass(this.ticks[f], "in-selection") : "before" === this.options.selection && g <= a[0] && this._addClass(this.ticks[f], "in-selection"), this.tickLabels[f] && (this.tickLabels[f].style[b] = d + "px", "vertical" !== this.options.orientation && void 0 !== this.options.ticks_positions[f] ? (this.tickLabels[f].style.position = "absolute", this.tickLabels[f].style[this.stylePos] = g + "%", this.tickLabels[f].style[c] = -d / 2 + "px") : "vertical" === this.options.orientation && (this.tickLabels[f].style.marginLeft = this.sliderElem.offsetWidth + "px", this.tickLabelContainer.style.marginTop = this.sliderElem.offsetWidth / 2 * -1 + "px")) } } var h; if(this.options.range) { h = this.options.formatter(this._state.value), this._setText(this.tooltipInner, h), this.tooltip.style[this.stylePos] = (a[1] + a[0]) / 2 + "%", "vertical" === this.options.orientation ? this._css(this.tooltip, "margin-top", -this.tooltip.offsetHeight / 2 + "px") : this._css(this.tooltip, "margin-left", -this.tooltip.offsetWidth / 2 + "px"), "vertical" === this.options.orientation ? this._css(this.tooltip, "margin-top", -this.tooltip.offsetHeight / 2 + "px") : this._css(this.tooltip, "margin-left", -this.tooltip.offsetWidth / 2 + "px"); var i = this.options.formatter(this._state.value[0]);
							this._setText(this.tooltipInner_min, i); var j = this.options.formatter(this._state.value[1]);
							this._setText(this.tooltipInner_max, j), this.tooltip_min.style[this.stylePos] = a[0] + "%", "vertical" === this.options.orientation ? this._css(this.tooltip_min, "margin-top", -this.tooltip_min.offsetHeight / 2 + "px") : this._css(this.tooltip_min, "margin-left", -this.tooltip_min.offsetWidth / 2 + "px"), this.tooltip_max.style[this.stylePos] = a[1] + "%", "vertical" === this.options.orientation ? this._css(this.tooltip_max, "margin-top", -this.tooltip_max.offsetHeight / 2 + "px") : this._css(this.tooltip_max, "margin-left", -this.tooltip_max.offsetWidth / 2 + "px") } else h = this.options.formatter(this._state.value[0]), this._setText(this.tooltipInner, h), this.tooltip.style[this.stylePos] = a[0] + "%", "vertical" === this.options.orientation ? this._css(this.tooltip, "margin-top", -this.tooltip.offsetHeight / 2 + "px") : this._css(this.tooltip, "margin-left", -this.tooltip.offsetWidth / 2 + "px"); if("vertical" === this.options.orientation) this.trackLow.style.top = "0", this.trackLow.style.height = Math.min(a[0], a[1]) + "%", this.trackSelection.style.top = Math.min(a[0], a[1]) + "%", this.trackSelection.style.height = Math.abs(a[0] - a[1]) + "%", this.trackHigh.style.bottom = "0", this.trackHigh.style.height = 100 - Math.min(a[0], a[1]) - Math.abs(a[0] - a[1]) + "%";
						else { this.trackLow.style.left = "0", this.trackLow.style.width = Math.min(a[0], a[1]) + "%", this.trackSelection.style.left = Math.min(a[0], a[1]) + "%", this.trackSelection.style.width = Math.abs(a[0] - a[1]) + "%", this.trackHigh.style.right = "0", this.trackHigh.style.width = 100 - Math.min(a[0], a[1]) - Math.abs(a[0] - a[1]) + "%"; var k = this.tooltip_min.getBoundingClientRect(),
								l = this.tooltip_max.getBoundingClientRect(); "bottom" === this.options.tooltip_position ? k.right > l.left ? (this._removeClass(this.tooltip_max, "bottom"), this._addClass(this.tooltip_max, "top"), this.tooltip_max.style.top = "", this.tooltip_max.style.bottom = "22px") : (this._removeClass(this.tooltip_max, "top"), this._addClass(this.tooltip_max, "bottom"), this.tooltip_max.style.top = this.tooltip_min.style.top, this.tooltip_max.style.bottom = "") : k.right > l.left ? (this._removeClass(this.tooltip_max, "top"), this._addClass(this.tooltip_max, "bottom"), this.tooltip_max.style.top = "18px") : (this._removeClass(this.tooltip_max, "bottom"), this._addClass(this.tooltip_max, "top"), this.tooltip_max.style.top = this.tooltip_min.style.top) } }, _resize: function(a) { this._state.offset = this._offset(this.sliderElem), this._state.size = this.sliderElem[this.sizePos], this._layout() }, _removeProperty: function(a, b) { a.style.removeProperty ? a.style.removeProperty(b) : a.style.removeAttribute(b) }, _mousedown: function(a) { if(!this._state.enabled) return !1;
						this._state.offset = this._offset(this.sliderElem), this._state.size = this.sliderElem[this.sizePos]; var b = this._getPercentage(a); if(this.options.range) { var c = Math.abs(this._state.percentage[0] - b),
								d = Math.abs(this._state.percentage[1] - b);
							this._state.dragged = d > c ? 0 : 1 } else this._state.dragged = 0;
						this._state.percentage[this._state.dragged] = b, this._layout(), this.touchCapable && (document.removeEventListener("touchmove", this.mousemove, !1), document.removeEventListener("touchend", this.mouseup, !1)), this.mousemove && document.removeEventListener("mousemove", this.mousemove, !1), this.mouseup && document.removeEventListener("mouseup", this.mouseup, !1), this.mousemove = this._mousemove.bind(this), this.mouseup = this._mouseup.bind(this), this.touchCapable && (document.addEventListener("touchmove", this.mousemove, !1), document.addEventListener("touchend", this.mouseup, !1)), document.addEventListener("mousemove", this.mousemove, !1), document.addEventListener("mouseup", this.mouseup, !1), this._state.inDrag = !0; var e = this._calculateValue(); return this._trigger("slideStart", e), this._setDataVal(e), this.setValue(e, !1, !0), this._pauseEvent(a), this.options.focus && this._triggerFocusOnHandle(this._state.dragged), !0 }, _triggerFocusOnHandle: function(a) { 0 === a && this.handle1.focus(), 1 === a && this.handle2.focus() }, _keydown: function(a, b) { if(!this._state.enabled) return !1; var c; switch(b.keyCode) {
							case 37:
							case 40:
								c = -1; break;
							case 39:
							case 38:
								c = 1 } if(c) { if(this.options.natural_arrow_keys) { var d = "vertical" === this.options.orientation && !this.options.reversed,
									e = "horizontal" === this.options.orientation && this.options.reversed;
								(d || e) && (c = -c) } var f = this._state.value[a] + c * this.options.step; return this.options.range && (f = [a ? this._state.value[0] : f, a ? f : this._state.value[1]]), this._trigger("slideStart", f), this._setDataVal(f), this.setValue(f, !0, !0), this._setDataVal(f), this._trigger("slideStop", f), this._layout(), this._pauseEvent(b), !1 } }, _pauseEvent: function(a) { a.stopPropagation && a.stopPropagation(), a.preventDefault && a.preventDefault(), a.cancelBubble = !0, a.returnValue = !1 }, _mousemove: function(a) { if(!this._state.enabled) return !1; var b = this._getPercentage(a);
						this._adjustPercentageForRangeSliders(b), this._state.percentage[this._state.dragged] = b, this._layout(); var c = this._calculateValue(!0); return this.setValue(c, !0, !0), !1 }, _adjustPercentageForRangeSliders: function(a) { if(this.options.range) { var b = this._getNumDigitsAfterDecimalPlace(a);
							b = b ? b - 1 : 0; var c = this._applyToFixedAndParseFloat(a, b);
							0 === this._state.dragged && this._applyToFixedAndParseFloat(this._state.percentage[1], b) < c ? (this._state.percentage[0] = this._state.percentage[1], this._state.dragged = 1) : 1 === this._state.dragged && this._applyToFixedAndParseFloat(this._state.percentage[0], b) > c && (this._state.percentage[1] = this._state.percentage[0], this._state.dragged = 0) } }, _mouseup: function() { if(!this._state.enabled) return !1;
						this.touchCapable && (document.removeEventListener("touchmove", this.mousemove, !1), document.removeEventListener("touchend", this.mouseup, !1)), document.removeEventListener("mousemove", this.mousemove, !1), document.removeEventListener("mouseup", this.mouseup, !1), this._state.inDrag = !1, this._state.over === !1 && this._hideTooltip(); var a = this._calculateValue(!0); return this._layout(), this._setDataVal(a), this._trigger("slideStop", a), !1 }, _calculateValue: function(a) { var b; if(this.options.range ? (b = [this.options.min, this.options.max], 0 !== this._state.percentage[0] && (b[0] = this._toValue(this._state.percentage[0]), b[0] = this._applyPrecision(b[0])), 100 !== this._state.percentage[1] && (b[1] = this._toValue(this._state.percentage[1]), b[1] = this._applyPrecision(b[1]))) : (b = this._toValue(this._state.percentage[0]), b = parseFloat(b), b = this._applyPrecision(b)), a) { for(var c = [b, 1 / 0], d = 0; d < this.options.ticks.length; d++) { var e = Math.abs(this.options.ticks[d] - b);
								e <= c[1] && (c = [this.options.ticks[d], e]) } if(c[1] <= this.options.ticks_snap_bounds) return c[0] } return b }, _applyPrecision: function(a) { var b = this.options.precision || this._getNumDigitsAfterDecimalPlace(this.options.step); return this._applyToFixedAndParseFloat(a, b) }, _getNumDigitsAfterDecimalPlace: function(a) { var b = ("" + a).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/); return b ? Math.max(0, (b[1] ? b[1].length : 0) - (b[2] ? +b[2] : 0)) : 0 }, _applyToFixedAndParseFloat: function(a, b) { var c = a.toFixed(b); return parseFloat(c) }, _getPercentage: function(a) {!this.touchCapable || "touchstart" !== a.type && "touchmove" !== a.type || (a = a.touches[0]); var b = a[this.mousePos],
							c = this._state.offset[this.stylePos],
							d = b - c,
							e = d / this._state.size * 100; return e = Math.round(e / this._state.percentage[2]) * this._state.percentage[2], this.options.reversed && (e = 100 - e), Math.max(0, Math.min(100, e)) }, _validateInputValue: function(a) { if("number" == typeof a) return a; if(Array.isArray(a)) return this._validateArray(a), a; throw new Error(d.formatInvalidInputErrorMsg(a)) }, _validateArray: function(a) { for(var b = 0; b < a.length; b++) { var c = a[b]; if("number" != typeof c) throw new Error(d.formatInvalidInputErrorMsg(c)) } }, _setDataVal: function(a) { this.element.setAttribute("data-value", a), this.element.setAttribute("value", a), this.element.value = a }, _trigger: function(b, c) { c = c || 0 === c ? c : void 0; var d = this.eventToCallbackMap[b]; if(d && d.length)
							for(var e = 0; e < d.length; e++) { var f = d[e];
								f(c) } a && this._triggerJQueryEvent(b, c) }, _triggerJQueryEvent: function(a, b) { var c = { type: a, value: b };
						this.$element.trigger(c), this.$sliderElem.trigger(c) }, _unbindJQueryEventHandlers: function() { this.$element.off(), this.$sliderElem.off() }, _setText: function(a, b) { "undefined" != typeof a.textContent ? a.textContent = b : "undefined" != typeof a.innerText && (a.innerText = b) }, _removeClass: function(a, b) { for(var c = b.split(" "), d = a.className, e = 0; e < c.length; e++) { var f = c[e],
								g = new RegExp("(?:\\s|^)" + f + "(?:\\s|$)");
							d = d.replace(g, " ") } a.className = d.trim() }, _addClass: function(a, b) { for(var c = b.split(" "), d = a.className, e = 0; e < c.length; e++) { var f = c[e],
								g = new RegExp("(?:\\s|^)" + f + "(?:\\s|$)"),
								h = g.test(d);
							h || (d += " " + f) } a.className = d.trim() }, _offsetLeft: function(a) { return a.getBoundingClientRect().left }, _offsetTop: function(a) { for(var b = a.offsetTop;
							(a = a.offsetParent) && !isNaN(a.offsetTop);) b += a.offsetTop, "BODY" !== a.tagName && (b -= a.scrollTop); return b }, _offset: function(a) { return { left: this._offsetLeft(a), top: this._offsetTop(a) } }, _css: function(b, c, d) { if(a) a.style(b, c, d);
						else { var e = c.replace(/^-ms-/, "ms-").replace(/-([\da-z])/gi, function(a, b) { return b.toUpperCase() });
							b.style[e] = d } }, _toValue: function(a) { return this.options.scale.toValue.apply(this, [a]) }, _toPercentage: function(a) { return this.options.scale.toPercentage.apply(this, [a]) }, _setTooltipPosition: function() { var a = [this.tooltip, this.tooltip_min, this.tooltip_max]; if("vertical" === this.options.orientation) { var b = this.options.tooltip_position || "right",
								c = "left" === b ? "right" : "left";
							a.forEach(function(a) { this._addClass(a, b), a.style[c] = "100%" }.bind(this)) } else "bottom" === this.options.tooltip_position ? a.forEach(function(a) { this._addClass(a, "bottom"), a.style.top = "22px" }.bind(this)) : a.forEach(function(a) { this._addClass(a, "top"), a.style.top = -this.tooltip.outerHeight - 14 + "px" }.bind(this)) } }, a) { var f = a.fn.slider ? "bootstrapSlider" : "slider";
				a.bridget(f, b) } }(a), b });

/*!
 * Bootstrap-growl v1.1.0
 *
 * Copyright (c) Nick Larson, http://github.com/ifightcrime
 * Released under the MIT license
 *
 * Pretty simple jQuery plugin that turns standard Bootstrap alerts into hovering "Growl-like" notifications.
 *
 */
(function() { var t;
	t = jQuery, t.bootstrapGrowl = function(e, s) { var a, o, l; switch(s = t.extend({}, t.bootstrapGrowl.default_options, s), a = t("<div>"), a.attr("class", "bootstrap-growl alert"), s.type && a.addClass("alert-" + s.type), s.allow_dismiss && a.append('<a class="close" data-dismiss="alert" href="#">&times;</a>'), a.append(e), s.top_offset && (s.offset = { from: "top", amount: s.top_offset }), l = s.offset.amount, t(".bootstrap-growl").each(function() { return l = Math.max(l, parseInt(t(this).css(s.offset.from)) + t(this).outerHeight() + s.stackup_spacing) }), o = { position: "body" === s.ele ? "fixed" : "absolute", margin: 0, "z-index": "9999", display: "none" }, o[s.offset.from] = l + "px", a.css(o), "auto" !== s.width && a.css("width", s.width + "px"), t(s.ele).append(a), s.align) {
			case "center":
				a.css({ left: "50%", "margin-left": "-" + a.outerWidth() / 2 + "px" }); break;
			case "left":
				a.css("left", "20px"); break;
			default:
				a.css("right", "20px") } return a.fadeIn(), s.delay > 0 && a.delay(s.delay).fadeOut(function() { return t(this).alert("close") }), a }, t.bootstrapGrowl.default_options = { ele: "body", type: "info", offset: { from: "top", amount: 20 }, align: "right", width: 250, delay: 4e3, allow_dismiss: !0, stackup_spacing: 10 } }).call(this);

/*!
 * jQuery countTo Plugin 1.2.0
 * https://github.com/mhuggins/jquery-countTo
 * Copyright (c) Matt Huggins; Licensed MIT
 */
! function(t) { "function" == typeof define && define.amd ? define(["jquery"], t) : t("object" == typeof exports ? require("jquery") : jQuery) }(function(t) {
	function e(t, e) { return t.toFixed(e.decimals) } var o = function(e, i) { this.$element = t(e), this.options = t.extend({}, o.DEFAULTS, this.dataOptions(), i), this.init() };
	o.DEFAULTS = { from: 0, to: 0, speed: 1e3, refreshInterval: 100, decimals: 0, formatter: e, onUpdate: null, onComplete: null }, o.prototype.init = function() { this.value = this.options.from, this.loops = Math.ceil(this.options.speed / this.options.refreshInterval), this.loopCount = 0, this.increment = (this.options.to - this.options.from) / this.loops }, o.prototype.dataOptions = function() { var t = { from: this.$element.data("from"), to: this.$element.data("to"), speed: this.$element.data("speed"), refreshInterval: this.$element.data("refresh-interval"), decimals: this.$element.data("decimals") },
			e = Object.keys(t); for(var o in e) { var i = e[o]; "undefined" == typeof t[i] && delete t[i] } return t }, o.prototype.update = function() { this.value += this.increment, this.loopCount++, this.render(), "function" == typeof this.options.onUpdate && this.options.onUpdate.call(this.$element, this.value), this.loopCount >= this.loops && (clearInterval(this.interval), this.value = this.options.to, "function" == typeof this.options.onComplete && this.options.onComplete.call(this.$element, this.value)) }, o.prototype.render = function() { var t = this.options.formatter.call(this.$element, this.value, this.options);
		this.$element.text(t) }, o.prototype.restart = function() { this.stop(), this.init(), this.start() }, o.prototype.start = function() { this.stop(), this.render(), this.interval = setInterval(this.update.bind(this), this.options.refreshInterval) }, o.prototype.stop = function() { this.interval && clearInterval(this.interval) }, o.prototype.toggle = function() { this.interval ? this.stop() : this.start() }, t.fn.countTo = function(e) { return this.each(function() { var i = t(this),
				n = i.data("countTo"),
				s = !n || "object" == typeof e,
				r = "object" == typeof e ? e : {},
				a = "string" == typeof e ? e : "start";
			s && (n && n.stop(), i.data("countTo", n = new o(this, r))), n[a].call(n) }) } });

/*!
 * Nestable jQuery Plugin - Copyright (c) 2012 David Bushell - http://dbushell.com/
 * Dual-licensed under the BSD or MIT licenses
 */
! function(t, e, s, i) {
	function a(e, i) { this.w = t(s), this.el = t(e), this.options = t.extend({}, n, i), this.init() } var o = "ontouchstart" in s,
		l = function() { var t = s.createElement("div"),
				i = s.documentElement; if(!("pointerEvents" in t.style)) return !1;
			t.style.pointerEvents = "auto", t.style.pointerEvents = "x", i.appendChild(t); var a = e.getComputedStyle && "auto" === e.getComputedStyle(t, "").pointerEvents; return i.removeChild(t), !!a }(),
		n = { listNodeName: "ol", itemNodeName: "li", rootClass: "dd", listClass: "dd-list", itemClass: "dd-item", dragClass: "dd-dragel", handleClass: "dd-handle", collapsedClass: "dd-collapsed", placeClass: "dd-placeholder", noDragClass: "dd-nodrag", emptyClass: "dd-empty", expandBtnHTML: '<button data-action="expand" type="button">Expand</button>', collapseBtnHTML: '<button data-action="collapse" type="button">Collapse</button>', group: 0, maxDepth: 5, threshold: 20 };
	a.prototype = { init: function() { var s = this;
			s.reset(), s.el.data("nestable-group", this.options.group), s.placeEl = t('<div class="' + s.options.placeClass + '"/>'), t.each(this.el.find(s.options.itemNodeName), function(e, i) { s.setParent(t(i)) }), s.el.on("click", "button", function(e) { if(!s.dragEl) { var i = t(e.currentTarget),
						a = i.data("action"),
						o = i.parent(s.options.itemNodeName); "collapse" === a && s.collapseItem(o), "expand" === a && s.expandItem(o) } }); var i = function(e) { var i = t(e.target); if(!i.hasClass(s.options.handleClass)) { if(i.closest("." + s.options.noDragClass).length) return;
						i = i.closest("." + s.options.handleClass) } i.length && !s.dragEl && (s.isTouch = /^touch/.test(e.type), s.isTouch && 1 !== e.touches.length || (e.preventDefault(), s.dragStart(e.touches ? e.touches[0] : e))) },
				a = function(t) { s.dragEl && (t.preventDefault(), s.dragMove(t.touches ? t.touches[0] : t)) },
				l = function(t) { s.dragEl && (t.preventDefault(), s.dragStop(t.touches ? t.touches[0] : t)) };
			o && (s.el[0].addEventListener("touchstart", i, !1), e.addEventListener("touchmove", a, !1), e.addEventListener("touchend", l, !1), e.addEventListener("touchcancel", l, !1)), s.el.on("mousedown", i), s.w.on("mousemove", a), s.w.on("mouseup", l) }, serialize: function() { var e, s = 0,
				i = this; return step = function(e, s) { var a = [],
					o = e.children(i.options.itemNodeName); return o.each(function() { var e = t(this),
						o = t.extend({}, e.data()),
						l = e.children(i.options.listNodeName);
					l.length && (o.children = step(l, s + 1)), a.push(o) }), a }, e = step(i.el.find(i.options.listNodeName).first(), s) }, serialise: function() { return this.serialize() }, reset: function() { this.mouse = { offsetX: 0, offsetY: 0, startX: 0, startY: 0, lastX: 0, lastY: 0, nowX: 0, nowY: 0, distX: 0, distY: 0, dirAx: 0, dirX: 0, dirY: 0, lastDirX: 0, lastDirY: 0, distAxX: 0, distAxY: 0 }, this.isTouch = !1, this.moving = !1, this.dragEl = null, this.dragRootEl = null, this.dragDepth = 0, this.hasNewRoot = !1, this.pointEl = null }, expandItem: function(t) { t.removeClass(this.options.collapsedClass), t.children('[data-action="expand"]').hide(), t.children('[data-action="collapse"]').show(), t.children(this.options.listNodeName).show() }, collapseItem: function(t) { var e = t.children(this.options.listNodeName);
			e.length && (t.addClass(this.options.collapsedClass), t.children('[data-action="collapse"]').hide(), t.children('[data-action="expand"]').show(), t.children(this.options.listNodeName).hide()) }, expandAll: function() { var e = this;
			e.el.find(e.options.itemNodeName).each(function() { e.expandItem(t(this)) }) }, collapseAll: function() { var e = this;
			e.el.find(e.options.itemNodeName).each(function() { e.collapseItem(t(this)) }) }, setParent: function(e) { e.children(this.options.listNodeName).length && (e.prepend(t(this.options.expandBtnHTML)), e.prepend(t(this.options.collapseBtnHTML))), e.children('[data-action="expand"]').hide() }, unsetParent: function(t) { t.removeClass(this.options.collapsedClass), t.children("[data-action]").remove(), t.children(this.options.listNodeName).remove() }, dragStart: function(e) { var a = this.mouse,
				o = t(e.target),
				l = o.closest(this.options.itemNodeName);
			this.placeEl.css("height", l.height()), a.offsetX = e.offsetX !== i ? e.offsetX : e.pageX - o.offset().left, a.offsetY = e.offsetY !== i ? e.offsetY : e.pageY - o.offset().top, a.startX = a.lastX = e.pageX, a.startY = a.lastY = e.pageY, this.dragRootEl = this.el, this.dragEl = t(s.createElement(this.options.listNodeName)).addClass(this.options.listClass + " " + this.options.dragClass), this.dragEl.css("width", l.width()), l.after(this.placeEl), l[0].parentNode.removeChild(l[0]), l.appendTo(this.dragEl), t(s.body).append(this.dragEl), this.dragEl.css({ left: e.pageX - a.offsetX, top: e.pageY - a.offsetY }); var n, d, h = this.dragEl.find(this.options.itemNodeName); for(n = 0; n < h.length; n++) d = t(h[n]).parents(this.options.listNodeName).length, d > this.dragDepth && (this.dragDepth = d) }, dragStop: function() { var t = this.dragEl.children(this.options.itemNodeName).first();
			t[0].parentNode.removeChild(t[0]), this.placeEl.replaceWith(t), this.dragEl.remove(), this.el.trigger("change"), this.hasNewRoot && this.dragRootEl.trigger("change"), this.reset() }, dragMove: function(i) { var a, o, n, d, h, r = this.options,
				p = this.mouse;
			this.dragEl.css({ left: i.pageX - p.offsetX, top: i.pageY - p.offsetY }), p.lastX = p.nowX, p.lastY = p.nowY, p.nowX = i.pageX, p.nowY = i.pageY, p.distX = p.nowX - p.lastX, p.distY = p.nowY - p.lastY, p.lastDirX = p.dirX, p.lastDirY = p.dirY, p.dirX = 0 === p.distX ? 0 : p.distX > 0 ? 1 : -1, p.dirY = 0 === p.distY ? 0 : p.distY > 0 ? 1 : -1; var c = Math.abs(p.distX) > Math.abs(p.distY) ? 1 : 0; if(!p.moving) return p.dirAx = c, void(p.moving = !0);
			p.dirAx !== c ? (p.distAxX = 0, p.distAxY = 0) : (p.distAxX += Math.abs(p.distX), 0 !== p.dirX && p.dirX !== p.lastDirX && (p.distAxX = 0), p.distAxY += Math.abs(p.distY), 0 !== p.dirY && p.dirY !== p.lastDirY && (p.distAxY = 0)), p.dirAx = c, p.dirAx && p.distAxX >= r.threshold && (p.distAxX = 0, n = this.placeEl.prev(r.itemNodeName), p.distX > 0 && n.length && !n.hasClass(r.collapsedClass) && (a = n.find(r.listNodeName).last(), h = this.placeEl.parents(r.listNodeName).length, h + this.dragDepth <= r.maxDepth && (a.length ? (a = n.children(r.listNodeName).last(), a.append(this.placeEl)) : (a = t("<" + r.listNodeName + "/>").addClass(r.listClass), a.append(this.placeEl), n.append(a), this.setParent(n)))), p.distX < 0 && (d = this.placeEl.next(r.itemNodeName), d.length || (o = this.placeEl.parent(), this.placeEl.closest(r.itemNodeName).after(this.placeEl), o.children().length || this.unsetParent(o.parent())))); var g = !1; if(l || (this.dragEl[0].style.visibility = "hidden"), this.pointEl = t(s.elementFromPoint(i.pageX - s.body.scrollLeft, i.pageY - (e.pageYOffset || s.documentElement.scrollTop))), l || (this.dragEl[0].style.visibility = "visible"), this.pointEl.hasClass(r.handleClass) && (this.pointEl = this.pointEl.parent(r.itemNodeName)), this.pointEl.hasClass(r.emptyClass)) g = !0;
			else if(!this.pointEl.length || !this.pointEl.hasClass(r.itemClass)) return; var f = this.pointEl.closest("." + r.rootClass),
				u = this.dragRootEl.data("nestable-id") !== f.data("nestable-id"); if(!p.dirAx || u || g) { if(u && r.group !== f.data("nestable-group")) return; if(h = this.dragDepth - 1 + this.pointEl.parents(r.listNodeName).length, h > r.maxDepth) return; var m = i.pageY < this.pointEl.offset().top + this.pointEl.height() / 2;
				o = this.placeEl.parent(), g ? (a = t(s.createElement(r.listNodeName)).addClass(r.listClass), a.append(this.placeEl), this.pointEl.replaceWith(a)) : m ? this.pointEl.before(this.placeEl) : this.pointEl.after(this.placeEl), o.children().length || this.unsetParent(o.parent()), this.dragRootEl.find(r.itemNodeName).length || this.dragRootEl.append('<div class="' + r.emptyClass + '"/>'), u && (this.dragRootEl = f, this.hasNewRoot = this.el[0] !== this.dragRootEl[0]) } } }, t.fn.nestable = function(e) { var s = this,
			i = this; return s.each(function() { var s = t(this).data("nestable");
			s ? "string" == typeof e && "function" == typeof s[e] && (i = s[e]()) : (t(this).data("nestable", new a(this, e)), t(this).data("nestable-id", (new Date).getTime())) }), i || s } }(window.jQuery || window.Zepto, window, document);

/*! Select2 4.0.3 | https://github.com/select2/select2/blob/master/LICENSE.md */
! function(a) { "function" == typeof define && define.amd ? define(["jquery"], a) : a("object" == typeof exports ? require("jquery") : jQuery) }(function(a) {
	var b = function() {
			if(a && a.fn && a.fn.select2 && a.fn.select2.amd) var b = a.fn.select2.amd;
			var b;
			return function() { if(!b || !b.requirejs) { b ? c = b : b = {}; var a, c, d;! function(b) {
							function e(a, b) { return u.call(a, b) }

							function f(a, b) { var c, d, e, f, g, h, i, j, k, l, m, n = b && b.split("/"),
									o = s.map,
									p = o && o["*"] || {}; if(a && "." === a.charAt(0))
									if(b) { for(a = a.split("/"), g = a.length - 1, s.nodeIdCompat && w.test(a[g]) && (a[g] = a[g].replace(w, "")), a = n.slice(0, n.length - 1).concat(a), k = 0; k < a.length; k += 1)
											if(m = a[k], "." === m) a.splice(k, 1), k -= 1;
											else if(".." === m) { if(1 === k && (".." === a[2] || ".." === a[0])) break;
											k > 0 && (a.splice(k - 1, 2), k -= 2) } a = a.join("/") } else 0 === a.indexOf("./") && (a = a.substring(2)); if((n || p) && o) { for(c = a.split("/"), k = c.length; k > 0; k -= 1) { if(d = c.slice(0, k).join("/"), n)
											for(l = n.length; l > 0; l -= 1)
												if(e = o[n.slice(0, l).join("/")], e && (e = e[d])) { f = e, h = k; break }
										if(f) break;!i && p && p[d] && (i = p[d], j = k) }!f && i && (f = i, h = j), f && (c.splice(0, h, f), a = c.join("/")) } return a }

							function g(a, c) { return function() { var d = v.call(arguments, 0); return "string" != typeof d[0] && 1 === d.length && d.push(null), n.apply(b, d.concat([a, c])) } }

							function h(a) { return function(b) { return f(b, a) } }

							function i(a) { return function(b) { q[a] = b } }

							function j(a) { if(e(r, a)) { var c = r[a];
									delete r[a], t[a] = !0, m.apply(b, c) } if(!e(q, a) && !e(t, a)) throw new Error("No " + a); return q[a] }

							function k(a) { var b, c = a ? a.indexOf("!") : -1; return c > -1 && (b = a.substring(0, c), a = a.substring(c + 1, a.length)), [b, a] }

							function l(a) { return function() { return s && s.config && s.config[a] || {} } } var m, n, o, p, q = {},
								r = {},
								s = {},
								t = {},
								u = Object.prototype.hasOwnProperty,
								v = [].slice,
								w = /\.js$/;
							o = function(a, b) { var c, d = k(a),
									e = d[0]; return a = d[1], e && (e = f(e, b), c = j(e)), e ? a = c && c.normalize ? c.normalize(a, h(b)) : f(a, b) : (a = f(a, b), d = k(a), e = d[0], a = d[1], e && (c = j(e))), { f: e ? e + "!" + a : a, n: a, pr: e, p: c } }, p = { require: function(a) { return g(a) }, exports: function(a) { var b = q[a]; return "undefined" != typeof b ? b : q[a] = {} }, module: function(a) { return { id: a, uri: "", exports: q[a], config: l(a) } } }, m = function(a, c, d, f) { var h, k, l, m, n, s, u = [],
									v = typeof d; if(f = f || a, "undefined" === v || "function" === v) { for(c = !c.length && d.length ? ["require", "exports", "module"] : c, n = 0; n < c.length; n += 1)
										if(m = o(c[n], f), k = m.f, "require" === k) u[n] = p.require(a);
										else if("exports" === k) u[n] = p.exports(a), s = !0;
									else if("module" === k) h = u[n] = p.module(a);
									else if(e(q, k) || e(r, k) || e(t, k)) u[n] = j(k);
									else { if(!m.p) throw new Error(a + " missing " + k);
										m.p.load(m.n, g(f, !0), i(k), {}), u[n] = q[k] } l = d ? d.apply(q[a], u) : void 0, a && (h && h.exports !== b && h.exports !== q[a] ? q[a] = h.exports : l === b && s || (q[a] = l)) } else a && (q[a] = d) }, a = c = n = function(a, c, d, e, f) { if("string" == typeof a) return p[a] ? p[a](c) : j(o(a, c).f); if(!a.splice) { if(s = a, s.deps && n(s.deps, s.callback), !c) return;
									c.splice ? (a = c, c = d, d = null) : a = b } return c = c || function() {}, "function" == typeof d && (d = e, e = f), e ? m(b, a, c, d) : setTimeout(function() { m(b, a, c, d) }, 4), n }, n.config = function(a) { return n(a) }, a._defined = q, d = function(a, b, c) { if("string" != typeof a) throw new Error("See almond README: incorrect module build, no module name");
								b.splice || (c = b, b = []), e(q, a) || e(r, a) || (r[a] = [a, b, c]) }, d.amd = { jQuery: !0 } }(), b.requirejs = a, b.require = c, b.define = d } }(), b.define("almond", function() {}), b.define("jquery", [], function() { var b = a || $; return null == b && console && console.error && console.error("Select2: An instance of jQuery or a jQuery-compatible library was not found. Make sure that you are including jQuery before Select2 on your web page."), b }), b.define("select2/utils", ["jquery"], function(a) {
					function b(a) { var b = a.prototype,
							c = []; for(var d in b) { var e = b[d]; "function" == typeof e && "constructor" !== d && c.push(d) } return c } var c = {};
					c.Extend = function(a, b) {
						function c() { this.constructor = a } var d = {}.hasOwnProperty; for(var e in b) d.call(b, e) && (a[e] = b[e]); return c.prototype = b.prototype, a.prototype = new c, a.__super__ = b.prototype, a }, c.Decorate = function(a, c) {
						function d() { var b = Array.prototype.unshift,
								d = c.prototype.constructor.length,
								e = a.prototype.constructor;
							d > 0 && (b.call(arguments, a.prototype.constructor), e = c.prototype.constructor), e.apply(this, arguments) }

						function e() { this.constructor = d } var f = b(c),
							g = b(a);
						c.displayName = a.displayName, d.prototype = new e; for(var h = 0; h < g.length; h++) { var i = g[h];
							d.prototype[i] = a.prototype[i] } for(var j = (function(a) { var b = function() {};
								a in d.prototype && (b = d.prototype[a]); var e = c.prototype[a]; return function() { var a = Array.prototype.unshift; return a.call(arguments, b), e.apply(this, arguments) } }), k = 0; k < f.length; k++) { var l = f[k];
							d.prototype[l] = j(l) } return d }; var d = function() { this.listeners = {} }; return d.prototype.on = function(a, b) { this.listeners = this.listeners || {}, a in this.listeners ? this.listeners[a].push(b) : this.listeners[a] = [b] }, d.prototype.trigger = function(a) { var b = Array.prototype.slice,
							c = b.call(arguments, 1);
						this.listeners = this.listeners || {}, null == c && (c = []), 0 === c.length && c.push({}), c[0]._type = a, a in this.listeners && this.invoke(this.listeners[a], b.call(arguments, 1)), "*" in this.listeners && this.invoke(this.listeners["*"], arguments) }, d.prototype.invoke = function(a, b) { for(var c = 0, d = a.length; d > c; c++) a[c].apply(this, b) }, c.Observable = d, c.generateChars = function(a) { for(var b = "", c = 0; a > c; c++) { var d = Math.floor(36 * Math.random());
							b += d.toString(36) } return b }, c.bind = function(a, b) { return function() { a.apply(b, arguments) } }, c._convertData = function(a) { for(var b in a) { var c = b.split("-"),
								d = a; if(1 !== c.length) { for(var e = 0; e < c.length; e++) { var f = c[e];
									f = f.substring(0, 1).toLowerCase() + f.substring(1), f in d || (d[f] = {}), e == c.length - 1 && (d[f] = a[b]), d = d[f] } delete a[b] } } return a }, c.hasScroll = function(b, c) { var d = a(c),
							e = c.style.overflowX,
							f = c.style.overflowY; return e !== f || "hidden" !== f && "visible" !== f ? "scroll" === e || "scroll" === f ? !0 : d.innerHeight() < c.scrollHeight || d.innerWidth() < c.scrollWidth : !1 }, c.escapeMarkup = function(a) { var b = { "\\": "&#92;", "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;", "/": "&#47;" }; return "string" != typeof a ? a : String(a).replace(/[&<>"'\/\\]/g, function(a) { return b[a] }) }, c.appendMany = function(b, c) { if("1.7" === a.fn.jquery.substr(0, 3)) { var d = a();
							a.map(c, function(a) { d = d.add(a) }), c = d } b.append(c) }, c }), b.define("select2/results", ["jquery", "./utils"], function(a, b) {
					function c(a, b, d) { this.$element = a, this.data = d, this.options = b, c.__super__.constructor.call(this) } return b.Extend(c, b.Observable), c.prototype.render = function() { var b = a('<ul class="select2-results__options" role="tree"></ul>'); return this.options.get("multiple") && b.attr("aria-multiselectable", "true"), this.$results = b, b }, c.prototype.clear = function() { this.$results.empty() }, c.prototype.displayMessage = function(b) { var c = this.options.get("escapeMarkup");
						this.clear(), this.hideLoading(); var d = a('<li role="treeitem" aria-live="assertive" class="select2-results__option"></li>'),
							e = this.options.get("translations").get(b.message);
						d.append(c(e(b.args))), d[0].className += " select2-results__message", this.$results.append(d) }, c.prototype.hideMessages = function() { this.$results.find(".select2-results__message").remove() }, c.prototype.append = function(a) { this.hideLoading(); var b = []; if(null == a.results || 0 === a.results.length) return void(0 === this.$results.children().length && this.trigger("results:message", { message: "noResults" }));
						a.results = this.sort(a.results); for(var c = 0; c < a.results.length; c++) { var d = a.results[c],
								e = this.option(d);
							b.push(e) } this.$results.append(b) }, c.prototype.position = function(a, b) { var c = b.find(".select2-results");
						c.append(a) }, c.prototype.sort = function(a) { var b = this.options.get("sorter"); return b(a) }, c.prototype.highlightFirstItem = function() { var a = this.$results.find(".select2-results__option[aria-selected]"),
							b = a.filter("[aria-selected=true]");
						b.length > 0 ? b.first().trigger("mouseenter") : a.first().trigger("mouseenter"), this.ensureHighlightVisible() }, c.prototype.setClasses = function() { var b = this;
						this.data.current(function(c) { var d = a.map(c, function(a) { return a.id.toString() }),
								e = b.$results.find(".select2-results__option[aria-selected]");
							e.each(function() { var b = a(this),
									c = a.data(this, "data"),
									e = "" + c.id;
								null != c.element && c.element.selected || null == c.element && a.inArray(e, d) > -1 ? b.attr("aria-selected", "true") : b.attr("aria-selected", "false") }) }) }, c.prototype.showLoading = function(a) { this.hideLoading(); var b = this.options.get("translations").get("searching"),
							c = { disabled: !0, loading: !0, text: b(a) },
							d = this.option(c);
						d.className += " loading-results", this.$results.prepend(d) }, c.prototype.hideLoading = function() { this.$results.find(".loading-results").remove() }, c.prototype.option = function(b) { var c = document.createElement("li");
						c.className = "select2-results__option"; var d = { role: "treeitem", "aria-selected": "false" };
						b.disabled && (delete d["aria-selected"], d["aria-disabled"] = "true"), null == b.id && delete d["aria-selected"], null != b._resultId && (c.id = b._resultId), b.title && (c.title = b.title), b.children && (d.role = "group", d["aria-label"] = b.text, delete d["aria-selected"]); for(var e in d) { var f = d[e];
							c.setAttribute(e, f) } if(b.children) { var g = a(c),
								h = document.createElement("strong");
							h.className = "select2-results__group";
							a(h);
							this.template(b, h); for(var i = [], j = 0; j < b.children.length; j++) { var k = b.children[j],
									l = this.option(k);
								i.push(l) } var m = a("<ul></ul>", { "class": "select2-results__options select2-results__options--nested" });
							m.append(i), g.append(h), g.append(m) } else this.template(b, c); return a.data(c, "data", b), c }, c.prototype.bind = function(b, c) { var d = this,
							e = b.id + "-results";
						this.$results.attr("id", e), b.on("results:all", function(a) { d.clear(), d.append(a.data), b.isOpen() && (d.setClasses(), d.highlightFirstItem()) }), b.on("results:append", function(a) { d.append(a.data), b.isOpen() && d.setClasses() }), b.on("query", function(a) { d.hideMessages(), d.showLoading(a) }), b.on("select", function() { b.isOpen() && (d.setClasses(), d.highlightFirstItem()) }), b.on("unselect", function() { b.isOpen() && (d.setClasses(), d.highlightFirstItem()) }), b.on("open", function() { d.$results.attr("aria-expanded", "true"), d.$results.attr("aria-hidden", "false"), d.setClasses(), d.ensureHighlightVisible() }), b.on("close", function() { d.$results.attr("aria-expanded", "false"), d.$results.attr("aria-hidden", "true"), d.$results.removeAttr("aria-activedescendant") }), b.on("results:toggle", function() { var a = d.getHighlightedResults();
							0 !== a.length && a.trigger("mouseup") }), b.on("results:select", function() { var a = d.getHighlightedResults(); if(0 !== a.length) { var b = a.data("data"); "true" == a.attr("aria-selected") ? d.trigger("close", {}) : d.trigger("select", { data: b }) } }), b.on("results:previous", function() { var a = d.getHighlightedResults(),
								b = d.$results.find("[aria-selected]"),
								c = b.index(a); if(0 !== c) { var e = c - 1;
								0 === a.length && (e = 0); var f = b.eq(e);
								f.trigger("mouseenter"); var g = d.$results.offset().top,
									h = f.offset().top,
									i = d.$results.scrollTop() + (h - g);
								0 === e ? d.$results.scrollTop(0) : 0 > h - g && d.$results.scrollTop(i) } }), b.on("results:next", function() { var a = d.getHighlightedResults(),
								b = d.$results.find("[aria-selected]"),
								c = b.index(a),
								e = c + 1; if(!(e >= b.length)) { var f = b.eq(e);
								f.trigger("mouseenter"); var g = d.$results.offset().top + d.$results.outerHeight(!1),
									h = f.offset().top + f.outerHeight(!1),
									i = d.$results.scrollTop() + h - g;
								0 === e ? d.$results.scrollTop(0) : h > g && d.$results.scrollTop(i) } }), b.on("results:focus", function(a) { a.element.addClass("select2-results__option--highlighted") }), b.on("results:message", function(a) { d.displayMessage(a) }), a.fn.mousewheel && this.$results.on("mousewheel", function(a) { var b = d.$results.scrollTop(),
								c = d.$results.get(0).scrollHeight - b + a.deltaY,
								e = a.deltaY > 0 && b - a.deltaY <= 0,
								f = a.deltaY < 0 && c <= d.$results.height();
							e ? (d.$results.scrollTop(0), a.preventDefault(), a.stopPropagation()) : f && (d.$results.scrollTop(d.$results.get(0).scrollHeight - d.$results.height()), a.preventDefault(), a.stopPropagation()) }), this.$results.on("mouseup", ".select2-results__option[aria-selected]", function(b) { var c = a(this),
								e = c.data("data"); return "true" === c.attr("aria-selected") ? void(d.options.get("multiple") ? d.trigger("unselect", { originalEvent: b, data: e }) : d.trigger("close", {})) : void d.trigger("select", { originalEvent: b, data: e }) }), this.$results.on("mouseenter", ".select2-results__option[aria-selected]", function(b) { var c = a(this).data("data");
							d.getHighlightedResults().removeClass("select2-results__option--highlighted"), d.trigger("results:focus", { data: c, element: a(this) }) }) }, c.prototype.getHighlightedResults = function() { var a = this.$results.find(".select2-results__option--highlighted"); return a }, c.prototype.destroy = function() { this.$results.remove() }, c.prototype.ensureHighlightVisible = function() { var a = this.getHighlightedResults(); if(0 !== a.length) { var b = this.$results.find("[aria-selected]"),
								c = b.index(a),
								d = this.$results.offset().top,
								e = a.offset().top,
								f = this.$results.scrollTop() + (e - d),
								g = e - d;
							f -= 2 * a.outerHeight(!1), 2 >= c ? this.$results.scrollTop(0) : (g > this.$results.outerHeight() || 0 > g) && this.$results.scrollTop(f) } }, c.prototype.template = function(b, c) { var d = this.options.get("templateResult"),
							e = this.options.get("escapeMarkup"),
							f = d(b, c);
						null == f ? c.style.display = "none" : "string" == typeof f ? c.innerHTML = e(f) : a(c).append(f) }, c }), b.define("select2/keys", [], function() { var a = { BACKSPACE: 8, TAB: 9, ENTER: 13, SHIFT: 16, CTRL: 17, ALT: 18, ESC: 27, SPACE: 32, PAGE_UP: 33, PAGE_DOWN: 34, END: 35, HOME: 36, LEFT: 37, UP: 38, RIGHT: 39, DOWN: 40, DELETE: 46 }; return a }), b.define("select2/selection/base", ["jquery", "../utils", "../keys"], function(a, b, c) {
					function d(a, b) { this.$element = a, this.options = b, d.__super__.constructor.call(this) } return b.Extend(d, b.Observable), d.prototype.render = function() { var b = a('<span class="select2-selection" role="combobox"  aria-haspopup="true" aria-expanded="false"></span>'); return this._tabindex = 0, null != this.$element.data("old-tabindex") ? this._tabindex = this.$element.data("old-tabindex") : null != this.$element.attr("tabindex") && (this._tabindex = this.$element.attr("tabindex")), b.attr("title", this.$element.attr("title")), b.attr("tabindex", this._tabindex), this.$selection = b, b }, d.prototype.bind = function(a, b) { var d = this,
							e = (a.id + "-container", a.id + "-results");
						this.container = a, this.$selection.on("focus", function(a) { d.trigger("focus", a) }), this.$selection.on("blur", function(a) { d._handleBlur(a) }), this.$selection.on("keydown", function(a) { d.trigger("keypress", a), a.which === c.SPACE && a.preventDefault() }), a.on("results:focus", function(a) { d.$selection.attr("aria-activedescendant", a.data._resultId) }), a.on("selection:update", function(a) { d.update(a.data) }), a.on("open", function() { d.$selection.attr("aria-expanded", "true"), d.$selection.attr("aria-owns", e), d._attachCloseHandler(a) }), a.on("close", function() { d.$selection.attr("aria-expanded", "false"), d.$selection.removeAttr("aria-activedescendant"), d.$selection.removeAttr("aria-owns"), d.$selection.focus(), d._detachCloseHandler(a) }), a.on("enable", function() { d.$selection.attr("tabindex", d._tabindex) }), a.on("disable", function() { d.$selection.attr("tabindex", "-1") }) }, d.prototype._handleBlur = function(b) { var c = this;
						window.setTimeout(function() { document.activeElement == c.$selection[0] || a.contains(c.$selection[0], document.activeElement) || c.trigger("blur", b) }, 1) }, d.prototype._attachCloseHandler = function(b) { a(document.body).on("mousedown.select2." + b.id, function(b) { var c = a(b.target),
								d = c.closest(".select2"),
								e = a(".select2.select2-container--open");
							e.each(function() { var b = a(this); if(this != d[0]) { var c = b.data("element");
									c.select2("close") } }) }) }, d.prototype._detachCloseHandler = function(b) { a(document.body).off("mousedown.select2." + b.id) }, d.prototype.position = function(a, b) { var c = b.find(".selection");
						c.append(a) }, d.prototype.destroy = function() { this._detachCloseHandler(this.container) }, d.prototype.update = function(a) { throw new Error("The `update` method must be defined in child classes.") }, d }), b.define("select2/selection/single", ["jquery", "./base", "../utils", "../keys"], function(a, b, c, d) {
					function e() { e.__super__.constructor.apply(this, arguments) } return c.Extend(e, b), e.prototype.render = function() { var a = e.__super__.render.call(this); return a.addClass("select2-selection--single"), a.html('<span class="select2-selection__rendered"></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span>'), a }, e.prototype.bind = function(a, b) { var c = this;
						e.__super__.bind.apply(this, arguments); var d = a.id + "-container";
						this.$selection.find(".select2-selection__rendered").attr("id", d), this.$selection.attr("aria-labelledby", d), this.$selection.on("mousedown", function(a) { 1 === a.which && c.trigger("toggle", { originalEvent: a }) }), this.$selection.on("focus", function(a) {}), this.$selection.on("blur", function(a) {}), a.on("focus", function(b) { a.isOpen() || c.$selection.focus() }), a.on("selection:update", function(a) { c.update(a.data) }) }, e.prototype.clear = function() { this.$selection.find(".select2-selection__rendered").empty() }, e.prototype.display = function(a, b) { var c = this.options.get("templateSelection"),
							d = this.options.get("escapeMarkup"); return d(c(a, b)) }, e.prototype.selectionContainer = function() { return a("<span></span>") }, e.prototype.update = function(a) { if(0 === a.length) return void this.clear(); var b = a[0],
							c = this.$selection.find(".select2-selection__rendered"),
							d = this.display(b, c);
						c.empty().append(d), c.prop("title", b.title || b.text) }, e }), b.define("select2/selection/multiple", ["jquery", "./base", "../utils"], function(a, b, c) {
					function d(a, b) { d.__super__.constructor.apply(this, arguments) } return c.Extend(d, b), d.prototype.render = function() { var a = d.__super__.render.call(this); return a.addClass("select2-selection--multiple"), a.html('<ul class="select2-selection__rendered"></ul>'), a }, d.prototype.bind = function(b, c) { var e = this;
						d.__super__.bind.apply(this, arguments), this.$selection.on("click", function(a) { e.trigger("toggle", { originalEvent: a }) }), this.$selection.on("click", ".select2-selection__choice__remove", function(b) { if(!e.options.get("disabled")) { var c = a(this),
									d = c.parent(),
									f = d.data("data");
								e.trigger("unselect", { originalEvent: b, data: f }) } }) }, d.prototype.clear = function() { this.$selection.find(".select2-selection__rendered").empty() }, d.prototype.display = function(a, b) { var c = this.options.get("templateSelection"),
							d = this.options.get("escapeMarkup"); return d(c(a, b)) }, d.prototype.selectionContainer = function() { var b = a('<li class="select2-selection__choice"><span class="select2-selection__choice__remove" role="presentation">&times;</span></li>'); return b }, d.prototype.update = function(a) { if(this.clear(), 0 !== a.length) { for(var b = [], d = 0; d < a.length; d++) { var e = a[d],
									f = this.selectionContainer(),
									g = this.display(e, f);
								f.append(g), f.prop("title", e.title || e.text), f.data("data", e), b.push(f) } var h = this.$selection.find(".select2-selection__rendered");
							c.appendMany(h, b) } }, d }), b.define("select2/selection/placeholder", ["../utils"], function(a) {
					function b(a, b, c) { this.placeholder = this.normalizePlaceholder(c.get("placeholder")), a.call(this, b, c) } return b.prototype.normalizePlaceholder = function(a, b) { return "string" == typeof b && (b = { id: "", text: b }), b }, b.prototype.createPlaceholder = function(a, b) { var c = this.selectionContainer(); return c.html(this.display(b)), c.addClass("select2-selection__placeholder").removeClass("select2-selection__choice"), c }, b.prototype.update = function(a, b) { var c = 1 == b.length && b[0].id != this.placeholder.id,
							d = b.length > 1; if(d || c) return a.call(this, b);
						this.clear(); var e = this.createPlaceholder(this.placeholder);
						this.$selection.find(".select2-selection__rendered").append(e) }, b }), b.define("select2/selection/allowClear", ["jquery", "../keys"], function(a, b) {
					function c() {} return c.prototype.bind = function(a, b, c) { var d = this;
						a.call(this, b, c), null == this.placeholder && this.options.get("debug") && window.console && console.error && console.error("Select2: The `allowClear` option should be used in combination with the `placeholder` option."), this.$selection.on("mousedown", ".select2-selection__clear", function(a) { d._handleClear(a) }), b.on("keypress", function(a) { d._handleKeyboardClear(a, b) }) }, c.prototype._handleClear = function(a, b) { if(!this.options.get("disabled")) { var c = this.$selection.find(".select2-selection__clear"); if(0 !== c.length) { b.stopPropagation(); for(var d = c.data("data"), e = 0; e < d.length; e++) { var f = { data: d[e] }; if(this.trigger("unselect", f), f.prevented) return } this.$element.val(this.placeholder.id).trigger("change"), this.trigger("toggle", {}) } } }, c.prototype._handleKeyboardClear = function(a, c, d) { d.isOpen() || (c.which == b.DELETE || c.which == b.BACKSPACE) && this._handleClear(c) }, c.prototype.update = function(b, c) { if(b.call(this, c), !(this.$selection.find(".select2-selection__placeholder").length > 0 || 0 === c.length)) { var d = a('<span class="select2-selection__clear">&times;</span>');
							d.data("data", c), this.$selection.find(".select2-selection__rendered").prepend(d) } }, c }), b.define("select2/selection/search", ["jquery", "../utils", "../keys"], function(a, b, c) {
					function d(a, b, c) { a.call(this, b, c) } return d.prototype.render = function(b) { var c = a('<li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="-1" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" /></li>');
						this.$searchContainer = c, this.$search = c.find("input"); var d = b.call(this); return this._transferTabIndex(), d }, d.prototype.bind = function(a, b, d) { var e = this;
						a.call(this, b, d), b.on("open", function() { e.$search.trigger("focus") }), b.on("close", function() { e.$search.val(""), e.$search.removeAttr("aria-activedescendant"), e.$search.trigger("focus") }), b.on("enable", function() { e.$search.prop("disabled", !1), e._transferTabIndex() }), b.on("disable", function() { e.$search.prop("disabled", !0) }), b.on("focus", function(a) { e.$search.trigger("focus") }), b.on("results:focus", function(a) { e.$search.attr("aria-activedescendant", a.id) }), this.$selection.on("focusin", ".select2-search--inline", function(a) { e.trigger("focus", a) }), this.$selection.on("focusout", ".select2-search--inline", function(a) { e._handleBlur(a) }), this.$selection.on("keydown", ".select2-search--inline", function(a) { a.stopPropagation(), e.trigger("keypress", a), e._keyUpPrevented = a.isDefaultPrevented(); var b = a.which; if(b === c.BACKSPACE && "" === e.$search.val()) { var d = e.$searchContainer.prev(".select2-selection__choice"); if(d.length > 0) { var f = d.data("data");
									e.searchRemoveChoice(f), a.preventDefault() } } }); var f = document.documentMode,
							g = f && 11 >= f;
						this.$selection.on("input.searchcheck", ".select2-search--inline", function(a) { return g ? void e.$selection.off("input.search input.searchcheck") : void e.$selection.off("keyup.search") }), this.$selection.on("keyup.search input.search", ".select2-search--inline", function(a) { if(g && "input" === a.type) return void e.$selection.off("input.search input.searchcheck"); var b = a.which;
							b != c.SHIFT && b != c.CTRL && b != c.ALT && b != c.TAB && e.handleSearch(a) }) }, d.prototype._transferTabIndex = function(a) { this.$search.attr("tabindex", this.$selection.attr("tabindex")), this.$selection.attr("tabindex", "-1") }, d.prototype.createPlaceholder = function(a, b) { this.$search.attr("placeholder", b.text) }, d.prototype.update = function(a, b) { var c = this.$search[0] == document.activeElement;
						this.$search.attr("placeholder", ""), a.call(this, b), this.$selection.find(".select2-selection__rendered").append(this.$searchContainer), this.resizeSearch(), c && this.$search.focus() }, d.prototype.handleSearch = function() { if(this.resizeSearch(), !this._keyUpPrevented) { var a = this.$search.val();
							this.trigger("query", { term: a }) } this._keyUpPrevented = !1 }, d.prototype.searchRemoveChoice = function(a, b) { this.trigger("unselect", { data: b }), this.$search.val(b.text), this.handleSearch() }, d.prototype.resizeSearch = function() { this.$search.css("width", "25px"); var a = ""; if("" !== this.$search.attr("placeholder")) a = this.$selection.find(".select2-selection__rendered").innerWidth();
						else { var b = this.$search.val().length + 1;
							a = .75 * b + "em" } this.$search.css("width", a) }, d }), b.define("select2/selection/eventRelay", ["jquery"], function(a) {
					function b() {} return b.prototype.bind = function(b, c, d) { var e = this,
							f = ["open", "opening", "close", "closing", "select", "selecting", "unselect", "unselecting"],
							g = ["opening", "closing", "selecting", "unselecting"];
						b.call(this, c, d), c.on("*", function(b, c) { if(-1 !== a.inArray(b, f)) { c = c || {}; var d = a.Event("select2:" + b, { params: c });
								e.$element.trigger(d), -1 !== a.inArray(b, g) && (c.prevented = d.isDefaultPrevented()) } }) }, b }), b.define("select2/translation", ["jquery", "require"], function(a, b) {
					function c(a) { this.dict = a || {} } return c.prototype.all = function() { return this.dict }, c.prototype.get = function(a) { return this.dict[a] }, c.prototype.extend = function(b) { this.dict = a.extend({}, b.all(), this.dict) }, c._cache = {}, c.loadPath = function(a) { if(!(a in c._cache)) { var d = b(a);
							c._cache[a] = d } return new c(c._cache[a]) }, c }), b.define("select2/diacritics", [], function() { var a = { "Ⓐ": "A", "Ａ": "A", "À": "A", "Á": "A", "Â": "A", "Ầ": "A", "Ấ": "A", "Ẫ": "A", "Ẩ": "A", "Ã": "A", "Ā": "A", "Ă": "A", "Ằ": "A", "Ắ": "A", "Ẵ": "A", "Ẳ": "A", "Ȧ": "A", "Ǡ": "A", "Ä": "A", "Ǟ": "A", "Ả": "A", "Å": "A", "Ǻ": "A", "Ǎ": "A", "Ȁ": "A", "Ȃ": "A", "Ạ": "A", "Ậ": "A", "Ặ": "A", "Ḁ": "A", "Ą": "A", "Ⱥ": "A", "Ɐ": "A", "Ꜳ": "AA", "Æ": "AE", "Ǽ": "AE", "Ǣ": "AE", "Ꜵ": "AO", "Ꜷ": "AU", "Ꜹ": "AV", "Ꜻ": "AV", "Ꜽ": "AY", "Ⓑ": "B", "Ｂ": "B", "Ḃ": "B", "Ḅ": "B", "Ḇ": "B", "Ƀ": "B", "Ƃ": "B", "Ɓ": "B", "Ⓒ": "C", "Ｃ": "C", "Ć": "C", "Ĉ": "C", "Ċ": "C", "Č": "C", "Ç": "C", "Ḉ": "C", "Ƈ": "C", "Ȼ": "C", "Ꜿ": "C", "Ⓓ": "D", "Ｄ": "D", "Ḋ": "D", "Ď": "D", "Ḍ": "D", "Ḑ": "D", "Ḓ": "D", "Ḏ": "D", "Đ": "D", "Ƌ": "D", "Ɗ": "D", "Ɖ": "D", "Ꝺ": "D", "Ǳ": "DZ", "Ǆ": "DZ", "ǲ": "Dz", "ǅ": "Dz", "Ⓔ": "E", "Ｅ": "E", "È": "E", "É": "E", "Ê": "E", "Ề": "E", "Ế": "E", "Ễ": "E", "Ể": "E", "Ẽ": "E", "Ē": "E", "Ḕ": "E", "Ḗ": "E", "Ĕ": "E", "Ė": "E", "Ë": "E", "Ẻ": "E", "Ě": "E", "Ȅ": "E", "Ȇ": "E", "Ẹ": "E", "Ệ": "E", "Ȩ": "E", "Ḝ": "E", "Ę": "E", "Ḙ": "E", "Ḛ": "E", "Ɛ": "E", "Ǝ": "E", "Ⓕ": "F", "Ｆ": "F", "Ḟ": "F", "Ƒ": "F", "Ꝼ": "F", "Ⓖ": "G", "Ｇ": "G", "Ǵ": "G", "Ĝ": "G", "Ḡ": "G", "Ğ": "G", "Ġ": "G", "Ǧ": "G", "Ģ": "G", "Ǥ": "G", "Ɠ": "G", "Ꞡ": "G", "Ᵹ": "G", "Ꝿ": "G", "Ⓗ": "H", "Ｈ": "H", "Ĥ": "H", "Ḣ": "H", "Ḧ": "H", "Ȟ": "H", "Ḥ": "H", "Ḩ": "H", "Ḫ": "H", "Ħ": "H", "Ⱨ": "H", "Ⱶ": "H", "Ɥ": "H", "Ⓘ": "I", "Ｉ": "I", "Ì": "I", "Í": "I", "Î": "I", "Ĩ": "I", "Ī": "I", "Ĭ": "I", "İ": "I", "Ï": "I", "Ḯ": "I", "Ỉ": "I", "Ǐ": "I", "Ȉ": "I", "Ȋ": "I", "Ị": "I", "Į": "I", "Ḭ": "I", "Ɨ": "I", "Ⓙ": "J", "Ｊ": "J", "Ĵ": "J", "Ɉ": "J", "Ⓚ": "K", "Ｋ": "K", "Ḱ": "K", "Ǩ": "K", "Ḳ": "K", "Ķ": "K", "Ḵ": "K", "Ƙ": "K", "Ⱪ": "K", "Ꝁ": "K", "Ꝃ": "K", "Ꝅ": "K", "Ꞣ": "K", "Ⓛ": "L", "Ｌ": "L", "Ŀ": "L", "Ĺ": "L", "Ľ": "L", "Ḷ": "L", "Ḹ": "L", "Ļ": "L", "Ḽ": "L", "Ḻ": "L", "Ł": "L", "Ƚ": "L", "Ɫ": "L", "Ⱡ": "L", "Ꝉ": "L", "Ꝇ": "L", "Ꞁ": "L", "Ǉ": "LJ", "ǈ": "Lj", "Ⓜ": "M", "Ｍ": "M", "Ḿ": "M", "Ṁ": "M", "Ṃ": "M", "Ɱ": "M", "Ɯ": "M", "Ⓝ": "N", "Ｎ": "N", "Ǹ": "N", "Ń": "N", "Ñ": "N", "Ṅ": "N", "Ň": "N", "Ṇ": "N", "Ņ": "N", "Ṋ": "N", "Ṉ": "N", "Ƞ": "N", "Ɲ": "N", "Ꞑ": "N", "Ꞥ": "N", "Ǌ": "NJ", "ǋ": "Nj", "Ⓞ": "O", "Ｏ": "O", "Ò": "O", "Ó": "O", "Ô": "O", "Ồ": "O", "Ố": "O", "Ỗ": "O", "Ổ": "O", "Õ": "O", "Ṍ": "O", "Ȭ": "O", "Ṏ": "O", "Ō": "O", "Ṑ": "O", "Ṓ": "O", "Ŏ": "O", "Ȯ": "O", "Ȱ": "O", "Ö": "O", "Ȫ": "O", "Ỏ": "O", "Ő": "O", "Ǒ": "O", "Ȍ": "O", "Ȏ": "O", "Ơ": "O", "Ờ": "O", "Ớ": "O", "Ỡ": "O", "Ở": "O", "Ợ": "O", "Ọ": "O", "Ộ": "O", "Ǫ": "O", "Ǭ": "O", "Ø": "O", "Ǿ": "O", "Ɔ": "O", "Ɵ": "O", "Ꝋ": "O", "Ꝍ": "O", "Ƣ": "OI", "Ꝏ": "OO", "Ȣ": "OU", "Ⓟ": "P", "Ｐ": "P", "Ṕ": "P", "Ṗ": "P", "Ƥ": "P", "Ᵽ": "P", "Ꝑ": "P", "Ꝓ": "P", "Ꝕ": "P", "Ⓠ": "Q", "Ｑ": "Q", "Ꝗ": "Q", "Ꝙ": "Q", "Ɋ": "Q", "Ⓡ": "R", "Ｒ": "R", "Ŕ": "R", "Ṙ": "R", "Ř": "R", "Ȑ": "R", "Ȓ": "R", "Ṛ": "R", "Ṝ": "R", "Ŗ": "R", "Ṟ": "R", "Ɍ": "R", "Ɽ": "R", "Ꝛ": "R", "Ꞧ": "R", "Ꞃ": "R", "Ⓢ": "S", "Ｓ": "S", "ẞ": "S", "Ś": "S", "Ṥ": "S", "Ŝ": "S", "Ṡ": "S", "Š": "S", "Ṧ": "S", "Ṣ": "S", "Ṩ": "S", "Ș": "S", "Ş": "S", "Ȿ": "S", "Ꞩ": "S", "Ꞅ": "S", "Ⓣ": "T", "Ｔ": "T", "Ṫ": "T", "Ť": "T", "Ṭ": "T", "Ț": "T", "Ţ": "T", "Ṱ": "T", "Ṯ": "T", "Ŧ": "T", "Ƭ": "T", "Ʈ": "T", "Ⱦ": "T", "Ꞇ": "T", "Ꜩ": "TZ", "Ⓤ": "U", "Ｕ": "U", "Ù": "U", "Ú": "U", "Û": "U", "Ũ": "U", "Ṹ": "U", "Ū": "U", "Ṻ": "U", "Ŭ": "U", "Ü": "U", "Ǜ": "U", "Ǘ": "U", "Ǖ": "U", "Ǚ": "U", "Ủ": "U", "Ů": "U", "Ű": "U", "Ǔ": "U", "Ȕ": "U", "Ȗ": "U", "Ư": "U", "Ừ": "U", "Ứ": "U", "Ữ": "U", "Ử": "U", "Ự": "U", "Ụ": "U", "Ṳ": "U", "Ų": "U", "Ṷ": "U", "Ṵ": "U", "Ʉ": "U", "Ⓥ": "V", "Ｖ": "V", "Ṽ": "V", "Ṿ": "V", "Ʋ": "V", "Ꝟ": "V", "Ʌ": "V", "Ꝡ": "VY", "Ⓦ": "W", "Ｗ": "W", "Ẁ": "W", "Ẃ": "W", "Ŵ": "W", "Ẇ": "W", "Ẅ": "W", "Ẉ": "W", "Ⱳ": "W", "Ⓧ": "X", "Ｘ": "X", "Ẋ": "X", "Ẍ": "X", "Ⓨ": "Y", "Ｙ": "Y", "Ỳ": "Y", "Ý": "Y", "Ŷ": "Y", "Ỹ": "Y", "Ȳ": "Y", "Ẏ": "Y", "Ÿ": "Y", "Ỷ": "Y", "Ỵ": "Y", "Ƴ": "Y", "Ɏ": "Y", "Ỿ": "Y", "Ⓩ": "Z", "Ｚ": "Z", "Ź": "Z", "Ẑ": "Z", "Ż": "Z", "Ž": "Z", "Ẓ": "Z", "Ẕ": "Z", "Ƶ": "Z", "Ȥ": "Z", "Ɀ": "Z", "Ⱬ": "Z", "Ꝣ": "Z", "ⓐ": "a", "ａ": "a", "ẚ": "a", "à": "a", "á": "a", "â": "a", "ầ": "a", "ấ": "a", "ẫ": "a", "ẩ": "a", "ã": "a", "ā": "a", "ă": "a", "ằ": "a", "ắ": "a", "ẵ": "a", "ẳ": "a", "ȧ": "a", "ǡ": "a", "ä": "a", "ǟ": "a", "ả": "a", "å": "a", "ǻ": "a", "ǎ": "a", "ȁ": "a", "ȃ": "a", "ạ": "a", "ậ": "a", "ặ": "a", "ḁ": "a", "ą": "a", "ⱥ": "a", "ɐ": "a", "ꜳ": "aa", "æ": "ae", "ǽ": "ae", "ǣ": "ae", "ꜵ": "ao", "ꜷ": "au", "ꜹ": "av", "ꜻ": "av", "ꜽ": "ay", "ⓑ": "b", "ｂ": "b", "ḃ": "b", "ḅ": "b", "ḇ": "b", "ƀ": "b", "ƃ": "b", "ɓ": "b", "ⓒ": "c", "ｃ": "c", "ć": "c", "ĉ": "c", "ċ": "c", "č": "c", "ç": "c", "ḉ": "c", "ƈ": "c", "ȼ": "c", "ꜿ": "c", "ↄ": "c", "ⓓ": "d", "ｄ": "d", "ḋ": "d", "ď": "d", "ḍ": "d", "ḑ": "d", "ḓ": "d", "ḏ": "d", "đ": "d", "ƌ": "d", "ɖ": "d", "ɗ": "d", "ꝺ": "d", "ǳ": "dz", "ǆ": "dz", "ⓔ": "e", "ｅ": "e", "è": "e", "é": "e", "ê": "e", "ề": "e", "ế": "e", "ễ": "e", "ể": "e", "ẽ": "e", "ē": "e", "ḕ": "e", "ḗ": "e", "ĕ": "e", "ė": "e", "ë": "e", "ẻ": "e", "ě": "e", "ȅ": "e", "ȇ": "e", "ẹ": "e", "ệ": "e", "ȩ": "e", "ḝ": "e", "ę": "e", "ḙ": "e", "ḛ": "e", "ɇ": "e", "ɛ": "e", "ǝ": "e", "ⓕ": "f", "ｆ": "f", "ḟ": "f", "ƒ": "f", "ꝼ": "f", "ⓖ": "g", "ｇ": "g", "ǵ": "g", "ĝ": "g", "ḡ": "g", "ğ": "g", "ġ": "g", "ǧ": "g", "ģ": "g", "ǥ": "g", "ɠ": "g", "ꞡ": "g", "ᵹ": "g", "ꝿ": "g", "ⓗ": "h", "ｈ": "h", "ĥ": "h", "ḣ": "h", "ḧ": "h", "ȟ": "h", "ḥ": "h", "ḩ": "h", "ḫ": "h", "ẖ": "h", "ħ": "h", "ⱨ": "h", "ⱶ": "h", "ɥ": "h", "ƕ": "hv", "ⓘ": "i", "ｉ": "i", "ì": "i", "í": "i", "î": "i", "ĩ": "i", "ī": "i", "ĭ": "i", "ï": "i", "ḯ": "i", "ỉ": "i", "ǐ": "i", "ȉ": "i", "ȋ": "i", "ị": "i", "į": "i", "ḭ": "i", "ɨ": "i", "ı": "i", "ⓙ": "j", "ｊ": "j", "ĵ": "j", "ǰ": "j", "ɉ": "j", "ⓚ": "k", "ｋ": "k", "ḱ": "k", "ǩ": "k", "ḳ": "k", "ķ": "k", "ḵ": "k", "ƙ": "k", "ⱪ": "k", "ꝁ": "k", "ꝃ": "k", "ꝅ": "k", "ꞣ": "k", "ⓛ": "l", "ｌ": "l", "ŀ": "l", "ĺ": "l", "ľ": "l", "ḷ": "l", "ḹ": "l", "ļ": "l", "ḽ": "l", "ḻ": "l", "ſ": "l", "ł": "l", "ƚ": "l", "ɫ": "l", "ⱡ": "l", "ꝉ": "l", "ꞁ": "l", "ꝇ": "l", "ǉ": "lj", "ⓜ": "m", "ｍ": "m", "ḿ": "m", "ṁ": "m", "ṃ": "m", "ɱ": "m", "ɯ": "m", "ⓝ": "n", "ｎ": "n", "ǹ": "n", "ń": "n", "ñ": "n", "ṅ": "n", "ň": "n", "ṇ": "n", "ņ": "n", "ṋ": "n", "ṉ": "n", "ƞ": "n", "ɲ": "n", "ŉ": "n", "ꞑ": "n", "ꞥ": "n", "ǌ": "nj", "ⓞ": "o", "ｏ": "o", "ò": "o", "ó": "o", "ô": "o", "ồ": "o", "ố": "o", "ỗ": "o", "ổ": "o", "õ": "o", "ṍ": "o", "ȭ": "o", "ṏ": "o", "ō": "o", "ṑ": "o", "ṓ": "o", "ŏ": "o", "ȯ": "o", "ȱ": "o", "ö": "o", "ȫ": "o", "ỏ": "o", "ő": "o", "ǒ": "o", "ȍ": "o", "ȏ": "o", "ơ": "o", "ờ": "o", "ớ": "o", "ỡ": "o", "ở": "o", "ợ": "o", "ọ": "o", "ộ": "o", "ǫ": "o", "ǭ": "o", "ø": "o", "ǿ": "o", "ɔ": "o", "ꝋ": "o", "ꝍ": "o", "ɵ": "o", "ƣ": "oi", "ȣ": "ou", "ꝏ": "oo", "ⓟ": "p", "ｐ": "p", "ṕ": "p", "ṗ": "p", "ƥ": "p", "ᵽ": "p", "ꝑ": "p", "ꝓ": "p", "ꝕ": "p", "ⓠ": "q", "ｑ": "q", "ɋ": "q", "ꝗ": "q", "ꝙ": "q", "ⓡ": "r", "ｒ": "r", "ŕ": "r", "ṙ": "r", "ř": "r", "ȑ": "r", "ȓ": "r", "ṛ": "r", "ṝ": "r", "ŗ": "r", "ṟ": "r", "ɍ": "r", "ɽ": "r", "ꝛ": "r", "ꞧ": "r", "ꞃ": "r", "ⓢ": "s", "ｓ": "s", "ß": "s", "ś": "s", "ṥ": "s", "ŝ": "s", "ṡ": "s", "š": "s", "ṧ": "s", "ṣ": "s", "ṩ": "s", "ș": "s", "ş": "s", "ȿ": "s", "ꞩ": "s", "ꞅ": "s", "ẛ": "s", "ⓣ": "t", "ｔ": "t", "ṫ": "t", "ẗ": "t", "ť": "t", "ṭ": "t", "ț": "t", "ţ": "t", "ṱ": "t", "ṯ": "t", "ŧ": "t", "ƭ": "t", "ʈ": "t", "ⱦ": "t", "ꞇ": "t", "ꜩ": "tz", "ⓤ": "u", "ｕ": "u", "ù": "u", "ú": "u", "û": "u", "ũ": "u", "ṹ": "u", "ū": "u", "ṻ": "u", "ŭ": "u", "ü": "u", "ǜ": "u", "ǘ": "u", "ǖ": "u", "ǚ": "u", "ủ": "u", "ů": "u", "ű": "u", "ǔ": "u", "ȕ": "u", "ȗ": "u", "ư": "u", "ừ": "u", "ứ": "u", "ữ": "u", "ử": "u", "ự": "u", "ụ": "u", "ṳ": "u", "ų": "u", "ṷ": "u", "ṵ": "u", "ʉ": "u", "ⓥ": "v", "ｖ": "v", "ṽ": "v", "ṿ": "v", "ʋ": "v", "ꝟ": "v", "ʌ": "v", "ꝡ": "vy", "ⓦ": "w", "ｗ": "w", "ẁ": "w", "ẃ": "w", "ŵ": "w", "ẇ": "w", "ẅ": "w", "ẘ": "w", "ẉ": "w", "ⱳ": "w", "ⓧ": "x", "ｘ": "x", "ẋ": "x", "ẍ": "x", "ⓨ": "y", "ｙ": "y", "ỳ": "y", "ý": "y", "ŷ": "y", "ỹ": "y", "ȳ": "y", "ẏ": "y", "ÿ": "y", "ỷ": "y", "ẙ": "y", "ỵ": "y", "ƴ": "y", "ɏ": "y", "ỿ": "y", "ⓩ": "z", "ｚ": "z", "ź": "z", "ẑ": "z", "ż": "z", "ž": "z", "ẓ": "z", "ẕ": "z", "ƶ": "z", "ȥ": "z", "ɀ": "z", "ⱬ": "z", "ꝣ": "z", "Ά": "Α", "Έ": "Ε", "Ή": "Η", "Ί": "Ι", "Ϊ": "Ι", "Ό": "Ο", "Ύ": "Υ", "Ϋ": "Υ", "Ώ": "Ω", "ά": "α", "έ": "ε", "ή": "η", "ί": "ι", "ϊ": "ι", "ΐ": "ι", "ό": "ο", "ύ": "υ", "ϋ": "υ", "ΰ": "υ", "ω": "ω", "ς": "σ" }; return a }), b.define("select2/data/base", ["../utils"], function(a) {
					function b(a, c) { b.__super__.constructor.call(this) } return a.Extend(b, a.Observable), b.prototype.current = function(a) { throw new Error("The `current` method must be defined in child classes.") }, b.prototype.query = function(a, b) { throw new Error("The `query` method must be defined in child classes.") }, b.prototype.bind = function(a, b) {}, b.prototype.destroy = function() {}, b.prototype.generateResultId = function(b, c) { var d = b.id + "-result-"; return d += a.generateChars(4), d += null != c.id ? "-" + c.id.toString() : "-" + a.generateChars(4) }, b }), b.define("select2/data/select", ["./base", "../utils", "jquery"], function(a, b, c) {
					function d(a, b) { this.$element = a, this.options = b, d.__super__.constructor.call(this) }
					return b.Extend(d, a), d.prototype.current = function(a) { var b = [],
							d = this;
						this.$element.find(":selected").each(function() { var a = c(this),
								e = d.item(a);
							b.push(e) }), a(b) }, d.prototype.select = function(a) {
						var b = this;
						if(a.selected = !0, c(a.element).is("option")) return a.element.selected = !0, void this.$element.trigger("change");
						if(this.$element.prop("multiple")) this.current(function(d) { var e = [];
							a = [a], a.push.apply(a, d); for(var f = 0; f < a.length; f++) { var g = a[f].id; - 1 === c.inArray(g, e) && e.push(g) } b.$element.val(e), b.$element.trigger("change") });
						else { var d = a.id;
							this.$element.val(d), this.$element.trigger("change") }
					}, d.prototype.unselect = function(a) { var b = this; if(this.$element.prop("multiple")) return a.selected = !1, c(a.element).is("option") ? (a.element.selected = !1, void this.$element.trigger("change")) : void this.current(function(d) { for(var e = [], f = 0; f < d.length; f++) { var g = d[f].id;
								g !== a.id && -1 === c.inArray(g, e) && e.push(g) } b.$element.val(e), b.$element.trigger("change") }) }, d.prototype.bind = function(a, b) { var c = this;
						this.container = a, a.on("select", function(a) { c.select(a.data) }), a.on("unselect", function(a) { c.unselect(a.data) }) }, d.prototype.destroy = function() { this.$element.find("*").each(function() { c.removeData(this, "data") }) }, d.prototype.query = function(a, b) { var d = [],
							e = this,
							f = this.$element.children();
						f.each(function() { var b = c(this); if(b.is("option") || b.is("optgroup")) { var f = e.item(b),
									g = e.matches(a, f);
								null !== g && d.push(g) } }), b({ results: d }) }, d.prototype.addOptions = function(a) { b.appendMany(this.$element, a) }, d.prototype.option = function(a) { var b;
						a.children ? (b = document.createElement("optgroup"), b.label = a.text) : (b = document.createElement("option"), void 0 !== b.textContent ? b.textContent = a.text : b.innerText = a.text), a.id && (b.value = a.id), a.disabled && (b.disabled = !0), a.selected && (b.selected = !0), a.title && (b.title = a.title); var d = c(b),
							e = this._normalizeItem(a); return e.element = b, c.data(b, "data", e), d }, d.prototype.item = function(a) { var b = {}; if(b = c.data(a[0], "data"), null != b) return b; if(a.is("option")) b = { id: a.val(), text: a.text(), disabled: a.prop("disabled"), selected: a.prop("selected"), title: a.prop("title") };
						else if(a.is("optgroup")) { b = { text: a.prop("label"), children: [], title: a.prop("title") }; for(var d = a.children("option"), e = [], f = 0; f < d.length; f++) { var g = c(d[f]),
									h = this.item(g);
								e.push(h) } b.children = e } return b = this._normalizeItem(b), b.element = a[0], c.data(a[0], "data", b), b }, d.prototype._normalizeItem = function(a) { c.isPlainObject(a) || (a = { id: a, text: a }), a = c.extend({}, { text: "" }, a); var b = { selected: !1, disabled: !1 }; return null != a.id && (a.id = a.id.toString()), null != a.text && (a.text = a.text.toString()), null == a._resultId && a.id && null != this.container && (a._resultId = this.generateResultId(this.container, a)), c.extend({}, b, a) }, d.prototype.matches = function(a, b) { var c = this.options.get("matcher"); return c(a, b) }, d
				}), b.define("select2/data/array", ["./select", "../utils", "jquery"], function(a, b, c) {
					function d(a, b) { var c = b.get("data") || [];
						d.__super__.constructor.call(this, a, b), this.addOptions(this.convertToOptions(c)) } return b.Extend(d, a), d.prototype.select = function(a) { var b = this.$element.find("option").filter(function(b, c) { return c.value == a.id.toString() });
						0 === b.length && (b = this.option(a), this.addOptions(b)), d.__super__.select.call(this, a) }, d.prototype.convertToOptions = function(a) {
						function d(a) { return function() { return c(this).val() == a.id } } for(var e = this, f = this.$element.find("option"), g = f.map(function() { return e.item(c(this)).id }).get(), h = [], i = 0; i < a.length; i++) { var j = this._normalizeItem(a[i]); if(c.inArray(j.id, g) >= 0) { var k = f.filter(d(j)),
									l = this.item(k),
									m = c.extend(!0, {}, j, l),
									n = this.option(m);
								k.replaceWith(n) } else { var o = this.option(j); if(j.children) { var p = this.convertToOptions(j.children);
									b.appendMany(o, p) } h.push(o) } } return h }, d }), b.define("select2/data/ajax", ["./array", "../utils", "jquery"], function(a, b, c) {
					function d(a, b) { this.ajaxOptions = this._applyDefaults(b.get("ajax")), null != this.ajaxOptions.processResults && (this.processResults = this.ajaxOptions.processResults), d.__super__.constructor.call(this, a, b) } return b.Extend(d, a), d.prototype._applyDefaults = function(a) { var b = { data: function(a) { return c.extend({}, a, { q: a.term }) }, transport: function(a, b, d) { var e = c.ajax(a); return e.then(b), e.fail(d), e } }; return c.extend({}, b, a, !0) }, d.prototype.processResults = function(a) { return a }, d.prototype.query = function(a, b) {
						function d() { var d = f.transport(f, function(d) { var f = e.processResults(d, a);
								e.options.get("debug") && window.console && console.error && (f && f.results && c.isArray(f.results) || console.error("Select2: The AJAX results did not return an array in the `results` key of the response.")), b(f) }, function() { d.status && "0" === d.status || e.trigger("results:message", { message: "errorLoading" }) });
							e._request = d } var e = this;
						null != this._request && (c.isFunction(this._request.abort) && this._request.abort(), this._request = null); var f = c.extend({ type: "GET" }, this.ajaxOptions); "function" == typeof f.url && (f.url = f.url.call(this.$element, a)), "function" == typeof f.data && (f.data = f.data.call(this.$element, a)), this.ajaxOptions.delay && null != a.term ? (this._queryTimeout && window.clearTimeout(this._queryTimeout), this._queryTimeout = window.setTimeout(d, this.ajaxOptions.delay)) : d() }, d }), b.define("select2/data/tags", ["jquery"], function(a) {
					function b(b, c, d) { var e = d.get("tags"),
							f = d.get("createTag");
						void 0 !== f && (this.createTag = f); var g = d.get("insertTag"); if(void 0 !== g && (this.insertTag = g), b.call(this, c, d), a.isArray(e))
							for(var h = 0; h < e.length; h++) { var i = e[h],
									j = this._normalizeItem(i),
									k = this.option(j);
								this.$element.append(k) } } return b.prototype.query = function(a, b, c) {
						function d(a, f) { for(var g = a.results, h = 0; h < g.length; h++) { var i = g[h],
									j = null != i.children && !d({ results: i.children }, !0),
									k = i.text === b.term; if(k || j) return f ? !1 : (a.data = g, void c(a)) } if(f) return !0; var l = e.createTag(b); if(null != l) { var m = e.option(l);
								m.attr("data-select2-tag", !0), e.addOptions([m]), e.insertTag(g, l) } a.results = g, c(a) } var e = this; return this._removeOldTags(), null == b.term || null != b.page ? void a.call(this, b, c) : void a.call(this, b, d) }, b.prototype.createTag = function(b, c) { var d = a.trim(c.term); return "" === d ? null : { id: d, text: d } }, b.prototype.insertTag = function(a, b, c) { b.unshift(c) }, b.prototype._removeOldTags = function(b) { var c = (this._lastTag, this.$element.find("option[data-select2-tag]"));
						c.each(function() { this.selected || a(this).remove() }) }, b }), b.define("select2/data/tokenizer", ["jquery"], function(a) {
					function b(a, b, c) { var d = c.get("tokenizer");
						void 0 !== d && (this.tokenizer = d), a.call(this, b, c) } return b.prototype.bind = function(a, b, c) { a.call(this, b, c), this.$search = b.dropdown.$search || b.selection.$search || c.find(".select2-search__field") }, b.prototype.query = function(b, c, d) {
						function e(b) { var c = g._normalizeItem(b),
								d = g.$element.find("option").filter(function() { return a(this).val() === c.id }); if(!d.length) { var e = g.option(c);
								e.attr("data-select2-tag", !0), g._removeOldTags(), g.addOptions([e]) } f(c) }

						function f(a) { g.trigger("select", { data: a }) } var g = this;
						c.term = c.term || ""; var h = this.tokenizer(c, this.options, e);
						h.term !== c.term && (this.$search.length && (this.$search.val(h.term), this.$search.focus()), c.term = h.term), b.call(this, c, d) }, b.prototype.tokenizer = function(b, c, d, e) { for(var f = d.get("tokenSeparators") || [], g = c.term, h = 0, i = this.createTag || function(a) { return { id: a.term, text: a.term } }; h < g.length;) { var j = g[h]; if(-1 !== a.inArray(j, f)) { var k = g.substr(0, h),
									l = a.extend({}, c, { term: k }),
									m = i(l);
								null != m ? (e(m), g = g.substr(h + 1) || "", h = 0) : h++ } else h++ } return { term: g } }, b }), b.define("select2/data/minimumInputLength", [], function() {
					function a(a, b, c) { this.minimumInputLength = c.get("minimumInputLength"), a.call(this, b, c) } return a.prototype.query = function(a, b, c) { return b.term = b.term || "", b.term.length < this.minimumInputLength ? void this.trigger("results:message", { message: "inputTooShort", args: { minimum: this.minimumInputLength, input: b.term, params: b } }) : void a.call(this, b, c) }, a }), b.define("select2/data/maximumInputLength", [], function() {
					function a(a, b, c) { this.maximumInputLength = c.get("maximumInputLength"), a.call(this, b, c) } return a.prototype.query = function(a, b, c) { return b.term = b.term || "", this.maximumInputLength > 0 && b.term.length > this.maximumInputLength ? void this.trigger("results:message", { message: "inputTooLong", args: { maximum: this.maximumInputLength, input: b.term, params: b } }) : void a.call(this, b, c) }, a }), b.define("select2/data/maximumSelectionLength", [], function() {
					function a(a, b, c) { this.maximumSelectionLength = c.get("maximumSelectionLength"), a.call(this, b, c) } return a.prototype.query = function(a, b, c) { var d = this;
						this.current(function(e) { var f = null != e ? e.length : 0; return d.maximumSelectionLength > 0 && f >= d.maximumSelectionLength ? void d.trigger("results:message", { message: "maximumSelected", args: { maximum: d.maximumSelectionLength } }) : void a.call(d, b, c) }) }, a }), b.define("select2/dropdown", ["jquery", "./utils"], function(a, b) {
					function c(a, b) { this.$element = a, this.options = b, c.__super__.constructor.call(this) } return b.Extend(c, b.Observable), c.prototype.render = function() { var b = a('<span class="select2-dropdown"><span class="select2-results"></span></span>'); return b.attr("dir", this.options.get("dir")), this.$dropdown = b, b }, c.prototype.bind = function() {}, c.prototype.position = function(a, b) {}, c.prototype.destroy = function() { this.$dropdown.remove() }, c }), b.define("select2/dropdown/search", ["jquery", "../utils"], function(a, b) {
					function c() {} return c.prototype.render = function(b) { var c = b.call(this),
							d = a('<span class="select2-search select2-search--dropdown"><input class="select2-search__field" type="search" tabindex="-1" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox" /></span>'); return this.$searchContainer = d, this.$search = d.find("input"), c.prepend(d), c }, c.prototype.bind = function(b, c, d) { var e = this;
						b.call(this, c, d), this.$search.on("keydown", function(a) { e.trigger("keypress", a), e._keyUpPrevented = a.isDefaultPrevented() }), this.$search.on("input", function(b) { a(this).off("keyup") }), this.$search.on("keyup input", function(a) { e.handleSearch(a) }), c.on("open", function() { e.$search.attr("tabindex", 0), e.$search.focus(), window.setTimeout(function() { e.$search.focus() }, 0) }), c.on("close", function() { e.$search.attr("tabindex", -1), e.$search.val("") }), c.on("focus", function() { c.isOpen() && e.$search.focus() }), c.on("results:all", function(a) { if(null == a.query.term || "" === a.query.term) { var b = e.showSearch(a);
								b ? e.$searchContainer.removeClass("select2-search--hide") : e.$searchContainer.addClass("select2-search--hide") } }) }, c.prototype.handleSearch = function(a) { if(!this._keyUpPrevented) { var b = this.$search.val();
							this.trigger("query", { term: b }) } this._keyUpPrevented = !1 }, c.prototype.showSearch = function(a, b) { return !0 }, c }), b.define("select2/dropdown/hidePlaceholder", [], function() {
					function a(a, b, c, d) { this.placeholder = this.normalizePlaceholder(c.get("placeholder")), a.call(this, b, c, d) } return a.prototype.append = function(a, b) { b.results = this.removePlaceholder(b.results), a.call(this, b) }, a.prototype.normalizePlaceholder = function(a, b) { return "string" == typeof b && (b = { id: "", text: b }), b }, a.prototype.removePlaceholder = function(a, b) { for(var c = b.slice(0), d = b.length - 1; d >= 0; d--) { var e = b[d];
							this.placeholder.id === e.id && c.splice(d, 1) } return c }, a }), b.define("select2/dropdown/infiniteScroll", ["jquery"], function(a) {
					function b(a, b, c, d) { this.lastParams = {}, a.call(this, b, c, d), this.$loadingMore = this.createLoadingMore(), this.loading = !1 } return b.prototype.append = function(a, b) { this.$loadingMore.remove(), this.loading = !1, a.call(this, b), this.showLoadingMore(b) && this.$results.append(this.$loadingMore) }, b.prototype.bind = function(b, c, d) { var e = this;
						b.call(this, c, d), c.on("query", function(a) { e.lastParams = a, e.loading = !0 }), c.on("query:append", function(a) { e.lastParams = a, e.loading = !0 }), this.$results.on("scroll", function() { var b = a.contains(document.documentElement, e.$loadingMore[0]); if(!e.loading && b) { var c = e.$results.offset().top + e.$results.outerHeight(!1),
									d = e.$loadingMore.offset().top + e.$loadingMore.outerHeight(!1);
								c + 50 >= d && e.loadMore() } }) }, b.prototype.loadMore = function() { this.loading = !0; var b = a.extend({}, { page: 1 }, this.lastParams);
						b.page++, this.trigger("query:append", b) }, b.prototype.showLoadingMore = function(a, b) { return b.pagination && b.pagination.more }, b.prototype.createLoadingMore = function() { var b = a('<li class="select2-results__option select2-results__option--load-more"role="treeitem" aria-disabled="true"></li>'),
							c = this.options.get("translations").get("loadingMore"); return b.html(c(this.lastParams)), b }, b }), b.define("select2/dropdown/attachBody", ["jquery", "../utils"], function(a, b) {
					function c(b, c, d) { this.$dropdownParent = d.get("dropdownParent") || a(document.body), b.call(this, c, d) } return c.prototype.bind = function(a, b, c) { var d = this,
							e = !1;
						a.call(this, b, c), b.on("open", function() { d._showDropdown(), d._attachPositioningHandler(b), e || (e = !0, b.on("results:all", function() { d._positionDropdown(), d._resizeDropdown() }), b.on("results:append", function() { d._positionDropdown(), d._resizeDropdown() })) }), b.on("close", function() { d._hideDropdown(), d._detachPositioningHandler(b) }), this.$dropdownContainer.on("mousedown", function(a) { a.stopPropagation() }) }, c.prototype.destroy = function(a) { a.call(this), this.$dropdownContainer.remove() }, c.prototype.position = function(a, b, c) { b.attr("class", c.attr("class")), b.removeClass("select2"), b.addClass("select2-container--open"), b.css({ position: "absolute", top: -999999 }), this.$container = c }, c.prototype.render = function(b) { var c = a("<span></span>"),
							d = b.call(this); return c.append(d), this.$dropdownContainer = c, c }, c.prototype._hideDropdown = function(a) { this.$dropdownContainer.detach() }, c.prototype._attachPositioningHandler = function(c, d) { var e = this,
							f = "scroll.select2." + d.id,
							g = "resize.select2." + d.id,
							h = "orientationchange.select2." + d.id,
							i = this.$container.parents().filter(b.hasScroll);
						i.each(function() { a(this).data("select2-scroll-position", { x: a(this).scrollLeft(), y: a(this).scrollTop() }) }), i.on(f, function(b) { var c = a(this).data("select2-scroll-position");
							a(this).scrollTop(c.y) }), a(window).on(f + " " + g + " " + h, function(a) { e._positionDropdown(), e._resizeDropdown() }) }, c.prototype._detachPositioningHandler = function(c, d) { var e = "scroll.select2." + d.id,
							f = "resize.select2." + d.id,
							g = "orientationchange.select2." + d.id,
							h = this.$container.parents().filter(b.hasScroll);
						h.off(e), a(window).off(e + " " + f + " " + g) }, c.prototype._positionDropdown = function() { var b = a(window),
							c = this.$dropdown.hasClass("select2-dropdown--above"),
							d = this.$dropdown.hasClass("select2-dropdown--below"),
							e = null,
							f = this.$container.offset();
						f.bottom = f.top + this.$container.outerHeight(!1); var g = { height: this.$container.outerHeight(!1) };
						g.top = f.top, g.bottom = f.top + g.height; var h = { height: this.$dropdown.outerHeight(!1) },
							i = { top: b.scrollTop(), bottom: b.scrollTop() + b.height() },
							j = i.top < f.top - h.height,
							k = i.bottom > f.bottom + h.height,
							l = { left: f.left, top: g.bottom },
							m = this.$dropdownParent; "static" === m.css("position") && (m = m.offsetParent()); var n = m.offset();
						l.top -= n.top, l.left -= n.left, c || d || (e = "below"), k || !j || c ? !j && k && c && (e = "below") : e = "above", ("above" == e || c && "below" !== e) && (l.top = g.top - n.top - h.height), null != e && (this.$dropdown.removeClass("select2-dropdown--below select2-dropdown--above").addClass("select2-dropdown--" + e), this.$container.removeClass("select2-container--below select2-container--above").addClass("select2-container--" + e)), this.$dropdownContainer.css(l) }, c.prototype._resizeDropdown = function() { var a = { width: this.$container.outerWidth(!1) + "px" };
						this.options.get("dropdownAutoWidth") && (a.minWidth = a.width, a.position = "relative", a.width = "auto"), this.$dropdown.css(a) }, c.prototype._showDropdown = function(a) { this.$dropdownContainer.appendTo(this.$dropdownParent), this._positionDropdown(), this._resizeDropdown() }, c }), b.define("select2/dropdown/minimumResultsForSearch", [], function() {
					function a(b) { for(var c = 0, d = 0; d < b.length; d++) { var e = b[d];
							e.children ? c += a(e.children) : c++ } return c }

					function b(a, b, c, d) { this.minimumResultsForSearch = c.get("minimumResultsForSearch"), this.minimumResultsForSearch < 0 && (this.minimumResultsForSearch = 1 / 0), a.call(this, b, c, d) } return b.prototype.showSearch = function(b, c) { return a(c.data.results) < this.minimumResultsForSearch ? !1 : b.call(this, c) }, b }), b.define("select2/dropdown/selectOnClose", [], function() {
					function a() {} return a.prototype.bind = function(a, b, c) { var d = this;
						a.call(this, b, c), b.on("close", function(a) { d._handleSelectOnClose(a) }) }, a.prototype._handleSelectOnClose = function(a, b) { if(b && null != b.originalSelect2Event) { var c = b.originalSelect2Event; if("select" === c._type || "unselect" === c._type) return } var d = this.getHighlightedResults(); if(!(d.length < 1)) { var e = d.data("data");
							null != e.element && e.element.selected || null == e.element && e.selected || this.trigger("select", { data: e }) } }, a }), b.define("select2/dropdown/closeOnSelect", [], function() {
					function a() {} return a.prototype.bind = function(a, b, c) { var d = this;
						a.call(this, b, c), b.on("select", function(a) { d._selectTriggered(a) }), b.on("unselect", function(a) { d._selectTriggered(a) }) }, a.prototype._selectTriggered = function(a, b) { var c = b.originalEvent;
						c && c.ctrlKey || this.trigger("close", { originalEvent: c, originalSelect2Event: b }) }, a }), b.define("select2/i18n/en", [], function() { return { errorLoading: function() { return "The results could not be loaded." }, inputTooLong: function(a) { var b = a.input.length - a.maximum,
								c = "Please delete " + b + " character"; return 1 != b && (c += "s"), c }, inputTooShort: function(a) { var b = a.minimum - a.input.length,
								c = "Please enter " + b + " or more characters"; return c }, loadingMore: function() { return "Loading more results…" }, maximumSelected: function(a) { var b = "You can only select " + a.maximum + " item"; return 1 != a.maximum && (b += "s"), b }, noResults: function() { return "No results found" }, searching: function() { return "Searching…" } } }), b.define("select2/defaults", ["jquery", "require", "./results", "./selection/single", "./selection/multiple", "./selection/placeholder", "./selection/allowClear", "./selection/search", "./selection/eventRelay", "./utils", "./translation", "./diacritics", "./data/select", "./data/array", "./data/ajax", "./data/tags", "./data/tokenizer", "./data/minimumInputLength", "./data/maximumInputLength", "./data/maximumSelectionLength", "./dropdown", "./dropdown/search", "./dropdown/hidePlaceholder", "./dropdown/infiniteScroll", "./dropdown/attachBody", "./dropdown/minimumResultsForSearch", "./dropdown/selectOnClose", "./dropdown/closeOnSelect", "./i18n/en"], function(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C) {
					function D() { this.reset() } D.prototype.apply = function(l) { if(l = a.extend(!0, {}, this.defaults, l), null == l.dataAdapter) { if(null != l.ajax ? l.dataAdapter = o : null != l.data ? l.dataAdapter = n : l.dataAdapter = m, l.minimumInputLength > 0 && (l.dataAdapter = j.Decorate(l.dataAdapter, r)), l.maximumInputLength > 0 && (l.dataAdapter = j.Decorate(l.dataAdapter, s)), l.maximumSelectionLength > 0 && (l.dataAdapter = j.Decorate(l.dataAdapter, t)), l.tags && (l.dataAdapter = j.Decorate(l.dataAdapter, p)), (null != l.tokenSeparators || null != l.tokenizer) && (l.dataAdapter = j.Decorate(l.dataAdapter, q)), null != l.query) { var C = b(l.amdBase + "compat/query");
								l.dataAdapter = j.Decorate(l.dataAdapter, C) } if(null != l.initSelection) { var D = b(l.amdBase + "compat/initSelection");
								l.dataAdapter = j.Decorate(l.dataAdapter, D) } } if(null == l.resultsAdapter && (l.resultsAdapter = c, null != l.ajax && (l.resultsAdapter = j.Decorate(l.resultsAdapter, x)), null != l.placeholder && (l.resultsAdapter = j.Decorate(l.resultsAdapter, w)), l.selectOnClose && (l.resultsAdapter = j.Decorate(l.resultsAdapter, A))), null == l.dropdownAdapter) { if(l.multiple) l.dropdownAdapter = u;
							else { var E = j.Decorate(u, v);
								l.dropdownAdapter = E } if(0 !== l.minimumResultsForSearch && (l.dropdownAdapter = j.Decorate(l.dropdownAdapter, z)), l.closeOnSelect && (l.dropdownAdapter = j.Decorate(l.dropdownAdapter, B)), null != l.dropdownCssClass || null != l.dropdownCss || null != l.adaptDropdownCssClass) { var F = b(l.amdBase + "compat/dropdownCss");
								l.dropdownAdapter = j.Decorate(l.dropdownAdapter, F) } l.dropdownAdapter = j.Decorate(l.dropdownAdapter, y) } if(null == l.selectionAdapter) { if(l.multiple ? l.selectionAdapter = e : l.selectionAdapter = d, null != l.placeholder && (l.selectionAdapter = j.Decorate(l.selectionAdapter, f)), l.allowClear && (l.selectionAdapter = j.Decorate(l.selectionAdapter, g)), l.multiple && (l.selectionAdapter = j.Decorate(l.selectionAdapter, h)), null != l.containerCssClass || null != l.containerCss || null != l.adaptContainerCssClass) { var G = b(l.amdBase + "compat/containerCss");
								l.selectionAdapter = j.Decorate(l.selectionAdapter, G) } l.selectionAdapter = j.Decorate(l.selectionAdapter, i) } if("string" == typeof l.language)
							if(l.language.indexOf("-") > 0) { var H = l.language.split("-"),
									I = H[0];
								l.language = [l.language, I] } else l.language = [l.language]; if(a.isArray(l.language)) { var J = new k;
							l.language.push("en"); for(var K = l.language, L = 0; L < K.length; L++) { var M = K[L],
									N = {}; try { N = k.loadPath(M) } catch(O) { try { M = this.defaults.amdLanguageBase + M, N = k.loadPath(M) } catch(P) { l.debug && window.console && console.warn && console.warn('Select2: The language file for "' + M + '" could not be automatically loaded. A fallback will be used instead.'); continue } } J.extend(N) } l.translations = J } else { var Q = k.loadPath(this.defaults.amdLanguageBase + "en"),
								R = new k(l.language);
							R.extend(Q), l.translations = R } return l }, D.prototype.reset = function() {
						function b(a) {
							function b(a) { return l[a] || a } return a.replace(/[^\u0000-\u007E]/g, b) }

						function c(d, e) { if("" === a.trim(d.term)) return e; if(e.children && e.children.length > 0) { for(var f = a.extend(!0, {}, e), g = e.children.length - 1; g >= 0; g--) { var h = e.children[g],
										i = c(d, h);
									null == i && f.children.splice(g, 1) } return f.children.length > 0 ? f : c(d, f) } var j = b(e.text).toUpperCase(),
								k = b(d.term).toUpperCase(); return j.indexOf(k) > -1 ? e : null } this.defaults = { amdBase: "./", amdLanguageBase: "./i18n/", closeOnSelect: !0, debug: !1, dropdownAutoWidth: !1, escapeMarkup: j.escapeMarkup, language: C, matcher: c, minimumInputLength: 0, maximumInputLength: 0, maximumSelectionLength: 0, minimumResultsForSearch: 0, selectOnClose: !1, sorter: function(a) { return a }, templateResult: function(a) { return a.text }, templateSelection: function(a) { return a.text }, theme: "default", width: "resolve" } }, D.prototype.set = function(b, c) { var d = a.camelCase(b),
							e = {};
						e[d] = c; var f = j._convertData(e);
						a.extend(this.defaults, f) }; var E = new D; return E }), b.define("select2/options", ["require", "jquery", "./defaults", "./utils"], function(a, b, c, d) {
					function e(b, e) { if(this.options = b, null != e && this.fromElement(e), this.options = c.apply(this.options), e && e.is("input")) { var f = a(this.get("amdBase") + "compat/inputData");
							this.options.dataAdapter = d.Decorate(this.options.dataAdapter, f) } } return e.prototype.fromElement = function(a) { var c = ["select2"];
						null == this.options.multiple && (this.options.multiple = a.prop("multiple")), null == this.options.disabled && (this.options.disabled = a.prop("disabled")), null == this.options.language && (a.prop("lang") ? this.options.language = a.prop("lang").toLowerCase() : a.closest("[lang]").prop("lang") && (this.options.language = a.closest("[lang]").prop("lang"))), null == this.options.dir && (a.prop("dir") ? this.options.dir = a.prop("dir") : a.closest("[dir]").prop("dir") ? this.options.dir = a.closest("[dir]").prop("dir") : this.options.dir = "ltr"), a.prop("disabled", this.options.disabled), a.prop("multiple", this.options.multiple), a.data("select2Tags") && (this.options.debug && window.console && console.warn && console.warn('Select2: The `data-select2-tags` attribute has been changed to use the `data-data` and `data-tags="true"` attributes and will be removed in future versions of Select2.'), a.data("data", a.data("select2Tags")), a.data("tags", !0)), a.data("ajaxUrl") && (this.options.debug && window.console && console.warn && console.warn("Select2: The `data-ajax-url` attribute has been changed to `data-ajax--url` and support for the old attribute will be removed in future versions of Select2."), a.attr("ajax--url", a.data("ajaxUrl")), a.data("ajax--url", a.data("ajaxUrl"))); var e = {};
						e = b.fn.jquery && "1." == b.fn.jquery.substr(0, 2) && a[0].dataset ? b.extend(!0, {}, a[0].dataset, a.data()) : a.data(); var f = b.extend(!0, {}, e);
						f = d._convertData(f); for(var g in f) b.inArray(g, c) > -1 || (b.isPlainObject(this.options[g]) ? b.extend(this.options[g], f[g]) : this.options[g] = f[g]); return this }, e.prototype.get = function(a) { return this.options[a] }, e.prototype.set = function(a, b) { this.options[a] = b }, e }), b.define("select2/core", ["jquery", "./options", "./utils", "./keys"], function(a, b, c, d) {
					var e = function(a, c) { null != a.data("select2") && a.data("select2").destroy(), this.$element = a, this.id = this._generateId(a), c = c || {}, this.options = new b(c, a), e.__super__.constructor.call(this); var d = a.attr("tabindex") || 0;
						a.data("old-tabindex", d), a.attr("tabindex", "-1"); var f = this.options.get("dataAdapter");
						this.dataAdapter = new f(a, this.options); var g = this.render();
						this._placeContainer(g); var h = this.options.get("selectionAdapter");
						this.selection = new h(a, this.options), this.$selection = this.selection.render(), this.selection.position(this.$selection, g); var i = this.options.get("dropdownAdapter");
						this.dropdown = new i(a, this.options), this.$dropdown = this.dropdown.render(), this.dropdown.position(this.$dropdown, g); var j = this.options.get("resultsAdapter");
						this.results = new j(a, this.options, this.dataAdapter), this.$results = this.results.render(), this.results.position(this.$results, this.$dropdown); var k = this;
						this._bindAdapters(), this._registerDomEvents(), this._registerDataEvents(), this._registerSelectionEvents(), this._registerDropdownEvents(), this._registerResultsEvents(), this._registerEvents(), this.dataAdapter.current(function(a) { k.trigger("selection:update", { data: a }) }), a.addClass("select2-hidden-accessible"), a.attr("aria-hidden", "true"), this._syncAttributes(), a.data("select2", this) };
					return c.Extend(e, c.Observable), e.prototype._generateId = function(a) { var b = ""; return b = null != a.attr("id") ? a.attr("id") : null != a.attr("name") ? a.attr("name") + "-" + c.generateChars(2) : c.generateChars(4), b = b.replace(/(:|\.|\[|\]|,)/g, ""), b = "select2-" + b }, e.prototype._placeContainer = function(a) { a.insertAfter(this.$element); var b = this._resolveWidth(this.$element, this.options.get("width"));
						null != b && a.css("width", b) }, e.prototype._resolveWidth = function(a, b) { var c = /^width:(([-+]?([0-9]*\.)?[0-9]+)(px|em|ex|%|in|cm|mm|pt|pc))/i; if("resolve" == b) { var d = this._resolveWidth(a, "style"); return null != d ? d : this._resolveWidth(a, "element") } if("element" == b) { var e = a.outerWidth(!1); return 0 >= e ? "auto" : e + "px" } if("style" == b) { var f = a.attr("style"); if("string" != typeof f) return null; for(var g = f.split(";"), h = 0, i = g.length; i > h; h += 1) { var j = g[h].replace(/\s/g, ""),
									k = j.match(c); if(null !== k && k.length >= 1) return k[1] } return null } return b }, e.prototype._bindAdapters = function() { this.dataAdapter.bind(this, this.$container), this.selection.bind(this, this.$container), this.dropdown.bind(this, this.$container), this.results.bind(this, this.$container) }, e.prototype._registerDomEvents = function() { var b = this;
						this.$element.on("change.select2", function() { b.dataAdapter.current(function(a) { b.trigger("selection:update", { data: a }) }) }), this.$element.on("focus.select2", function(a) { b.trigger("focus", a) }), this._syncA = c.bind(this._syncAttributes, this), this._syncS = c.bind(this._syncSubtree, this), this.$element[0].attachEvent && this.$element[0].attachEvent("onpropertychange", this._syncA); var d = window.MutationObserver || window.WebKitMutationObserver || window.MozMutationObserver;
						null != d ? (this._observer = new d(function(c) { a.each(c, b._syncA), a.each(c, b._syncS) }), this._observer.observe(this.$element[0], { attributes: !0, childList: !0, subtree: !1 })) : this.$element[0].addEventListener && (this.$element[0].addEventListener("DOMAttrModified", b._syncA, !1), this.$element[0].addEventListener("DOMNodeInserted", b._syncS, !1), this.$element[0].addEventListener("DOMNodeRemoved", b._syncS, !1)) }, e.prototype._registerDataEvents = function() { var a = this;
						this.dataAdapter.on("*", function(b, c) { a.trigger(b, c) }) }, e.prototype._registerSelectionEvents = function() { var b = this,
							c = ["toggle", "focus"];
						this.selection.on("toggle", function() { b.toggleDropdown() }), this.selection.on("focus", function(a) { b.focus(a) }), this.selection.on("*", function(d, e) {-1 === a.inArray(d, c) && b.trigger(d, e) }) }, e.prototype._registerDropdownEvents = function() { var a = this;
						this.dropdown.on("*", function(b, c) { a.trigger(b, c) }) }, e.prototype._registerResultsEvents = function() { var a = this;
						this.results.on("*", function(b, c) { a.trigger(b, c) }) }, e.prototype._registerEvents = function() { var a = this;
						this.on("open", function() { a.$container.addClass("select2-container--open") }), this.on("close", function() { a.$container.removeClass("select2-container--open") }), this.on("enable", function() { a.$container.removeClass("select2-container--disabled") }), this.on("disable", function() { a.$container.addClass("select2-container--disabled") }), this.on("blur", function() { a.$container.removeClass("select2-container--focus") }), this.on("query", function(b) { a.isOpen() || a.trigger("open", {}), this.dataAdapter.query(b, function(c) { a.trigger("results:all", { data: c, query: b }) }) }), this.on("query:append", function(b) { this.dataAdapter.query(b, function(c) { a.trigger("results:append", { data: c, query: b }) }) }), this.on("keypress", function(b) { var c = b.which;
							a.isOpen() ? c === d.ESC || c === d.TAB || c === d.UP && b.altKey ? (a.close(), b.preventDefault()) : c === d.ENTER ? (a.trigger("results:select", {}), b.preventDefault()) : c === d.SPACE && b.ctrlKey ? (a.trigger("results:toggle", {}), b.preventDefault()) : c === d.UP ? (a.trigger("results:previous", {}), b.preventDefault()) : c === d.DOWN && (a.trigger("results:next", {}), b.preventDefault()) : (c === d.ENTER || c === d.SPACE || c === d.DOWN && b.altKey) && (a.open(), b.preventDefault()) }) }, e.prototype._syncAttributes = function() { this.options.set("disabled", this.$element.prop("disabled")), this.options.get("disabled") ? (this.isOpen() && this.close(), this.trigger("disable", {})) : this.trigger("enable", {}) }, e.prototype._syncSubtree = function(a, b) { var c = !1,
							d = this; if(!a || !a.target || "OPTION" === a.target.nodeName || "OPTGROUP" === a.target.nodeName) { if(b)
								if(b.addedNodes && b.addedNodes.length > 0)
									for(var e = 0; e < b.addedNodes.length; e++) { var f = b.addedNodes[e];
										f.selected && (c = !0) } else b.removedNodes && b.removedNodes.length > 0 && (c = !0);
								else c = !0;
							c && this.dataAdapter.current(function(a) { d.trigger("selection:update", { data: a }) }) } }, e.prototype.trigger = function(a, b) { var c = e.__super__.trigger,
							d = { open: "opening", close: "closing", select: "selecting", unselect: "unselecting" }; if(void 0 === b && (b = {}), a in d) { var f = d[a],
								g = { prevented: !1, name: a, args: b }; if(c.call(this, f, g), g.prevented) return void(b.prevented = !0) } c.call(this, a, b) }, e.prototype.toggleDropdown = function() { this.options.get("disabled") || (this.isOpen() ? this.close() : this.open()) }, e.prototype.open = function() { this.isOpen() || this.trigger("query", {}) }, e.prototype.close = function() { this.isOpen() && this.trigger("close", {}) }, e.prototype.isOpen = function() { return this.$container.hasClass("select2-container--open") }, e.prototype.hasFocus = function() { return this.$container.hasClass("select2-container--focus") }, e.prototype.focus = function(a) { this.hasFocus() || (this.$container.addClass("select2-container--focus"), this.trigger("focus", {})) }, e.prototype.enable = function(a) { this.options.get("debug") && window.console && console.warn && console.warn('Select2: The `select2("enable")` method has been deprecated and will be removed in later Select2 versions. Use $element.prop("disabled") instead.'), (null == a || 0 === a.length) && (a = [!0]); var b = !a[0];
						this.$element.prop("disabled", b) }, e.prototype.data = function() { this.options.get("debug") && arguments.length > 0 && window.console && console.warn && console.warn('Select2: Data can no longer be set using `select2("data")`. You should consider setting the value instead using `$element.val()`.'); var a = []; return this.dataAdapter.current(function(b) { a = b }), a }, e.prototype.val = function(b) { if(this.options.get("debug") && window.console && console.warn && console.warn('Select2: The `select2("val")` method has been deprecated and will be removed in later Select2 versions. Use $element.val() instead.'), null == b || 0 === b.length) return this.$element.val(); var c = b[0];
						a.isArray(c) && (c = a.map(c, function(a) { return a.toString() })), this.$element.val(c).trigger("change") }, e.prototype.destroy = function() {
						this.$container.remove(), this.$element[0].detachEvent && this.$element[0].detachEvent("onpropertychange", this._syncA), null != this._observer ? (this._observer.disconnect(), this._observer = null) : this.$element[0].removeEventListener && (this.$element[0].removeEventListener("DOMAttrModified", this._syncA, !1), this.$element[0].removeEventListener("DOMNodeInserted", this._syncS, !1), this.$element[0].removeEventListener("DOMNodeRemoved", this._syncS, !1)), this._syncA = null, this._syncS = null, this.$element.off(".select2"), this.$element.attr("tabindex", this.$element.data("old-tabindex")), this.$element.removeClass("select2-hidden-accessible"), this.$element.attr("aria-hidden", "false"), this.$element.removeData("select2"), this.dataAdapter.destroy(), this.selection.destroy(), this.dropdown.destroy(), this.results.destroy(), this.dataAdapter = null, this.selection = null, this.dropdown = null, this.results = null;
					}, e.prototype.render = function() { var b = a('<span class="select2 select2-container"><span class="selection"></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>'); return b.attr("dir", this.options.get("dir")), this.$container = b, this.$container.addClass("select2-container--" + this.options.get("theme")), b.data("element", this.$element), b }, e
				}), b.define("select2/compat/utils", ["jquery"], function(a) {
					function b(b, c, d) { var e, f, g = [];
						e = a.trim(b.attr("class")), e && (e = "" + e, a(e.split(/\s+/)).each(function() { 0 === this.indexOf("select2-") && g.push(this) })), e = a.trim(c.attr("class")), e && (e = "" + e, a(e.split(/\s+/)).each(function() { 0 !== this.indexOf("select2-") && (f = d(this), null != f && g.push(f)) })), b.attr("class", g.join(" ")) } return { syncCssClasses: b } }), b.define("select2/compat/containerCss", ["jquery", "./utils"], function(a, b) {
					function c(a) { return null }

					function d() {} return d.prototype.render = function(d) { var e = d.call(this),
							f = this.options.get("containerCssClass") || "";
						a.isFunction(f) && (f = f(this.$element)); var g = this.options.get("adaptContainerCssClass"); if(g = g || c, -1 !== f.indexOf(":all:")) { f = f.replace(":all:", ""); var h = g;
							g = function(a) { var b = h(a); return null != b ? b + " " + a : a } } var i = this.options.get("containerCss") || {}; return a.isFunction(i) && (i = i(this.$element)), b.syncCssClasses(e, this.$element, g), e.css(i), e.addClass(f), e }, d }), b.define("select2/compat/dropdownCss", ["jquery", "./utils"], function(a, b) {
					function c(a) { return null }

					function d() {} return d.prototype.render = function(d) { var e = d.call(this),
							f = this.options.get("dropdownCssClass") || "";
						a.isFunction(f) && (f = f(this.$element)); var g = this.options.get("adaptDropdownCssClass"); if(g = g || c, -1 !== f.indexOf(":all:")) { f = f.replace(":all:", ""); var h = g;
							g = function(a) { var b = h(a); return null != b ? b + " " + a : a } } var i = this.options.get("dropdownCss") || {}; return a.isFunction(i) && (i = i(this.$element)), b.syncCssClasses(e, this.$element, g), e.css(i), e.addClass(f), e }, d }), b.define("select2/compat/initSelection", ["jquery"], function(a) {
					function b(a, b, c) { c.get("debug") && window.console && console.warn && console.warn("Select2: The `initSelection` option has been deprecated in favor of a custom data adapter that overrides the `current` method. This method is now called multiple times instead of a single time when the instance is initialized. Support will be removed for the `initSelection` option in future versions of Select2"), this.initSelection = c.get("initSelection"), this._isInitialized = !1, a.call(this, b, c) } return b.prototype.current = function(b, c) { var d = this; return this._isInitialized ? void b.call(this, c) : void this.initSelection.call(null, this.$element, function(b) { d._isInitialized = !0, a.isArray(b) || (b = [b]), c(b) }) }, b }), b.define("select2/compat/inputData", ["jquery"], function(a) {
					function b(a, b, c) { this._currentData = [], this._valueSeparator = c.get("valueSeparator") || ",", "hidden" === b.prop("type") && c.get("debug") && console && console.warn && console.warn("Select2: Using a hidden input with Select2 is no longer supported and may stop working in the future. It is recommended to use a `<select>` element instead."), a.call(this, b, c) } return b.prototype.current = function(b, c) {
						function d(b, c) { var e = []; return b.selected || -1 !== a.inArray(b.id, c) ? (b.selected = !0, e.push(b)) : b.selected = !1, b.children && e.push.apply(e, d(b.children, c)), e } for(var e = [], f = 0; f < this._currentData.length; f++) { var g = this._currentData[f];
							e.push.apply(e, d(g, this.$element.val().split(this._valueSeparator))) } c(e) }, b.prototype.select = function(b, c) { if(this.options.get("multiple")) { var d = this.$element.val();
							d += this._valueSeparator + c.id, this.$element.val(d), this.$element.trigger("change") } else this.current(function(b) { a.map(b, function(a) { a.selected = !1 }) }), this.$element.val(c.id), this.$element.trigger("change") }, b.prototype.unselect = function(a, b) { var c = this;
						b.selected = !1, this.current(function(a) { for(var d = [], e = 0; e < a.length; e++) { var f = a[e];
								b.id != f.id && d.push(f.id) } c.$element.val(d.join(c._valueSeparator)), c.$element.trigger("change") }) }, b.prototype.query = function(a, b, c) { for(var d = [], e = 0; e < this._currentData.length; e++) { var f = this._currentData[e],
								g = this.matches(b, f);
							null !== g && d.push(g) } c({ results: d }) }, b.prototype.addOptions = function(b, c) { var d = a.map(c, function(b) { return a.data(b[0], "data") });
						this._currentData.push.apply(this._currentData, d) }, b }), b.define("select2/compat/matcher", ["jquery"], function(a) {
					function b(b) {
						function c(c, d) { var e = a.extend(!0, {}, d); if(null == c.term || "" === a.trim(c.term)) return e; if(d.children) { for(var f = d.children.length - 1; f >= 0; f--) { var g = d.children[f],
										h = b(c.term, g.text, g);
									h || e.children.splice(f, 1) } if(e.children.length > 0) return e } return b(c.term, d.text, d) ? e : null } return c } return b }), b.define("select2/compat/query", [], function() {
					function a(a, b, c) { c.get("debug") && window.console && console.warn && console.warn("Select2: The `query` option has been deprecated in favor of a custom data adapter that overrides the `query` method. Support will be removed for the `query` option in future versions of Select2."), a.call(this, b, c) } return a.prototype.query = function(a, b, c) { b.callback = c; var d = this.options.get("query");
						d.call(null, b) }, a }), b.define("select2/dropdown/attachContainer", [], function() {
					function a(a, b, c) { a.call(this, b, c) } return a.prototype.position = function(a, b, c) { var d = c.find(".dropdown-wrapper");
						d.append(b), b.addClass("select2-dropdown--below"), c.addClass("select2-container--below") }, a }), b.define("select2/dropdown/stopPropagation", [], function() {
					function a() {} return a.prototype.bind = function(a, b, c) { a.call(this, b, c); var d = ["blur", "change", "click", "dblclick", "focus", "focusin", "focusout", "input", "keydown", "keyup", "keypress", "mousedown", "mouseenter", "mouseleave", "mousemove", "mouseover", "mouseup", "search", "touchend", "touchstart"];
						this.$dropdown.on(d.join(" "), function(a) { a.stopPropagation() }) }, a }), b.define("select2/selection/stopPropagation", [], function() {
					function a() {} return a.prototype.bind = function(a, b, c) { a.call(this, b, c); var d = ["blur", "change", "click", "dblclick", "focus", "focusin", "focusout", "input", "keydown", "keyup", "keypress", "mousedown", "mouseenter", "mouseleave", "mousemove", "mouseover", "mouseup", "search", "touchend", "touchstart"];
						this.$selection.on(d.join(" "), function(a) { a.stopPropagation() }) }, a }),
				function(c) { "function" == typeof b.define && b.define.amd ? b.define("jquery-mousewheel", ["jquery"], c) : "object" == typeof exports ? module.exports = c : c(a) }(function(a) {
					function b(b) { var g = b || window.event,
							h = i.call(arguments, 1),
							j = 0,
							l = 0,
							m = 0,
							n = 0,
							o = 0,
							p = 0; if(b = a.event.fix(g), b.type = "mousewheel", "detail" in g && (m = -1 * g.detail), "wheelDelta" in g && (m = g.wheelDelta), "wheelDeltaY" in g && (m = g.wheelDeltaY), "wheelDeltaX" in g && (l = -1 * g.wheelDeltaX), "axis" in g && g.axis === g.HORIZONTAL_AXIS && (l = -1 * m, m = 0), j = 0 === m ? l : m, "deltaY" in g && (m = -1 * g.deltaY, j = m), "deltaX" in g && (l = g.deltaX, 0 === m && (j = -1 * l)), 0 !== m || 0 !== l) { if(1 === g.deltaMode) { var q = a.data(this, "mousewheel-line-height");
								j *= q, m *= q, l *= q } else if(2 === g.deltaMode) { var r = a.data(this, "mousewheel-page-height");
								j *= r, m *= r, l *= r } if(n = Math.max(Math.abs(m), Math.abs(l)), (!f || f > n) && (f = n, d(g, n) && (f /= 40)), d(g, n) && (j /= 40, l /= 40, m /= 40), j = Math[j >= 1 ? "floor" : "ceil"](j / f), l = Math[l >= 1 ? "floor" : "ceil"](l / f), m = Math[m >= 1 ? "floor" : "ceil"](m / f), k.settings.normalizeOffset && this.getBoundingClientRect) { var s = this.getBoundingClientRect();
								o = b.clientX - s.left, p = b.clientY - s.top } return b.deltaX = l, b.deltaY = m, b.deltaFactor = f, b.offsetX = o, b.offsetY = p, b.deltaMode = 0, h.unshift(b, j, l, m), e && clearTimeout(e), e = setTimeout(c, 200), (a.event.dispatch || a.event.handle).apply(this, h) } }

					function c() { f = null }

					function d(a, b) { return k.settings.adjustOldDeltas && "mousewheel" === a.type && b % 120 === 0 } var e, f, g = ["wheel", "mousewheel", "DOMMouseScroll", "MozMousePixelScroll"],
						h = "onwheel" in document || document.documentMode >= 9 ? ["wheel"] : ["mousewheel", "DomMouseScroll", "MozMousePixelScroll"],
						i = Array.prototype.slice; if(a.event.fixHooks)
						for(var j = g.length; j;) a.event.fixHooks[g[--j]] = a.event.mouseHooks; var k = a.event.special.mousewheel = { version: "3.1.12", setup: function() { if(this.addEventListener)
								for(var c = h.length; c;) this.addEventListener(h[--c], b, !1);
							else this.onmousewheel = b;
							a.data(this, "mousewheel-line-height", k.getLineHeight(this)), a.data(this, "mousewheel-page-height", k.getPageHeight(this)) }, teardown: function() { if(this.removeEventListener)
								for(var c = h.length; c;) this.removeEventListener(h[--c], b, !1);
							else this.onmousewheel = null;
							a.removeData(this, "mousewheel-line-height"), a.removeData(this, "mousewheel-page-height") }, getLineHeight: function(b) { var c = a(b),
								d = c["offsetParent" in a.fn ? "offsetParent" : "parent"](); return d.length || (d = a("body")), parseInt(d.css("fontSize"), 10) || parseInt(c.css("fontSize"), 10) || 16 }, getPageHeight: function(b) { return a(b).height() }, settings: { adjustOldDeltas: !0, normalizeOffset: !0 } };
					a.fn.extend({ mousewheel: function(a) { return a ? this.bind("mousewheel", a) : this.trigger("mousewheel") }, unmousewheel: function(a) { return this.unbind("mousewheel", a) } }) }), b.define("jquery.select2", ["jquery", "jquery-mousewheel", "./select2/core", "./select2/defaults"], function(a, b, c, d) { if(null == a.fn.select2) { var e = ["open", "close", "destroy"];
						a.fn.select2 = function(b) { if(b = b || {}, "object" == typeof b) return this.each(function() { var d = a.extend(!0, {}, b);
								new c(a(this), d) }), this; if("string" == typeof b) { var d, f = Array.prototype.slice.call(arguments, 1); return this.each(function() { var c = a(this).data("select2");
									null == c && window.console && console.error && console.error("The select2('" + b + "') method was called on an element that is not using Select2."), d = c[b].apply(c, f) }), a.inArray(b, e) > -1 ? this : d } throw new Error("Invalid arguments for Select2: " + b) } } return null == a.fn.select2.defaults && (a.fn.select2.defaults = d), c }), { define: b.define, require: b.require }
		}(),
		c = b.require("jquery.select2");
	return a.fn.select2.amd = b, c
});

/*!
 * jQuery EasyTree Plugin
 * http://www.EasyJsTree.com
 *
 * Copyright 2014 Matthew Rand
 * Released under the MIT license
 * V1.0.1
 */
(function($) { $.fn.easytree = function(a) { var b = this; var c = new F(b, a); return c }; var F = function(z, A) { var B = { allowActivate: true, data: null, dataUrl: null, dataUrlJson: null, disableIcons: false, enableDnd: false, ordering: null, slidingTime: 100, minOpenLevels: 0, building: null, built: null, toggling: null, toggled: null, opening: null, opened: null, openLazyNode: null, closing: null, closed: null, canDrop: null, dropping: null, dropped: null, stateChanged: null }; var C; var D = null; var E = new Object();
		this.init = function(b, c) { B = $.extend(B, c);
			init();
			C = b; var d = ''; if(B.dataUrl) { ajaxService(B.dataUrl, B.dataUrlJson, function(a) { d = convertInputDataToJson(a); if(!d) {} buildTree(d); return this }) } else if(B.data) { d = convertInputDataToJson(B.data); if(!d) { } buildTree(d) } else { d = convertInputDataToJson(C.html()); if(!d) { } buildTree(d) } return this };
		this.options = B;
		this.rebuildTree = function(a) { var b = a ? convertInputDataToJson(a) : D; if(!b) {  } buildTree(b) };
		this.getAllNodes = function() { return D };
		this.getNode = function(a) { return getNode(D, a) };
		this.addNode = function(a, b) { if(!b) { D.push(a); return } var c = getNode(D, b); if(!a) { return } if(!c.children) { c.children = [] } c.children.push(a) };
		this.removeNode = function(a) { removeNode(D, a) };
		this.activateNode = function(a) { unactivateAll(D); if(!B.allowActivate) { return } var b = getNode(D, a); if(!b) { return } b.isActive = true;
			$('#' + b.id).addClass('easytree-active') };
		this.toggleNode = function(a) { var b = getNode(D, a); if(!b) { return } toggleNodeBegin(event, D, b) };

		function nodeClick(a) { var b = getElementId(this); var c = a.data; var d = getNode(c, b); if(!d) { return } unactivateAll(c); if(!B.allowActivate) { return } d.isActive = true;
			$('#' + d.id).addClass('easytree-active'); if(B.stateChanged) { var j = getMinifiedJson(c);
				B.stateChanged(c, j) } }

		function toggleNodeEvt(a) { var b = getElementId(this); var c = a.data; var d = getNode(c, b); if(!d) { return } toggleNodeBegin(a, c, d) }

		function toggleNodeBegin(c, d, e) { var f = ''; if(B.toggling) { f = B.toggling(c, d, e); if(f === false) { return false } } if(e.isExpanded) { if(B.closing) { f = B.closing(c, d, e); if(f === false) { return false } } } else { if(B.opening) { f = B.opening(c, d, e); if(f === false) { return false } } } if(e.isLazy && !e.isExpanded) { var g = e.children && e.children.length > 0;
				f = true; if(B.openLazyNode) { f = B.openLazyNode(c, d, e, g) } if(e.lazyUrl && f !== false) { ajaxService(e.lazyUrl, e.lazyUrlJson, function(a) { if(a.d) { a = a.d } var b = convertInputDataToJson(a); if($.isArray(b)) { e.children = b } else { e.children = [];
							e.children.push(b) } buildTree(d);
						toggleNodeEnd(c, d, e) }); return false } } toggleNodeEnd(c, d, e) }

		function toggleNodeEnd(a, b, c) { if(c.isExpanded) { openCloseNode(b, c.id, "close");
				renderNode(c, "close"); if(B.closed) { B.closed(a, b, c) } } else { openCloseNode(b, c.id, "open");
				renderNode(c, "open"); if(B.opened) { B.opened(a, b, c) } } if(B.toggled) { var d = B.toggled(a, b, c) } }

		function dragStart(a) { if(!B.enableDnd) { return } var b = a.target; while(b) { if(b.className.indexOf("easytree-draggable") > -1) { break } b = b.parentElement } if(!b) { return } unsourceAll(D);
			unactivateAll(D);
			$('#' + b.id).addClass('easytree-drag-source');
			resetDnd(E);
			E.createClone = !(b.className.indexOf("easytree-no-clone") > -1);
			E.dragok = true;
			E.sourceEl = b;
			E.sourceId = b.id;
			E.sourceNode = getNode(D, E.sourceId); return false }

		function drag(a) { if(!E.dragok) { return } if(!B.enableDnd) { return } if(E.createClone) { if(!E.clone) { E.clone = createClone(E.sourceEl);
					$(E.clone).appendTo('body') } E.clone.style.left = (a.pageX + 5) + "px";
				E.clone.style.top = (a.pageY) + "px" } var b = getDroppableTargetEl(a.clientX, a.clientY); if(!b) { hideDragHelpers();
				E.targetEl = null;
				E.targetId = null;
				E.targetNode = null;
				E.canDrop = false; return } if(b.id == E.targetId) { return } E.canDrop = false;
			window.clearTimeout(E.openDelayTimeout);
			E.targetEl = b;
			E.targetId = b.id;
			E.targetNode = getNode(D, E.targetId);
			log('source:' + (E.sourceNode && E.sourceNode.text ? E.sourceNode.text : E.sourceId));
			log('target:' + (E.targetNode && E.targetNode.text ? E.targetNode.text : E.targetId));
			log('isAncester:' + isAncester(E.sourceNode, E.targetId)); var c = $('#' + E.targetId); if(isAncester(E.sourceNode, E.targetId)) { showRejectDragHelper(); return } if(E.targetId == E.sourceId) { hideDragHelpers(); return } if(B.canDrop) { var d = E.sourceNode != null; var e = d ? E.sourceNode : E.sourceEl; var f = E.targetNode != null; var g = f ? E.targetNode : E.targetEl; var h = B.canDrop(a, D, d, e, f, g); if(h === true) { showAcceptDragHelper();
					E.canDrop = true;
					E.openDelayTimeout = window.setTimeout(function() { openCloseNode(D, E.targetId, 'open');
						renderNode(E.targetNode, 'open') }, 600); return } else if(h === false) { showRejectDragHelper(); return } } if(c.hasClass('easytree-reject')) { showRejectDragHelper() } else if(c.hasClass('easytree-accept')) { showAcceptDragHelper();
				E.canDrop = true;
				E.openDelayTimeout = window.setTimeout(function() { openCloseNode(D, E.targetId, 'open');
					renderNode(E.targetNode, 'open') }, 600) } else { hideDragHelpers() } return false }

		function dragEnd(a) { var b = E.sourceNode != null; var c = b ? E.sourceNode : E.sourceEl; var d = E.targetNode != null; var e = d ? E.targetNode : E.targetEl; var f = E.canDrop;
			hideDragHelpers();
			$('#_st_clone_').remove(); if(c === null || e === null) { resetDnd(E); return false } if(B.dropping) { var g = B.dropping(a, D, b, c, d, e, f); if(g === false) { resetDnd(E); return } } if(E.targetNode && E.sourceNode && f) { if(!E.targetNode.children) { E.targetNode.children = [] } removeNode(D, E.sourceId);
				E.targetNode.children.push(E.sourceNode) } if(f) { if(B.dropped) { B.dropped(a, D, b, c, d, e) } buildTree(D) } resetDnd(E); return false }

		function createClone(a) { $(a).remove(".easytree-expander"); var b = $(a).clone().remove(".easytree-expander").removeClass('easytree-drag-source')[0]; var c = b.children[0]; if(c && c.className == 'easytree-expander') { b.removeChild(c) } b.style.display = 'block';
			b.style.position = "absolute";
			b.style.opacity = 0.5;
			b.id = '_st_clone_';
			b.style.zIndex = 1000; return b }

		function getDroppableTargetEl(a, b) { var c = document.elementFromPoint(a, b); while(c) { if(c.className.indexOf('easytree-droppable') > -1) { return c } c = c.parentElement } return null }

		function resetDnd(a) { a.canDrop = false;
			a.createClone = true;
			a.clone = null;
			a.dragok = false;
			a.openDelayTimeout = null;
			a.targetEl = null;
			a.targetId = null;
			a.targetNode = null;
			a.sourceEl = null;
			a.sourceId = null;
			a.sourceNode = null }

		function getElementId(a) { while(a != null) { if(a.id) { return a.id } a = a.parentElement } return null }

		function getNode(a, b) { var i = 0; for(i = 0; i < a.length; i++) { var n = a[i]; var t = n.text; if(n.id == b) { return n } var c = n.children && n.children.length > 0; if(c) { var d = getNode(n.children, b); if(d) { return d } } } return null }

		function isAncester(a, b) { var i = 0; if(!a || !a.children || a.children.length == 0) { return false } for(i = 0; i < a.children.length; i++) { var n = a.children[i]; var t = n.text; if(n.id == b) { return true } var c = n.children && n.children.length > 0; if(c) { var d = isAncester(n, b); if(d) { return d } } } return false }

		function removeNode(a, b) { var i = 0; for(i = 0; i < a.length; i++) { var n = a[i]; var t = n.text; if(n.id == b) { a.splice(i, 1); return } var c = n.children && n.children.length > 0; if(c) { removeNode(n.children, b) } } }

		function openCloseNode(a, b, c) { var i = 0; for(i = 0; i < a.length; i++) { var n = a[i]; var t = n.text; if(n.id == b) { n.isExpanded = c == "open"; return } var d = n.children && n.children.length > 0; if(d) { openCloseNode(n.children, b, c) } } }

		function unactivateAll(a) { var i = 0; for(i = 0; i < a.length; i++) { var n = a[i];
				n.isActive = false;
				$('#' + n.id).removeClass('easytree-active'); var b = n.children && n.children.length > 0; if(b) { unactivateAll(n.children) } } }

		function unsourceAll(a) { var i = 0; for(i = 0; i < a.length; i++) { var n = a[i];
				$('#' + n.id).removeClass('easytree-drag-source'); var b = n.children && n.children.length > 0; if(b) { unsourceAll(n.children) } } }

		function sort(f) { var i = 0;
			f = f.sort(function(a, b) { var c = a.text.toLowerCase(); var d = b.text.toLowerCase(); if(!c) { c = "a" } if(!d) { d = "a" } if(B.ordering.toLowerCase().indexOf('folder') > -1 && a.isFolder) { c = "______" + c } if(B.ordering.toLowerCase().indexOf('folder') > -1 && b.isFolder) { d = "______" + d } var e = B.ordering.indexOf(" DESC") == -1 ? 1 : -1; if(c < d) { return -1 * e } if(c > d) { return 1 * e } return 0 }); for(i = 0; i < f.length; i++) { var n = f[i]; var g = n.children && n.children.length > 0; if(g) { sort(n.children) } } return f }

		function giveUniqueIds(a, b, c) { var i = 0; if(!b) { b = 0;
				c = "_st_node_" + c + "_" } for(i = 0; i < a.length; i++) { var n = a[i]; if(!n.id) { n.id = c + i.toString() } var d = n.children && n.children.length > 0; if(d) { giveUniqueIds(n.children, b + 1, c + i + "_") } } }

		function buildTree(a) { if(!a) { return } var b = new Date(); if(B.building) { var c = B.building(a); if(c === false) { return false } } var d = new Date(); if(B.ordering) { a = sort(a) } var e = new Date(); var f = Math.floor(Math.random() * 10000);
			giveUniqueIds(a, 0, f); var g = new Date();
			D = a; var h = getNodesAsHtml(a, 0, true); var i = new Date();
			C[0].innerHTML = h; var k = new Date();
			$(C.selector + " .easytree-node").on("click", a, nodeClick);
			$(C.selector + " .easytree-expander").on("click", a, toggleNodeEvt);
			$(C.selector + " .easytree-icon").on("dblclick", a, toggleNodeEvt);
			$(C.selector + " .easytree-title").on("dblclick", a, toggleNodeEvt); var l = new Date(); if(B.enableDnd) { $(document).on("mousedown", dragStart);
				$(document).on("mousemove", drag);
				$(document).on("mouseup", dragEnd) } var m = new Date(); if(B.built) { B.built(a) } var n = new Date(); if(B.stateChanged) { var j = getMinifiedJson(a);
				B.stateChanged(a, j) } var o = new Date(); var p = d - b; var q = e - d; var r = g - e; var s = i - g; var t = k - i; var u = l - k; var v = m - l; var w = n - m; var x = o - n; var y = o - b }

		function getNodesAsHtml(a, b, c) { var d = ''; var i = 0; var e = ""; if(b == 0) { e += "ui-easytree easytree-container easytree-focused" } var f = b < B.minOpenLevels; var g = b == 0 || c || f ? "" : " style='display:none' ";
			d += '<ul tabindex="0" class="' + e + '" ' + g + '">'; for(i = 0; i < a.length; i++) { var n = a[i]; if(f === true) { n.isExpanded = true } var h = i == a.length - 1; var j = getSpanCss(n, h);
				d += '<li>';
				d += '<span id="' + n.id + '" class="' + j + ' ">';
				d += f ? '' : '<span class="easytree-expander"></span>';
				d += getIconHtml(n);
				d += getTitleHtml(n);
				d += '</span>'; if(n.children && n.children.length > 0) { d += getNodesAsHtml(n.children, b + 1, n.isExpanded) } d += '</li>' } d += '</ul>'; return d }

		function getSpanCss(a, b) { var c = a.children && a.children.length > 0; var d = "easytree-node "; if(B.enableDnd) { d += " easytree-draggable " } if(a.liClass) { d += a.liClass } if(a.isFolder && B.enableDnd) { d += " easytree-droppable easytree-accept " } else if(B.enableDnd) { d += " easytree-droppable easytree-reject " } if(a.isActive && B.allowActivate) { d += " easytree-active " } d += getExpCss(a, b); var e = a.isExpanded ? "e" : "c"; if(a.isFolder) { e += "f" } d += " easytree-ico-" + e; return d }

		function getExpCss(a, b) { var c = a.children && a.children.length > 0; var d = ""; if(!c && a.isLazy) { d = "c" } else if(!c) { d = "n" } else if(a.isExpanded) { d = "e" } else { d = "c" } if(b) { d += "l" } return " easytree-exp-" + d }

		function getIconHtml(a) { var b = ''; if(B.disableIcons) { return b } if(a.uiIcon) { return '<span class="easytree-custom-icon ui-icon ' + a.uiIcon + '"></span>' } if(a.iconUrl) { return '<span><img src="' + a.iconUrl + '" /></span>' } return '<span class="easytree-icon"></span>' }

		function getTitleHtml(a) { var b = ''; var c = a.tooltip ? 'title="' + a.tooltip + '"' : ""; var d = "easytree-title"; if(a.textCss) { d += " " + a.textCss } b += '<span ' + c + ' class="' + d + '">'; if(a.href) { b += '<a href="' + a.href + '" '; if(a.hrefTarget) { b += ' target="' + a.hrefTarget + '" ' } b += '>' } b += a.text; if(a.href) { b += '</a>' } b += '</span>'; return b }

		function renderNode(a, b) { if(!a) { return } var c = $('#' + a.id).attr('class'); var d = c.indexOf('easytree-exp-'); if(d > -1) { var e = c.indexOf(' ', d); var f = e > -1 ? c.substring(d, e) : c.substring(d);
				$('#' + a.id).removeClass(f);
				$('#' + a.id).addClass(getExpCss(a, false)) } var g = $('#' + a.id).parents('li').first(); var h = g.children('ul').first(); var i = parseInt(B.slidingTime, 10); if(b == "close") { h.slideUp(i) } else { h.slideDown(i) } }

		function hideDragHelpers() { $("#easytree-reject").hide();
			$("#easytree-accept").hide() }

		function showAcceptDragHelper() { $("#easytree-accept").show();
			$("#easytree-reject").hide() }

		function showRejectDragHelper() { $("#easytree-reject").show();
			$("#easytree-accept").hide() }

		function getMinifiedJson(a) { var j = JSON.stringify ? JSON.stringify(a) : 'Please import json2.js'; while(j.indexOf(',"children":[]') > -1) { j = j.replace(',"children":[]', '') } while(j.indexOf('"liClass":"",') > -1) { j = j.replace('"liClass":"",', '') } while(j.indexOf('"textCss":"",') > -1) { j = j.replace('"textCss":"",', '') } while(j.indexOf('"isExpanded":false,') > -1) { j = j.replace('"isExpanded":false,', '') } while(j.indexOf('"isActive":false,') > -1) { j = j.replace('"isActive":false,', '') } while(j.indexOf('"isFolder":false,') > -1) { j = j.replace('"isFolder":false,', '') } while(j.indexOf('"isLazy":false,') > -1) { j = j.replace('"isLazy":false,', '') } return j }

		function init() { initDragHelpers();
			resetDnd(E);
			$(document).on("mousemove", function(a) { var b = a.pageY; var c = a.pageX;
				document.getElementById('easytree-reject').style.top = (b + 10) + 'px';
				document.getElementById('easytree-reject').style.left = (c + 17) + 'px';
				document.getElementById('easytree-accept').style.top = (b + 10) + 'px';
				document.getElementById('easytree-accept').style.left = (c + 17) + 'px' }) }

		function initDragHelpers() { if(!$("#easytree-reject").length) { var a = '<div id="easytree-reject" class="easytree-drag-helper easytree-drop-reject">';
				a += '<span class="easytree-drag-helper-img"></span>';
				a += '</div>';
				$('body').append(a) } if(!$("#easytree-accept").length) { var b = '<div id="easytree-accept" class="easytree-drag-helper easytree-drop-accept">';
				b += '<span class="easytree-drag-helper-img"></span>';
				b += '</div>';
				$('body').append(b) } }

		function ajaxService(d, e, f) { $.ajax({ url: d, type: "POST", contentType: "application/json; charset=utf-8", data: e, success: f, error: function(a, b, c) { alert("Error: " + a.responseText) } }) }

		function convertInputDataToJson(a) { var b = null; if(typeof a == 'object') { b = a } else if(typeof a == 'string') { a = $.trim(a); if(a.indexOf('[') == 0 || a.indexOf('{') == 0) { b = $.parseJSON(a) } else { b = convertHtmlToJson(a) } } return b }

		function convertHtmlToJson(b) { var i = 0; var c = $(b); var d = []; var e = c.children().each(function(a) { d.push(convertHtmlToNode(this)) }); return d }

		function convertHtmlToNode(b) { var c = $(b); var d = {}; var e = c.data();
			d.isActive = c.hasClass('isActive');
			c.removeClass('isActive');
			d.isFolder = c.hasClass('isFolder');
			c.removeClass('isFolder');
			d.isExpanded = c.hasClass('isExpanded');
			c.removeClass('isExpanded');
			d.isLazy = c.hasClass('isLazy');
			c.removeClass('isLazy');
			d.uiIcon = e.uiicon;
			d.liClass = c.attr('class');
			d.id = c.attr('id'); var f = c.children('a'); if(f) { d.href = f.attr('href');
				d.hrefTarget = f.attr('target') } var g = c.children('img'); if(g) { d.iconUrl = g.attr('src') } d.textCss = ''; var h = c.children('span'); if(h && h.attr('class')) { d.textCss += h.attr('class') + ' ' } h = f.children('span'); if(h && h.attr('class')) { d.textCss += h.attr('class') + ' ' } h = g.children('span'); if(h && h.attr('class')) { d.textCss += h.attr('class') + ' ' } d.text = getNodeValue(c[0]);
			d.tooltip = c.attr('title');
			d.children = []; var i = c.children('ul').children('li').each(function(a) { d.children.push(convertHtmlToNode(this)) }); return d }

		function getNodeValue(a) { var i = 0; for(i = 0; i < a.childNodes.length; i++) { var b = a.childNodes[i]; while(b) { if(b.nodeType == 3 && $.trim(b.nodeValue).length > 0) { return $.trim(b.nodeValue) } b = b.firstChild } } return '' } this.init(z, A);

		function log(a) { if(!a) { a = 'null' } console.log(a) } } }(jQuery));

/*! js-cookie v2.1.3 | MIT */
! function(a) { var b = !1; if("function" == typeof define && define.amd && (define(a), b = !0), "object" == typeof exports && (module.exports = a(), b = !0), !b) { var c = window.Cookies,
			d = window.Cookies = a();
		d.noConflict = function() { return window.Cookies = c, d } } }(function() {
	function a() { for(var a = 0, b = {}; a < arguments.length; a++) { var c = arguments[a]; for(var d in c) b[d] = c[d] } return b }

	function b(c) {
		function d(b, e, f) { var g; if("undefined" != typeof document) { if(arguments.length > 1) { if(f = a({ path: "/" }, d.defaults, f), "number" == typeof f.expires) { var h = new Date;
						h.setMilliseconds(h.getMilliseconds() + 864e5 * f.expires), f.expires = h } try { g = JSON.stringify(e), /^[\{\[]/.test(g) && (e = g) } catch(i) {} return e = c.write ? c.write(e, b) : encodeURIComponent(e + "").replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent), b = encodeURIComponent(b + ""), b = b.replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent), b = b.replace(/[\(\)]/g, escape), document.cookie = b + "=" + e + (f.expires ? "; expires=" + f.expires.toUTCString() : "") + (f.path ? "; path=" + f.path : "") + (f.domain ? "; domain=" + f.domain : "") + (f.secure ? "; secure" : "") } b || (g = {}); for(var j = document.cookie ? document.cookie.split("; ") : [], k = /(%[0-9A-Z]{2})+/g, l = 0; l < j.length; l++) { var m = j[l].split("="),
						n = m.slice(1).join("="); '"' === n.charAt(0) && (n = n.slice(1, -1)); try { var o = m[0].replace(k, decodeURIComponent); if(n = c.read ? c.read(n, o) : c(n, o) || n.replace(k, decodeURIComponent), this.json) try { n = JSON.parse(n) } catch(i) {}
						if(b === o) { g = n; break } b || (g[o] = n) } catch(i) {} } return g } } return d.set = d, d.get = function(a) { return d.call(d, a) }, d.getJSON = function() { return d.apply({ json: !0 }, [].slice.call(arguments)) }, d.defaults = {}, d.remove = function(b, c) { d(b, "", a(c, { expires: -1 })) }, d.withConverter = b, d } return b(function() {}) });

/*! Bootstrap Typeahead - https://github.com/bassjobsen/Bootstrap-3-Typeahead */
! function(a, b) { "use strict"; "undefined" != typeof module && module.exports ? module.exports = b(require("jquery")) : "function" == typeof define && define.amd ? define(["jquery"], function(a) { return b(a) }) : b(a.jQuery) }(this, function(a) { "use strict"; var b = function(b, c) { this.$element = a(b), this.options = a.extend({}, a.fn.typeahead.defaults, c), this.matcher = this.options.matcher || this.matcher, this.sorter = this.options.sorter || this.sorter, this.select = this.options.select || this.select, this.autoSelect = "boolean" == typeof this.options.autoSelect ? this.options.autoSelect : !0, this.highlighter = this.options.highlighter || this.highlighter, this.render = this.options.render || this.render, this.updater = this.options.updater || this.updater, this.displayText = this.options.displayText || this.displayText, this.source = this.options.source, this.delay = this.options.delay, this.$menu = a(this.options.menu), this.$appendTo = this.options.appendTo ? a(this.options.appendTo) : null, this.shown = !1, this.listen(), this.showHintOnFocus = "boolean" == typeof this.options.showHintOnFocus ? this.options.showHintOnFocus : !1, this.afterSelect = this.options.afterSelect, this.addItem = !1 };
	b.prototype = { constructor: b, select: function() { var a = this.$menu.find(".active").data("value"); if(this.$element.data("active", a), this.autoSelect || a) { var b = this.updater(a);
				this.$element.val(this.displayText(b) || b).change(), this.afterSelect(b) } return this.hide() }, updater: function(a) { return a }, setSource: function(a) { this.source = a }, show: function() { var b, c = a.extend({}, this.$element.position(), { height: this.$element[0].offsetHeight }); return b = "function" == typeof this.options.scrollHeight ? this.options.scrollHeight.call() : this.options.scrollHeight, (this.$appendTo ? this.$menu.appendTo(this.$appendTo) : this.$menu.insertAfter(this.$element)).css({ top: c.top + c.height + b, left: c.left }).show(), this.shown = !0, this }, hide: function() { return this.$menu.hide(), this.shown = !1, this }, lookup: function(b) { if(this.query = "undefined" != typeof b && null !== b ? b : this.$element.val() || "", this.query.length < this.options.minLength) return this.shown ? this.hide() : this; var c = a.proxy(function() { a.isFunction(this.source) ? this.source(this.query, a.proxy(this.process, this)) : this.source && this.process(this.source) }, this);
			clearTimeout(this.lookupWorker), this.lookupWorker = setTimeout(c, this.delay) }, process: function(b) { var c = this; return b = a.grep(b, function(a) { return c.matcher(a) }), b = this.sorter(b), b.length || this.options.addItem ? (b.length > 0 ? this.$element.data("active", b[0]) : this.$element.data("active", null), this.options.addItem && b.push(this.options.addItem), "all" == this.options.items ? this.render(b).show() : this.render(b.slice(0, this.options.items)).show()) : this.shown ? this.hide() : this }, matcher: function(a) { var b = this.displayText(a); return ~b.toLowerCase().indexOf(this.query.toLowerCase()) }, sorter: function(a) { for(var b, c = [], d = [], e = []; b = a.shift();) { var f = this.displayText(b);
				f.toLowerCase().indexOf(this.query.toLowerCase()) ? ~f.indexOf(this.query) ? d.push(b) : e.push(b) : c.push(b) } return c.concat(d, e) }, highlighter: function(b) { var c, d, e, f, g, h = a("<div></div>"),
				i = this.query,
				j = b.toLowerCase().indexOf(i.toLowerCase()); if(c = i.length, 0 === c) return h.text(b).html(); for(; j > -1;) d = b.substr(0, j), e = b.substr(j, c), f = b.substr(j + c), g = a("<strong></strong>").text(e), h.append(document.createTextNode(d)).append(g), b = f, j = b.toLowerCase().indexOf(i.toLowerCase()); return h.append(document.createTextNode(b)).html() }, render: function(b) { var c = this,
				d = this,
				e = !1; return b = a(b).map(function(b, f) { var g = d.displayText(f); return b = a(c.options.item).data("value", f), b.find("a").html(c.highlighter(g)), g == d.$element.val() && (b.addClass("active"), d.$element.data("active", f), e = !0), b[0] }), this.autoSelect && !e && (b.first().addClass("active"), this.$element.data("active", b.first().data("value"))), this.$menu.html(b), this }, displayText: function(a) { return a.name || a }, next: function() { var b = this.$menu.find(".active").removeClass("active"),
				c = b.next();
			c.length || (c = a(this.$menu.find("li")[0])), c.addClass("active") }, prev: function() { var a = this.$menu.find(".active").removeClass("active"),
				b = a.prev();
			b.length || (b = this.$menu.find("li").last()), b.addClass("active") }, listen: function() { this.$element.on("focus", a.proxy(this.focus, this)).on("blur", a.proxy(this.blur, this)).on("keypress", a.proxy(this.keypress, this)).on("keyup", a.proxy(this.keyup, this)), this.eventSupported("keydown") && this.$element.on("keydown", a.proxy(this.keydown, this)), this.$menu.on("click", a.proxy(this.click, this)).on("mouseenter", "li", a.proxy(this.mouseenter, this)).on("mouseleave", "li", a.proxy(this.mouseleave, this)) }, destroy: function() { this.$element.data("typeahead", null), this.$element.data("active", null), this.$element.off("focus").off("blur").off("keypress").off("keyup"), this.eventSupported("keydown") && this.$element.off("keydown"), this.$menu.remove() }, eventSupported: function(a) { var b = a in this.$element; return b || (this.$element.setAttribute(a, "return;"), b = "function" == typeof this.$element[a]), b }, move: function(a) { if(this.shown) { switch(a.keyCode) {
					case 9:
					case 13:
					case 27:
						a.preventDefault(); break;
					case 38:
						if(a.shiftKey) return;
						a.preventDefault(), this.prev(); break;
					case 40:
						if(a.shiftKey) return;
						a.preventDefault(), this.next() } a.stopPropagation() } }, keydown: function(b) { this.suppressKeyPressRepeat = ~a.inArray(b.keyCode, [40, 38, 9, 13, 27]), this.shown || 40 != b.keyCode ? this.move(b) : this.lookup() }, keypress: function(a) { this.suppressKeyPressRepeat || this.move(a) }, keyup: function(a) { switch(a.keyCode) {
				case 40:
				case 38:
				case 16:
				case 17:
				case 18:
					break;
				case 9:
				case 13:
					if(!this.shown) return;
					this.select(); break;
				case 27:
					if(!this.shown) return;
					this.hide(); break;
				default:
					this.lookup() } a.stopPropagation(), a.preventDefault() }, focus: function() { this.focused || (this.focused = !0, this.options.showHintOnFocus && this.lookup("")) }, blur: function() { this.focused = !1, !this.mousedover && this.shown && this.hide() }, click: function(a) { a.stopPropagation(), a.preventDefault(), this.select(), this.$element.focus() }, mouseenter: function(b) { this.mousedover = !0, this.$menu.find(".active").removeClass("active"), a(b.currentTarget).addClass("active") }, mouseleave: function() { this.mousedover = !1, !this.focused && this.shown && this.hide() } }; var c = a.fn.typeahead;
	a.fn.typeahead = function(c) { var d = arguments; return "string" == typeof c && "getActive" == c ? this.data("active") : this.each(function() { var e = a(this),
				f = e.data("typeahead"),
				g = "object" == typeof c && c;
			f || e.data("typeahead", f = new b(this, g)), "string" == typeof c && (d.length > 1 ? f[c].apply(f, Array.prototype.slice.call(d, 1)) : f[c]()) }) }, a.fn.typeahead.defaults = { source: [], items: 8, menu: '<ul class="typeahead dropdown-menu" role="listbox"></ul>', item: '<li><a href="#" role="option"></a></li>', minLength: 1, scrollHeight: 0, autoSelect: !0, afterSelect: a.noop, delay: 0, addItem: !1 }, a.fn.typeahead.Constructor = b, a.fn.typeahead.noConflict = function() { return a.fn.typeahead = c, this }, a(document).on("focus.typeahead.data-api", '[data-provide="typeahead"]', function() { var b = a(this);
		b.data("typeahead") || b.typeahead(b.data()) }) });

/*!
 * Bootstrap Colorpicker v2.3.5
 * https://itsjaviaguilar.github.io/bootstrap-colorpicker/
 */
! function(a) { "use strict"; "object" == typeof exports ? module.exports = a(window.jQuery) : "function" == typeof define && define.amd ? define(["jquery"], a) : window.jQuery && !window.jQuery.fn.colorpicker && a(window.jQuery) }(function(a) { "use strict"; var b = function(b, c) { this.value = { h: 0, s: 0, b: 0, a: 1 }, this.origFormat = null, c && a.extend(this.colors, c), b && (void 0 !== b.toLowerCase ? (b += "", this.setColor(b)) : void 0 !== b.h && (this.value = b)) };
	b.prototype = { constructor: b, colors: { aliceblue: "#f0f8ff", antiquewhite: "#faebd7", aqua: "#00ffff", aquamarine: "#7fffd4", azure: "#f0ffff", beige: "#f5f5dc", bisque: "#ffe4c4", black: "#000000", blanchedalmond: "#ffebcd", blue: "#0000ff", blueviolet: "#8a2be2", brown: "#a52a2a", burlywood: "#deb887", cadetblue: "#5f9ea0", chartreuse: "#7fff00", chocolate: "#d2691e", coral: "#ff7f50", cornflowerblue: "#6495ed", cornsilk: "#fff8dc", crimson: "#dc143c", cyan: "#00ffff", darkblue: "#00008b", darkcyan: "#008b8b", darkgoldenrod: "#b8860b", darkgray: "#a9a9a9", darkgreen: "#006400", darkkhaki: "#bdb76b", darkmagenta: "#8b008b", darkolivegreen: "#556b2f", darkorange: "#ff8c00", darkorchid: "#9932cc", darkred: "#8b0000", darksalmon: "#e9967a", darkseagreen: "#8fbc8f", darkslateblue: "#483d8b", darkslategray: "#2f4f4f", darkturquoise: "#00ced1", darkviolet: "#9400d3", deeppink: "#ff1493", deepskyblue: "#00bfff", dimgray: "#696969", dodgerblue: "#1e90ff", firebrick: "#b22222", floralwhite: "#fffaf0", forestgreen: "#228b22", fuchsia: "#ff00ff", gainsboro: "#dcdcdc", ghostwhite: "#f8f8ff", gold: "#ffd700", goldenrod: "#daa520", gray: "#808080", green: "#008000", greenyellow: "#adff2f", honeydew: "#f0fff0", hotpink: "#ff69b4", indianred: "#cd5c5c", indigo: "#4b0082", ivory: "#fffff0", khaki: "#f0e68c", lavender: "#e6e6fa", lavenderblush: "#fff0f5", lawngreen: "#7cfc00", lemonchiffon: "#fffacd", lightblue: "#add8e6", lightcoral: "#f08080", lightcyan: "#e0ffff", lightgoldenrodyellow: "#fafad2", lightgrey: "#d3d3d3", lightgreen: "#90ee90", lightpink: "#ffb6c1", lightsalmon: "#ffa07a", lightseagreen: "#20b2aa", lightskyblue: "#87cefa", lightslategray: "#778899", lightsteelblue: "#b0c4de", lightyellow: "#ffffe0", lime: "#00ff00", limegreen: "#32cd32", linen: "#faf0e6", magenta: "#ff00ff", maroon: "#800000", mediumaquamarine: "#66cdaa", mediumblue: "#0000cd", mediumorchid: "#ba55d3", mediumpurple: "#9370d8", mediumseagreen: "#3cb371", mediumslateblue: "#7b68ee", mediumspringgreen: "#00fa9a", mediumturquoise: "#48d1cc", mediumvioletred: "#c71585", midnightblue: "#191970", mintcream: "#f5fffa", mistyrose: "#ffe4e1", moccasin: "#ffe4b5", navajowhite: "#ffdead", navy: "#000080", oldlace: "#fdf5e6", olive: "#808000", olivedrab: "#6b8e23", orange: "#ffa500", orangered: "#ff4500", orchid: "#da70d6", palegoldenrod: "#eee8aa", palegreen: "#98fb98", paleturquoise: "#afeeee", palevioletred: "#d87093", papayawhip: "#ffefd5", peachpuff: "#ffdab9", peru: "#cd853f", pink: "#ffc0cb", plum: "#dda0dd", powderblue: "#b0e0e6", purple: "#800080", red: "#ff0000", rosybrown: "#bc8f8f", royalblue: "#4169e1", saddlebrown: "#8b4513", salmon: "#fa8072", sandybrown: "#f4a460", seagreen: "#2e8b57", seashell: "#fff5ee", sienna: "#a0522d", silver: "#c0c0c0", skyblue: "#87ceeb", slateblue: "#6a5acd", slategray: "#708090", snow: "#fffafa", springgreen: "#00ff7f", steelblue: "#4682b4", tan: "#d2b48c", teal: "#008080", thistle: "#d8bfd8", tomato: "#ff6347", turquoise: "#40e0d0", violet: "#ee82ee", wheat: "#f5deb3", white: "#ffffff", whitesmoke: "#f5f5f5", yellow: "#ffff00", yellowgreen: "#9acd32", transparent: "transparent" }, _sanitizeNumber: function(a) { return "number" == typeof a ? a : isNaN(a) || null === a || "" === a || void 0 === a ? 1 : "" === a ? 0 : void 0 !== a.toLowerCase ? (a.match(/^\./) && (a = "0" + a), Math.ceil(100 * parseFloat(a)) / 100) : 1 }, isTransparent: function(a) { return !!a && (a = a.toLowerCase().trim(), "transparent" === a || a.match(/#?00000000/) || a.match(/(rgba|hsla)\(0,0,0,0?\.?0\)/)) }, rgbaIsTransparent: function(a) { return 0 === a.r && 0 === a.g && 0 === a.b && 0 === a.a }, setColor: function(a) { a = a.toLowerCase().trim(), a && (this.isTransparent(a) ? this.value = { h: 0, s: 0, b: 0, a: 0 } : this.value = this.stringToHSB(a) || { h: 0, s: 0, b: 0, a: 1 }) }, stringToHSB: function(b) { b = b.toLowerCase(); var c; "undefined" != typeof this.colors[b] && (b = this.colors[b], c = "alias"); var d = this,
				e = !1; return a.each(this.stringParsers, function(a, f) { var g = f.re.exec(b),
					h = g && f.parse.apply(d, [g]),
					i = c || f.format || "rgba"; return !h || (e = i.match(/hsla?/) ? d.RGBtoHSB.apply(d, d.HSLtoRGB.apply(d, h)) : d.RGBtoHSB.apply(d, h), d.origFormat = i, !1) }), e }, setHue: function(a) { this.value.h = 1 - a }, setSaturation: function(a) { this.value.s = a }, setBrightness: function(a) { this.value.b = 1 - a }, setAlpha: function(a) { this.value.a = Math.round(parseInt(100 * (1 - a), 10) / 100 * 100) / 100 }, toRGB: function(a, b, c, d) { a || (a = this.value.h, b = this.value.s, c = this.value.b), a *= 360; var e, f, g, h, i; return a = a % 360 / 60, i = c * b, h = i * (1 - Math.abs(a % 2 - 1)), e = f = g = c - i, a = ~~a, e += [i, h, 0, 0, h, i][a], f += [h, i, i, h, 0, 0][a], g += [0, 0, h, i, i, h][a], { r: Math.round(255 * e), g: Math.round(255 * f), b: Math.round(255 * g), a: d || this.value.a } }, toHex: function(a, b, c, d) { var e = this.toRGB(a, b, c, d); return this.rgbaIsTransparent(e) ? "transparent" : "#" + (1 << 24 | parseInt(e.r) << 16 | parseInt(e.g) << 8 | parseInt(e.b)).toString(16).substr(1) }, toHSL: function(a, b, c, d) { a = a || this.value.h, b = b || this.value.s, c = c || this.value.b, d = d || this.value.a; var e = a,
				f = (2 - b) * c,
				g = b * c; return g /= f > 0 && f <= 1 ? f : 2 - f, f /= 2, g > 1 && (g = 1), { h: isNaN(e) ? 0 : e, s: isNaN(g) ? 0 : g, l: isNaN(f) ? 0 : f, a: isNaN(d) ? 0 : d } }, toAlias: function(a, b, c, d) { var e = this.toHex(a, b, c, d); for(var f in this.colors)
				if(this.colors[f] === e) return f; return !1 }, RGBtoHSB: function(a, b, c, d) { a /= 255, b /= 255, c /= 255; var e, f, g, h; return g = Math.max(a, b, c), h = g - Math.min(a, b, c), e = 0 === h ? null : g === a ? (b - c) / h : g === b ? (c - a) / h + 2 : (a - b) / h + 4, e = (e + 360) % 6 * 60 / 360, f = 0 === h ? 0 : h / g, { h: this._sanitizeNumber(e), s: f, b: g, a: this._sanitizeNumber(d) } }, HueToRGB: function(a, b, c) { return c < 0 ? c += 1 : c > 1 && (c -= 1), 6 * c < 1 ? a + (b - a) * c * 6 : 2 * c < 1 ? b : 3 * c < 2 ? a + (b - a) * (2 / 3 - c) * 6 : a }, HSLtoRGB: function(a, b, c, d) { b < 0 && (b = 0); var e;
			e = c <= .5 ? c * (1 + b) : c + b - c * b; var f = 2 * c - e,
				g = a + 1 / 3,
				h = a,
				i = a - 1 / 3,
				j = Math.round(255 * this.HueToRGB(f, e, g)),
				k = Math.round(255 * this.HueToRGB(f, e, h)),
				l = Math.round(255 * this.HueToRGB(f, e, i)); return [j, k, l, this._sanitizeNumber(d)] }, toString: function(a) { a = a || "rgba"; var b = !1; switch(a) {
				case "rgb":
					return b = this.toRGB(), this.rgbaIsTransparent(b) ? "transparent" : "rgb(" + b.r + "," + b.g + "," + b.b + ")";
				case "rgba":
					return b = this.toRGB(), "rgba(" + b.r + "," + b.g + "," + b.b + "," + b.a + ")";
				case "hsl":
					return b = this.toHSL(), "hsl(" + Math.round(360 * b.h) + "," + Math.round(100 * b.s) + "%," + Math.round(100 * b.l) + "%)";
				case "hsla":
					return b = this.toHSL(), "hsla(" + Math.round(360 * b.h) + "," + Math.round(100 * b.s) + "%," + Math.round(100 * b.l) + "%," + b.a + ")";
				case "hex":
					return this.toHex();
				case "alias":
					return this.toAlias() || this.toHex();
				default:
					return b } }, stringParsers: [{ re: /rgb\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*?\)/, format: "rgb", parse: function(a) { return [a[1], a[2], a[3], 1] } }, { re: /rgb\(\s*(\d*(?:\.\d+)?)\%\s*,\s*(\d*(?:\.\d+)?)\%\s*,\s*(\d*(?:\.\d+)?)\%\s*?\)/, format: "rgb", parse: function(a) { return [2.55 * a[1], 2.55 * a[2], 2.55 * a[3], 1] } }, { re: /rgba\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*(?:,\s*(\d*(?:\.\d+)?)\s*)?\)/, format: "rgba", parse: function(a) { return [a[1], a[2], a[3], a[4]] } }, { re: /rgba\(\s*(\d*(?:\.\d+)?)\%\s*,\s*(\d*(?:\.\d+)?)\%\s*,\s*(\d*(?:\.\d+)?)\%\s*(?:,\s*(\d*(?:\.\d+)?)\s*)?\)/, format: "rgba", parse: function(a) { return [2.55 * a[1], 2.55 * a[2], 2.55 * a[3], a[4]] } }, { re: /hsl\(\s*(\d*(?:\.\d+)?)\s*,\s*(\d*(?:\.\d+)?)\%\s*,\s*(\d*(?:\.\d+)?)\%\s*?\)/, format: "hsl", parse: function(a) { return [a[1] / 360, a[2] / 100, a[3] / 100, a[4]] } }, { re: /hsla\(\s*(\d*(?:\.\d+)?)\s*,\s*(\d*(?:\.\d+)?)\%\s*,\s*(\d*(?:\.\d+)?)\%\s*(?:,\s*(\d*(?:\.\d+)?)\s*)?\)/, format: "hsla", parse: function(a) { return [a[1] / 360, a[2] / 100, a[3] / 100, a[4]] } }, { re: /#?([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/, format: "hex", parse: function(a) { return [parseInt(a[1], 16), parseInt(a[2], 16), parseInt(a[3], 16), 1] } }, { re: /#?([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/, format: "hex", parse: function(a) { return [parseInt(a[1] + a[1], 16), parseInt(a[2] + a[2], 16), parseInt(a[3] + a[3], 16), 1] } }], colorNameToHex: function(a) { return "undefined" != typeof this.colors[a.toLowerCase()] && this.colors[a.toLowerCase()] } }; var c = { horizontal: !1, inline: !1, color: !1, format: !1, input: "input", container: !1, component: ".add-on, .input-group-addon", sliders: { saturation: { maxLeft: 100, maxTop: 100, callLeft: "setSaturation", callTop: "setBrightness" }, hue: { maxLeft: 0, maxTop: 100, callLeft: !1, callTop: "setHue" }, alpha: { maxLeft: 0, maxTop: 100, callLeft: !1, callTop: "setAlpha" } }, slidersHorz: { saturation: { maxLeft: 100, maxTop: 100, callLeft: "setSaturation", callTop: "setBrightness" }, hue: { maxLeft: 100, maxTop: 0, callLeft: "setHue", callTop: !1 }, alpha: { maxLeft: 100, maxTop: 0, callLeft: "setAlpha", callTop: !1 } }, template: '<div class="colorpicker dropdown-menu"><div class="colorpicker-saturation"><i><b></b></i></div><div class="colorpicker-hue"><i></i></div><div class="colorpicker-alpha"><i></i></div><div class="colorpicker-color"><div /></div><div class="colorpicker-selectors"></div></div>', align: "right", customClass: null, colorSelectors: null },
		d = function(d, e) { if(this.element = a(d).addClass("colorpicker-element"), this.options = a.extend(!0, {}, c, this.element.data(), e), this.component = this.options.component, this.component = this.component !== !1 && this.element.find(this.component), this.component && 0 === this.component.length && (this.component = !1), this.container = this.options.container === !0 ? this.element : this.options.container, this.container = this.container !== !1 && a(this.container), this.input = this.element.is("input") ? this.element : !!this.options.input && this.element.find(this.options.input), this.input && 0 === this.input.length && (this.input = !1), this.color = new b(this.options.color !== !1 ? this.options.color : this.getValue(), this.options.colorSelectors), this.format = this.options.format !== !1 ? this.options.format : this.color.origFormat, this.options.color !== !1 && (this.updateInput(this.color), this.updateData(this.color)), this.picker = a(this.options.template), this.options.customClass && this.picker.addClass(this.options.customClass), this.options.inline ? this.picker.addClass("colorpicker-inline colorpicker-visible") : this.picker.addClass("colorpicker-hidden"), this.options.horizontal && this.picker.addClass("colorpicker-horizontal"), "rgba" !== this.format && "hsla" !== this.format && this.options.format !== !1 || this.picker.addClass("colorpicker-with-alpha"), "right" === this.options.align && this.picker.addClass("colorpicker-right"), this.options.inline === !0 && this.picker.addClass("colorpicker-no-arrow"), this.options.colorSelectors) { var f = this;
				a.each(this.options.colorSelectors, function(b, c) { var d = a("<i />").css("background-color", c).data("class", b);
					d.click(function() { f.setValue(a(this).css("background-color")) }), f.picker.find(".colorpicker-selectors").append(d) }), this.picker.find(".colorpicker-selectors").show() } this.picker.on("mousedown.colorpicker touchstart.colorpicker", a.proxy(this.mousedown, this)), this.picker.appendTo(this.container ? this.container : a("body")), this.input !== !1 && (this.input.on({ "keyup.colorpicker": a.proxy(this.keyup, this) }), this.input.on({ "change.colorpicker": a.proxy(this.change, this) }), this.component === !1 && this.element.on({ "focus.colorpicker": a.proxy(this.show, this) }), this.options.inline === !1 && this.element.on({ "focusout.colorpicker": a.proxy(this.hide, this) })), this.component !== !1 && this.component.on({ "click.colorpicker": a.proxy(this.show, this) }), this.input === !1 && this.component === !1 && this.element.on({ "click.colorpicker": a.proxy(this.show, this) }), this.input !== !1 && this.component !== !1 && "color" === this.input.attr("type") && this.input.on({ "click.colorpicker": a.proxy(this.show, this), "focus.colorpicker": a.proxy(this.show, this) }), this.update(), a(a.proxy(function() { this.element.trigger("create") }, this)) };
	d.Color = b, d.prototype = { constructor: d, destroy: function() { this.picker.remove(), this.element.removeData("colorpicker", "color").off(".colorpicker"), this.input !== !1 && this.input.off(".colorpicker"), this.component !== !1 && this.component.off(".colorpicker"), this.element.removeClass("colorpicker-element"), this.element.trigger({ type: "destroy" }) }, reposition: function() { if(this.options.inline !== !1 || this.options.container) return !1; var a = this.container && this.container[0] !== document.body ? "position" : "offset",
				b = this.component || this.element,
				c = b[a](); "right" === this.options.align && (c.left -= this.picker.outerWidth() - b.outerWidth()), this.picker.css({ top: c.top + b.outerHeight(), left: c.left }) }, show: function(b) { return !this.isDisabled() && (this.picker.addClass("colorpicker-visible").removeClass("colorpicker-hidden"), this.reposition(), a(window).on("resize.colorpicker", a.proxy(this.reposition, this)), !b || this.hasInput() && "color" !== this.input.attr("type") || b.stopPropagation && b.preventDefault && (b.stopPropagation(), b.preventDefault()), !this.component && this.input || this.options.inline !== !1 || a(window.document).on({ "mousedown.colorpicker": a.proxy(this.hide, this) }), void this.element.trigger({ type: "showPicker", color: this.color })) }, hide: function() { this.picker.addClass("colorpicker-hidden").removeClass("colorpicker-visible"), a(window).off("resize.colorpicker", this.reposition), a(document).off({ "mousedown.colorpicker": this.hide }), this.update(), this.element.trigger({ type: "hidePicker", color: this.color }) }, updateData: function(a) { return a = a || this.color.toString(this.format), this.element.data("color", a), a }, updateInput: function(a) { if(a = a || this.color.toString(this.format), this.input !== !1) { if(this.options.colorSelectors) { var c = new b(a, this.options.colorSelectors),
						d = c.toAlias(); "undefined" != typeof this.options.colorSelectors[d] && (a = d) } this.input.prop("value", a) } return a }, updatePicker: function(a) { void 0 !== a && (this.color = new b(a, this.options.colorSelectors)); var c = this.options.horizontal === !1 ? this.options.sliders : this.options.slidersHorz,
				d = this.picker.find("i"); if(0 !== d.length) return this.options.horizontal === !1 ? (c = this.options.sliders, d.eq(1).css("top", c.hue.maxTop * (1 - this.color.value.h)).end().eq(2).css("top", c.alpha.maxTop * (1 - this.color.value.a))) : (c = this.options.slidersHorz, d.eq(1).css("left", c.hue.maxLeft * (1 - this.color.value.h)).end().eq(2).css("left", c.alpha.maxLeft * (1 - this.color.value.a))), d.eq(0).css({ top: c.saturation.maxTop - this.color.value.b * c.saturation.maxTop, left: this.color.value.s * c.saturation.maxLeft }), this.picker.find(".colorpicker-saturation").css("backgroundColor", this.color.toHex(this.color.value.h, 1, 1, 1)), this.picker.find(".colorpicker-alpha").css("backgroundColor", this.color.toHex()), this.picker.find(".colorpicker-color, .colorpicker-color div").css("backgroundColor", this.color.toString(this.format)), a }, updateComponent: function(a) { if(a = a || this.color.toString(this.format), this.component !== !1) { var b = this.component.find("i").eq(0);
				b.length > 0 ? b.css({ backgroundColor: a }) : this.component.css({ backgroundColor: a }) } return a }, update: function(a) { var b; return this.getValue(!1) === !1 && a !== !0 || (b = this.updateComponent(), this.updateInput(b), this.updateData(b), this.updatePicker()), b }, setValue: function(a) { this.color = new b(a, this.options.colorSelectors), this.update(!0), this.element.trigger({ type: "changeColor", color: this.color, value: a }) }, getValue: function(a) { a = void 0 === a ? "#000000" : a; var b; return b = this.hasInput() ? this.input.val() : this.element.data("color"), void 0 !== b && "" !== b && null !== b || (b = a), b }, hasInput: function() { return this.input !== !1 }, isDisabled: function() { return !!this.hasInput() && this.input.prop("disabled") === !0 }, disable: function() { return !!this.hasInput() && (this.input.prop("disabled", !0), this.element.trigger({ type: "disable", color: this.color, value: this.getValue() }), !0) }, enable: function() { return !!this.hasInput() && (this.input.prop("disabled", !1), this.element.trigger({ type: "enable", color: this.color, value: this.getValue() }), !0) }, currentSlider: null, mousePointer: { left: 0, top: 0 }, mousedown: function(b) {!b.pageX && !b.pageY && b.originalEvent && b.originalEvent.touches && (b.pageX = b.originalEvent.touches[0].pageX, b.pageY = b.originalEvent.touches[0].pageY), b.stopPropagation(), b.preventDefault(); var c = a(b.target),
				d = c.closest("div"),
				e = this.options.horizontal ? this.options.slidersHorz : this.options.sliders; if(!d.is(".colorpicker")) { if(d.is(".colorpicker-saturation")) this.currentSlider = a.extend({}, e.saturation);
				else if(d.is(".colorpicker-hue")) this.currentSlider = a.extend({}, e.hue);
				else { if(!d.is(".colorpicker-alpha")) return !1;
					this.currentSlider = a.extend({}, e.alpha) } var f = d.offset();
				this.currentSlider.guide = d.find("i")[0].style, this.currentSlider.left = b.pageX - f.left, this.currentSlider.top = b.pageY - f.top, this.mousePointer = { left: b.pageX, top: b.pageY }, a(document).on({ "mousemove.colorpicker": a.proxy(this.mousemove, this), "touchmove.colorpicker": a.proxy(this.mousemove, this), "mouseup.colorpicker": a.proxy(this.mouseup, this), "touchend.colorpicker": a.proxy(this.mouseup, this) }).trigger("mousemove") } return !1 }, mousemove: function(a) {!a.pageX && !a.pageY && a.originalEvent && a.originalEvent.touches && (a.pageX = a.originalEvent.touches[0].pageX, a.pageY = a.originalEvent.touches[0].pageY), a.stopPropagation(), a.preventDefault(); var b = Math.max(0, Math.min(this.currentSlider.maxLeft, this.currentSlider.left + ((a.pageX || this.mousePointer.left) - this.mousePointer.left))),
				c = Math.max(0, Math.min(this.currentSlider.maxTop, this.currentSlider.top + ((a.pageY || this.mousePointer.top) - this.mousePointer.top))); return this.currentSlider.guide.left = b + "px", this.currentSlider.guide.top = c + "px", this.currentSlider.callLeft && this.color[this.currentSlider.callLeft].call(this.color, b / this.currentSlider.maxLeft), this.currentSlider.callTop && this.color[this.currentSlider.callTop].call(this.color, c / this.currentSlider.maxTop), "setAlpha" === this.currentSlider.callTop && this.options.format === !1 && (1 !== this.color.value.a ? (this.format = "rgba", this.color.origFormat = "rgba") : (this.format = "hex", this.color.origFormat = "hex")), this.update(!0), this.element.trigger({ type: "changeColor", color: this.color }), !1 }, mouseup: function(b) { return b.stopPropagation(), b.preventDefault(), a(document).off({ "mousemove.colorpicker": this.mousemove, "touchmove.colorpicker": this.mousemove, "mouseup.colorpicker": this.mouseup, "touchend.colorpicker": this.mouseup }), !1 }, change: function(a) { this.keyup(a) }, keyup: function(a) { 38 === a.keyCode ? (this.color.value.a < 1 && (this.color.value.a = Math.round(100 * (this.color.value.a + .01)) / 100), this.update(!0)) : 40 === a.keyCode ? (this.color.value.a > 0 && (this.color.value.a = Math.round(100 * (this.color.value.a - .01)) / 100), this.update(!0)) : (this.color = new b(this.input.val(), this.options.colorSelectors), this.color.origFormat && this.options.format === !1 && (this.format = this.color.origFormat), this.getValue(!1) !== !1 && (this.updateData(), this.updateComponent(), this.updatePicker())), this.element.trigger({ type: "changeColor", color: this.color, value: this.input.val() }) } }, a.colorpicker = d, a.fn.colorpicker = function(b) { var c = Array.prototype.slice.call(arguments, 1),
			e = 1 === this.length,
			f = null,
			g = this.each(function() { var e = a(this),
					g = e.data("colorpicker"),
					h = "object" == typeof b ? b : {};
				g || (g = new d(this, h), e.data("colorpicker", g)), "string" == typeof b ? a.isFunction(g[b]) ? f = g[b].apply(g, c) : (c.length && (g[b] = c[0]), f = g[b]) : f = e }); return e ? f : g }, a.fn.colorpicker.constructor = d });