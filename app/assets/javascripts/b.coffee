@bReady = ->
  # Add smooth scrolling to all links in navbar + footer link
  $('.navbar a, footer a[href=\'#top\'], [data-object~=scroll-anchor]').on 'click', (event) ->
    # Make sure this.hash has a value before overriding default behavior
    if @hash != '' and $(@hash).length > 0
      # Prevent default anchor click behavior
      event.preventDefault()
      # Store hash
      hash = @hash
      # Using jQuery's animate() method to add smooth page scroll
      # The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate { scrollTop: $(hash).offset().top }, 900, ->
        # Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash
        return
    return
  $(window).scroll ->
    $('.slideanim').each ->
      pos = $(this).offset().top
      winTop = $(window).scrollTop()
      if pos < winTop + 1000
        $(this).addClass 'slide'
      return
    return
  return
