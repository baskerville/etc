function randomize_position ()
	local duration = mp.get_property("duration")
	local rndpos = math.random() * duration
	mp.commandv("seek", rndpos, "absolute")
end

mp.add_key_binding("`", randomize_position)
