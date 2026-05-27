-- Tabela de caracteres - Estilo A.W System
local _C = {}

-- Letras minúsculas
for i = 1, 26 do _C[i] = string.char(96 + i) end

-- Letras maiúsculas  
for i = 27, 52 do _C[i] = string.char(38 + i) end

-- Números
for i = 53, 62 do _C[i] = string.char(47 + i) end

-- Símbolos
_C[63] = "_"
_C[64] = " "
_C[65] = "."
_C[66] = ","
_C[67] = ";"
_C[68] = ":"
_C[69] = "("
_C[70] = ")"
_C[71] = "["
_C[72] = "]"
_C[73] = "{"
_C[74] = "}"
_C[75] = "'"
_C[76] = '"'
_C[77] = "="
_C[78] = "+"
_C[79] = "-"
_C[80] = "*"
_C[81] = "/"
_C[82] = "\\"

return _C
