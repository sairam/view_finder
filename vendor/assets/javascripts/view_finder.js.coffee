#= require 'depth'

window._xViewFinder ?= {}

$(()->
  _xViewFinder._xBasics.init();
)

_xViewFinder._xBasics =
  init: () ->
    @className = ".the-real-file-path"
    @prevDate = Date.now()
    window.filesList = {}

    $(document).ready ->
      # since we are adding
      eleName="span.the-real-file-path"
      $(eleName).prevUntil(eleName).click (e) ->
        a = $(this)
        if window.openFileMode is true
          e.preventDefault()
          element = a.nextAll(eleName).first()
          file = element.attr("data-uri")
          console.log(file)
          window.filesList[file] = element.depth()
          _xViewFinder._xBasics.jsTimeout()

  fileDisplay: () ->
    highestDepth = 0
    reqkey = ""
    filesList = window.filesList
    # window.openFilePrefix ? window.openFilePrefix :
    openFilePrefix = 'txmt://open/?url='
    for key of filesList
      if highestDepth < filesList[key]
        highestDepth = filesList[key]
        reqkey = key
    console.log(reqkey)
    window.open openFilePrefix+reqkey, "ViewFinderGem","toolbar=no,menubar=0,status=0,copyhistory=0,scrollbars=yes,resizable=1,location=0,Width=200,Height=200"
    window.filesList = {}

  jsTimeout: () ->
    if Date.now() - @prevDate > 2000
      window.setTimeout "_xViewFinder._xBasics.fileDisplay()", 2000
    @prevDate = Date.now()

