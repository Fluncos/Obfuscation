local function encode(str,table)
local r={}
for i=1,#str do
local c=str:sub(i,i)
for k,v in pairs(table) do
if v==c then
local a=math.random(k+100,k+500)
r[#r+1]="("..a.."-"..(a-k)..")"
break
end
end
end
return"t["..table.concat(r,"..t[").."]"
end

local function generateTable()
local t={}
local idx={}
for i=1,82 do
local v=_C[i]
local x=math.random(100000,999999)
idx[i]=x
t[x]=v
end
return t,idx
end

local function main(code,level)
local charTable,_=generateTable()
local obf=code
obf=obf:gsub('"([^"]+)"',function(s)return encode(s,charTable)end)
if level=="high" then
obf=(loadstring(game:HttpGet(conf.techniques.flow_obf))())(obf)
end
obf=(loadstring(game:HttpGet(conf.techniques.auto_modify))())(obf)
return obf
end

return main
