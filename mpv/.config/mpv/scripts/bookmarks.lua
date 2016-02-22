md5 = require "md5"
utils = require "mp.utils"

bookmarks_path = os.getenv("XDG_CONFIG_HOME") .. "/mpv/scripts/bkms"

function get_filepath ()
	local filename = mp.get_property("filename")
	return utils.join_path(bookmarks_path, md5.sumhexa(filename))
end

function add_bookmark ()
	local filepath = get_filepath()
	local f = io.open(filepath, "a+")
	io.output(f)
	io.write(mp.get_property("time-pos"), "\n")
	f:close()
end

function move_to (dir)
	local filepath = get_filepath()
	local f = io.open(filepath, "r")
	if f ~= nil then
		local c = mp.get_property_number("time-pos")
		local n
		if dir == "prev" then
			n = -math.huge
		else
			n = math.huge
		end
		for line in f:lines() do
			local p = tonumber(line)
			if (dir == "prev" and p < c and p > n) or (dir == "next" and p > c and p < n) then
				n = p
			end
		end
		if math.abs(n) ~= math.huge then
			mp.commandv("seek", n, "absolute")
		end
		f:close()
	end
end

function move_to_prev ()
	move_to("prev")
end

function move_to_next ()
	move_to("next")
end

function erase_current_bookmark ()
	local filepath = get_filepath()
	local f = io.open(filepath, "r")
	if f ~= nil then
		local lines = {}
		for line in f:lines() do
			lines[#lines+1] = line
		end
		f:close()
		f = io.open(filepath, "w+")
		local c = mp.get_property_number("time-pos")
		for i = 1,#lines do
			local line = lines[i]
			local p = tonumber(line)
			if p ~= c then
				f:write(line, "\n")
			end
		end
		f:close()
	end
end

function erase_all_bookmarks ()
	os.remove(get_filepath())
end

mp.add_key_binding("F2", add_bookmark)
mp.add_key_binding("F3", move_to_prev)
mp.add_key_binding("F4", move_to_next)
mp.add_key_binding("F5", erase_current_bookmark)
mp.add_key_binding("F6", erase_all_bookmarks)
