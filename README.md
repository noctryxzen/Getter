## Installation
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/noctryxzen/Getter/refs/heads/main/GetFS.luau"))()
```

---

## GetService
Safe `game:GetService()` wrapper, automatically `cloneref`'d and `clonefunction`'d.

```lua
local Players = GetService.Players
local RS = GetService.ReplicatedStorage
local Run = GetService.RunService
```

---

## GetFunction
Safe executor global wrapper, automatically `clonefunction`'d.

```lua
local OldNamecall = clonefunction(getrawmetatable(game).__namecall)
hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
	if GetFunction.checkcaller() then
		return OldNamecall(Self, ...)
	end
	warn("namecall:", getnamecallmethod())
	return OldNamecall(Self, ...)
end))
```
