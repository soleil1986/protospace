$(document).on 'ready page:load', ->
  $('.admin-prototypes #prototype-tags').tagit
    fieldName:   'prototype[tag_list]'
    singleField: true

  if gon.prototype_tags?
    for tag in gon.prototype_tags
      $('#prototype-tags').tagit 'createTag', tag
