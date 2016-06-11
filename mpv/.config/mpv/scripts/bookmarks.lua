md5 = require "md5"
utils = require "mp.utils"
msg = require "mp.msg"

bookmarks_path = os.getenv("XDG_CONFIG_HOME") .. "/mpv/scripts/bkms"
epsilon_duration = 0.1

function get_filepath ()
	local filename = mp.get_property("filename")
	return utils.join_path(bookmarks_path, md5.sumhexa(filename))
end

function add_bookmark ()
	local filepath = get_filepath()
	local f = io.open(filepath, "a+")
	local c = mp.get_property_number("time-pos")
	mp.osd_message(string.format("Add bookmark: %f", c))
	io.output(f)
	io.write(c, "\n")
	f:close()
end

function move_to (dir)
	local filepath = get_filepath()
	local f = io.open(filepath, "r")
	if f ~= nil then
		local c = mp.get_property_number("time-pos")
		local n = -math.huge
		if dir == "next" then
			n = math.huge
		end
		for line in f:lines() do
			local p = tonumber(line)
			if math.abs(p-c) > epsilon_duration and ((dir == "previous" and p < c and p > n) or (dir == "next" and p > c and p < n)) then
				n = p
			end
		end
		if math.abs(n) ~= math.huge then
			mp.commandv("seek", n, "absolute")
			mp.osd_message(string.format("Move to %s bookmark: %f", dir, n))
		end
		f:close()
	end
end

function move_to_prev ()
	move_to("previous")
end

function move_to_next ()
	move_to("next")
end

function remove_current_bookmark ()
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
			if math.abs(p-c) > epsilon_duration then
				f:write(line, "\n")
			else
				mp.osd_message(string.format("Remove bookmark: %f", p))
			end
		end
		f:close()
	end
end

function remove_all_bookmarks ()
	mp.osd_message("Remove all bookmarks")
	os.remove(get_filepath())
end

function print_bookmarks_path ()
	msg.info(get_filepath())
end

mp.add_key_binding("F2", add_bookmark)
mp.add_key_binding("F3", move_to_prev)
mp.add_key_binding("F4", move_to_next)
mp.add_key_binding("F5", remove_current_bookmark)
mp.add_key_binding("F6", remove_all_bookmarks)
mp.add_key_binding("F12", print_bookmarks_path)
