pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
function _init()
	tc = 0
end

function _update()
	tc += 1
end

function _keydown(key)
	if key == "escape" then
		load("nocart.p8")
		run()
	end
end

function _keyup(key)
end

function _textinput(text)
end

function _touchup()
end

function _draw()
	-- render background
	cls(1)
	rectfill(0, 0, 128, 7, 8)
	rectfill(0, 121, 128, 128, 8)

	-- render dummy content
	print("todo: editor", 1, 9, 6)
	print("press esc to quit", 1, 21, 6)

	-- render caret
	if tc % 16 < 8 then
		rectfill((15 + 2) * 4, 20, (15 + 2) * 4 + 4, 20 + 5, 8)
	end

	-- render toolbar
	rectfill(3, 1, 10, 7, 14)
	print("+", 2, -1, 8)
	print("0", 6, 2, 8)
	print("+", 15, 2, 14)

	-- render statusline
	print("line 3/3", 1, 122, 2)
	print("        6/8192  ", 65, 122, 2)
	print("-", 123, 120, 6)
	print("-", 123, 122, 2)
	print("-", 123, 124, 2)
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
