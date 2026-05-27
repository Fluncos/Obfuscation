local GITHUB = "https://raw.githubusercontent.com/Fluncos/Obfuscation/main"

local _T = loadstring(game:HttpGet(GITHUB .. "/char_table.lua"))()
local _F = loadstring(game:HttpGet(GITHUB .. "/flow_obf.lua"))()
local _A = loadstring(game:HttpGet(GITHUB .. "/auto_modify.lua"))()

local _code = [==[
-- Seu script original ofuscado vem aqui
print("oi")
]==]

_code = _F(_code)
_code = _A(_code)
loadstring(_code)()
