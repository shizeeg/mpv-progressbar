-- default options
settings = {
	--[=[ mouse zone settings ]=]--
	-- Height of area at the bottom of the screen that expands the bar and
	-- shows times when mouse is hovered over it. Pixels.
	'hover-zone-height': 40
	-- The height of the area at the top of the screen that shows the file
	-- name when the mouse is hovered over it. Pixels.
	'top-hover-zone-height': 40

	--[=[ progress bar options ]=]--
	-- whether or not to draw the progress bar at all.
	'enable-bar': true
	-- [[ bar size options ]] --
	-- Inactive bar height. Pixels. Bar is invisible when inactive if 0.
	'bar-height-inactive': 2
	-- Active (i.e. hovered) bar height. Pixels.
	'bar-height-active': 8
	-- [[ bar color options ]] --
	-- Progress bar foreground color. Format is BGR hex because ASS is dumb.
	'bar-foreground': 'FC799E'
	'bar-background': '2D2D2D'

	--[=[ elapsed time options ]=]--
	'enable-elapsed-time': true
	-- Elapsed time foreground and background colors. BGR hex.
	'elapsed-foreground': 'FC799E'
	'elapsed-background': '2D2D2D'

	--[=[ remaining time options ]=]--
	'enable-remaining-time': true
	-- Remaining time foreground and background colors. BGR hex.
	'remaining-foreground': 'FC799E'
	'remaining-background': '2D2D2D'

	--[=[ hover time options ]=]--
	'enable-hover-time': true
	-- Hover time foreground and background colors. BGR hex.
	'hover-time-foreground': 'FC799E'
	'hover-time-background': '2D2D2D'

	--[=[ title display options ]=]--
	'enable-title': true
	-- Font size for the title. Integer.
	'title-font-size': 30
	-- Title/playlist foreground and background colors. BGR hex.
	'title-foreground': 'FC799E'
	'title-background': '2D2D2D'

	--[=[ pause indicator options ]=]--
	-- Flash an icon in the center of the screen when pausing/unpausing.
	'pause-indicator': true
	-- Pause indicator foreground and background colors. BGR hex.
	'pause-indicator-foreground': 'FC799E'
	'pause-indicator-background': '2D2D2D'

	--[=[ chapter marker options ]=]--
	-- Enable or disable chapter position markers on the progress bar
	-- entirely.
	'enable-chapter-markers': true
	-- [[ chapter marker size options ]] --
	-- Width of chapter markers in pixels. Probably want an even number.
	'chapter-marker-width': 2
	-- Width of chapter markers in pixels when the seek bar is active.
	-- Still probably want an even number.
	'chapter-marker-width-active': 4
	-- Fraction of the height of the active progress bar that chapter
	-- markers. 0 is 0, 1 is the height of the active progress bar.
	'chapter-marker-active-height-fraction': 1
	-- [[ chapter marker color options ]] --
	-- color of chapter marker before/after it has been passed. BGR hex.
	'chapter-marker-before': '7A77F2'
	'chapter-marker-after': '2D2D2D'

	--[=[ timing options ]=]--
	-- Amount of time (in seconds) to display OSD when button is pressed.
	'request-display-duration': 1
	-- How often the display is redrawn, in seconds. Affects smoothness of
	-- animations, but lower values may use more CPU (the default is
	-- negligible on my old C2D, and looks okay to me)
	'redraw-period': 0.03

	--[=[ /!\ FONT SIZE/METRICS STUFF. CHANGE AT YOUR OWN RISK /!\ ]=]--
	-- Font for displaying the title and times. Changing this may warrant
	-- modifying some of the font metrics numbers below for proper
	-- display. Not recommended.
	'font': 'Source Sans Pro Semibold'
	-- Font size for time elapsed and remaining.
	'time-font-size': 30
	-- Font size for hover time.
	'hover-time-font-size': 26
	-- Manually calculated collision/placement metrics based on font
	-- sizes. Probably want to change these if you change the font or
	-- sizes. Unfortunately, my automated solution isn't easy to set up.
	-- Pixels.
	'hover-time-left-margin': 120
	'hover-time-right-margin': 130
	-- These primarily affect animations. If the script thinks the items
	-- are off screen, they won't be drawn. Positive numbers will look
	-- goofy.
	'elapsed-offscreen-pos': -100
	'remaining-offscreen-pos': -100
	'title-offscreen-pos': -40
}

options.read_options settings, script_name
