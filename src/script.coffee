# add suport css aniamtion redraw
# https://css-tricks.com/restart-css-animation/
DOMTokenList::redraw = ( token ) ->
	@remove token
	document.body.offsetWidth
	@add token
	return

document.addEventListener 'DOMContentLoaded', ->
	pulse   = document.querySelector( '.card .hint .pulse' )
	wrapper = document.querySelector( '#wrapper' )
	hint    = document.querySelector( '.hint' )

	document.querySelector( '.icon-info' ).addEventListener 'click', ->
		hint.classList.toggle    'open'
		wrapper.classList.toggle 'show'
		pulse.classList.redraw   'anima'
		return

	# preview
	setTimeout (->
		document.querySelector( '.icon-info' ).click()
		return
	), 800

	setTimeout (->
		document.querySelector( '.icon-info' ).click()
		return
	), 2000

	return
