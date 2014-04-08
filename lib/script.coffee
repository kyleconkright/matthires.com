$ ->

	$.ajax
		url: 'http://api.bandsintown.com/artists/matthires/events.json?callback=?&app_id=hires'
		type: 'GET'
		dataType: 'json'
		success: (data) ->
			$.each data, ->
				$('<li></li>')
				.append('<p class="venue">' + this.venue.name + '</p><p class="city">' + this.venue.city + ', ' + this.venue.region + '</p>')
				.appendTo('.dates')