###!
# @preserve
# Screentime.js | v0.2.0
# Copyright (c) 2016 Rob Flaherty (@robflaherty)
# Licensed under the MIT and GPL licenses.
###

### Universal module definition ###

((factory) ->
  if typeof define == 'function' and define.amd
    # AMD
    define [ 'jquery' ], factory
  else if typeof module == 'object' and module.exports
    # CommonJS
    module.exports = factory(require('jquery'))
  else
    # Browser globals
    factory jQuery
  return
) ($) ->

  ### Screentime ###

  defaults = 
    fields: []
    percentOnScreen: '50%'
    reportInterval: 10
    googleAnalytics: false
    callback: ->

  $.screentime = (options) ->

    random = ->
      Math.round Math.random() * 2147483647

    ###
    # Constructors
    ###

    Field = (elem) ->
      @selector = elem.selector
      $elem = @$elem = $(elem.selector)
      @name = elem.name
      @top = $elem.offset().top
      @height = $elem.height()
      @bottom = @top + @height
      @width = $elem.width()
      return

    Viewport = ->
      $window = $(window)
      @top = $window.scrollTop()
      @height = $window.height()
      @bottom = @top + @height
      @width = $window.width()
      return

    ###
    # Do Stuff
    ###

    sendGAEvent = (field, time) ->
      if universalGA
        ga 'send', 'event', 'Screentime', 'Time on Screen', field, parseInt(time, 10), 'nonInteraction': true
      if classicGA
        _gaq.push [
          '_trackEvent'
          'Screentime'
          'Time on Screen'
          field
          parseInt(time, 10)
          true
        ]
      return

    onScreen = (viewport, field) ->
      cond = undefined
      buffered = undefined
      partialView = undefined
      # Field entirely within viewport
      if field.bottom <= viewport.bottom and field.top >= viewport.top
        return true
      # Field bigger than viewport
      if field.height > viewport.height
        cond = viewport.bottom - (field.top) > viewport.height / 2 and field.bottom - (viewport.top) > viewport.height / 2
        if cond
          return true
      # Partially in view
      buffered = field.height * options.percentOnScreen / 100
      partialView = viewport.bottom - buffered >= field.top and field.bottom - buffered > viewport.top
      partialView

    checkViewport = ->
      viewport = new Viewport
      $.each cache, (key, val) ->
        if onScreen(viewport, val)
          log[key] += 1
          counter[key] += 1
        return
      return

    report = ->
      data = {}
      $.each counter, (key, val) ->
        if val > 0
          data[key] = val
          counter[key] = 0
          if options.googleAnalytics
            sendGAEvent key, val
        return
      if !$.isEmptyObject(data)
        options.callback.call this, data, log
      return

    startTimers = ->
      if !started
        checkViewport()
        started = true
      looker = setInterval((->
        checkViewport()
        return
      ), 1000)
      reporter = setInterval((->
        report()
        return
      ), options.reportInterval * 1000)
      return

    stopTimers = ->
      clearInterval looker
      clearInterval reporter
      return

    init = ->
      $.each options.fields, (index, elem) ->
        if $(elem.selector).length
          field = new Field(elem)
          cache[field.name] = field
          counter[field.name] = 0
          log[field.name] = 0
        return
      startTimers()
      visibly.onHidden ->
        stopTimers()
        return
      visibly.onVisible ->
        stopTimers()
        startTimers()
        return
      return

    options = $.extend({}, defaults, options)
    # Convert perecent string to number
    options.percentOnScreen = parseInt(options.percentOnScreen.replace('%', ''), 10)
    counter = {}
    cache = {}
    log = {}
    looker = null
    started = false
    universalGA = undefined
    classicGA = undefined
    if !options.fields.length
      return
    if options.googleAnalytics
      if typeof ga == 'function'
        universalGA = true
      if typeof _gaq != 'undefined' and typeof _gaq.push == 'function'
        classicGA = true

    ###
    # Utilities
    ###

    ###!
    # visibly - v0.6 Aug 2011 - Page Visibility API Polyfill
    # http://github.com/addyosmani
    # Copyright (c) 2011 Addy Osmani
    # Dual licensed under the MIT and GPL licenses.
    #
    # Methods supported:
    # visibly.onVisible(callback)
    # visibly.onHidden(callback)
    # visibly.hidden()
    # visibly.visibilityState()
    # visibly.visibilitychange(callback(state));
    ###

    do ->
      window.visibly =
        q: document
        p: undefined
        prefixes: [
          'webkit'
          'ms'
          'o'
          'moz'
          'khtml'
        ]
        props: [
          'VisibilityState'
          'visibilitychange'
          'Hidden'
        ]
        m: [
          'focus'
          'blur'
        ]
        visibleCallbacks: []
        hiddenCallbacks: []
        genericCallbacks: []
        _callbacks: []
        cachedPrefix: ''
        fn: null
        onVisible: (i) ->
          if typeof i == 'function'
            @visibleCallbacks.push i
          return
        onHidden: (i) ->
          if typeof i == 'function'
            @hiddenCallbacks.push i
          return
        getPrefix: ->
          if !@cachedPrefix
            i = 0
            while b = @prefixes[i++]
              if b + @props[2] of @q
                @cachedPrefix = b
                return @cachedPrefix
          return
        visibilityState: ->
          @_getProp 0
        hidden: ->
          @_getProp 2
        visibilitychange: (i) ->
          if typeof i == 'function'
            @genericCallbacks.push i
          t = @genericCallbacks.length
          if t
            if @cachedPrefix
              while t--
                @genericCallbacks[t].call this, @visibilityState()
            else
              while t--
                @genericCallbacks[t].call this, arguments[0]
          return
        isSupported: (i) ->
          @cachedPrefix + @props[2] of @q
        _getProp: (i) ->
          @q[@cachedPrefix + @props[i]]
        _execute: (i) ->
          if i
            @_callbacks = if i == 1 then @visibleCallbacks else @hiddenCallbacks
            t = @_callbacks.length
            while t--
              @_callbacks[t]()
          return
        _visible: ->
          window.visibly._execute 1
          window.visibly.visibilitychange.call window.visibly, 'visible'
          return
        _hidden: ->
          window.visibly._execute 2
          window.visibly.visibilitychange.call window.visibly, 'hidden'
          return
        _nativeSwitch: ->
          @[if @_getProp(2) then '_hidden' else '_visible']()
          return
        _listen: ->
          try
            if !@isSupported()
              if @q.addEventListener
                window.addEventListener @m[0], @_visible, 1
                window.addEventListener @m[1], @_hidden, 1
              else
                if @q.attachEvent
                  @q.attachEvent 'onfocusin', @_visible
                  @q.attachEvent 'onfocusout', @_hidden
            else
              @q.addEventListener @cachedPrefix + @props[1], (->
                window.visibly._nativeSwitch.apply window.visibly, arguments
                return
              ), 1
          catch i
          return
        init: ->
          @getPrefix()
          @_listen()
          return
      @visibly.init()
      return

    $.screentime.reset = ->
      stopTimers()
      $.each cache, (key, val) ->
        log[key] = 0
        counter[key] = 0
        return
      startTimers()
      return

    init()
    return

  return

# ---
# generated by js2coffee 2.2.0