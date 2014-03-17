$ ->
  call_to_action = $("#call_to_action")
  buy_in = $("#buy_in")
  email_input = buy_in.find("#prospect_email")
  form = email_input.closest("form")

  call_to_action.click((event) ->
    event.preventDefault()
    buy_in.show()
    email_input.focus()
    call_to_action.hide()
  )

  form.on("submit", (event) ->
    if (!email_input.val())
      event.preventDefault()
      email_input.css({"border": "3px solid #940F00"})
      email_input.focus()
  )