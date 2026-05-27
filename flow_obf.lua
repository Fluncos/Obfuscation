return function(c)
local l={}
local i=0
for line in c:gmatch("[^\n]+") do
i=i+1
l[#l+1]=string.format([[local _%d=0 repeat if _%d==0 then %s _%d=1 end until _%d==1]],i,i,line,i,i)
end
return table.concat(l,"\n")
end
