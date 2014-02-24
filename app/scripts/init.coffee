# Angular initialization only (and global scope handlers)
# use appropriate directories for controllers/directives etc.

window.onload = ->
	audioEl = document.getElementById("backsound")
	audioEl.load()
	audioEl.play()
if (navigator.userAgent.match(/iPhone/i))
	$('#viewport').attr('content', 'width=device-width,minimum-scale=0.8,maximum-scale=0.8,initial-scale=0.8')


$ ->
	setTimeout ->
		TweenMax.to('.canvas', 0.7, {opacity: 0})
		TweenMax.to('#grid_canvas', 0.7, {opacity: 1})
		
		TweenMax.to('.container.purple', 0.7, {opacity: 0, onComplete: ->
			$('.yellow').css
				display: "table"
				opacity: 1
			$('.purple, .canvas').css
				display: "none"
			
			$('#main_canvas').remove()
			$('#vector_canvas').remove()
			
			initgrid()
			
		})
		

		
	, 30000


