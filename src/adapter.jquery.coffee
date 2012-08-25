# jQuery Opentip Adapter
# ======================
#
# Uses jQuery

# Because $ is my favorite character
$ = jQuery


# Augment jQuery
$.fn.opentip = (content, title, options) ->
  new Opentip this, content, title, options


# And now the class
class Adapter

  name: "jquery"

  # Simply using $.domReady
  domReady: (callback) -> $.domReady callback


  # DOM
  # ===

  # Using bonzo to create html
  create: (html) -> $ html


  # Element handling
  # ----------------

  # Wraps the element in ender
  wrap: (element) ->
    element = $ element
    throw new Error "Multiple elements provided." if element.length > 1
    element

  # Returns the unwrapped element
  unwrap: (element) -> $(element)[0]

  # Returns the tag name of the element
  tagName: (element) -> @unwrap(element).tagName

  # Returns or sets the given attribute of element
  attr: (element, attr, value) -> $(element).attr attr, value

  # Returns or sets the given data of element
  data: (element, name, value) -> $(element).data name, value

  # Finds elements by selector
  find: (element, selector) -> $(element).find selector

  # Finds all elements by selector
  findAll: -> @find.apply @, arguments

  # Updates the content of the element
  update: (element, content, escape) ->
    element = $ element
    if escape
      element.text content
    else
      element.html content

  # Appends given child to element
  append: (element, child) -> $(element).append child

  # Add a class
  addClass: (element, className) -> $(element).addClass className

  # Remove a class
  removeClass: (element, className) -> $(element).removeClass className

  # Set given css properties
  css: (element, properties) -> $(element).css properties

  # Returns an object with given dimensions
  dimensions: (element) ->
    {
      width: $(element).width()
      height: $(element).height()
    }

  # Returns an object with x and y 
  mousePosition: (e) -> x: e.pageX, y: e.pageY


  # Returns the offset of the element
  offset: (element) -> $(element).offset()

  # Observe given eventName
  observe: (element, eventName, observer) -> $(element).bind eventName, observer

  # Stop observing event
  stopObserving: (element, eventName, observer) -> $(element).unbind eventName, observer


  # Utility functions
  # =================

  # Creates a shallow copy of the object
  clone: (object) -> $.extend { }, object

  # Copies all properties from sources to target
  extend: (target, sources...) -> $.extend target, sources...


# Add the adapter to the list
Opentip.addAdapter new Adapter