getgenv().GetService = setmetatable({}, {
	__index = newcclosure(function(s, n)
		if not pcall(function()
			s[n] = (typeof(cloneref) == "function" and cloneref or function(s) return s end)(
				(typeof(clonefunction) == "function" and clonefunction or function(s) return s end)(game.GetService)(game, n)
			)
		end) then
			s[n] = game:GetService(n)
		end
		return s[n]
	end)
})

getgenv().GetFunction = setmetatable({}, {
	__index = newcclosure(function(s, n)
		if not pcall(function()
			s[n] = (typeof(clonefunction) == "function" and clonefunction or function(s) return s end)(getgenv()[n])
		end) then
			s[n] = getgenv()[n]
		end
		return s[n]
	end)
})
