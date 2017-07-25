FATEKUPRI.namespace 'Letter', (() ->
  return{
    initLetter: ->
      $(document).ready ->
        $('#letter_letter_kind').on 'change', ->
          $('.letter_type').addClass('hidden')
          $('#' + @value).removeClass( 'hidden')
        return
    # );
  }
)(jQuery)
