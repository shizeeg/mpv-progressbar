class BarAccent extends UIElement
	barSize = settings['bar-height-active']

	new: =>
		super!
		@yPos = Window.h - barSize

	resize: =>
		@yPos = Window.h - barSize
		@needsUpdate = true

	redraw: =>
		if @barSize != barSize
			@barSize = barSize
			@resize!

	-- This is still weird although perhaps somewhat less semantically confusing.
	-- Moonscript subclasses do inherit class methods.
	@changeBarSize: ( size ) ->
		barSize = size
