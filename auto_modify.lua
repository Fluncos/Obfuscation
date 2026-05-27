return function(c)
return string.format([[
local _s=[==[
%s
]==]
local _m=_s
_m=_m:gsub("%d+",function(n)local a=math.random(10,99)return"("..(tonumber(n)+a).."-"..a..")"end)
loadstring(_m)()
]],c)
end
