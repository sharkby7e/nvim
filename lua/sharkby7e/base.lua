-- :help option-list
local options = {
ai   = true, 
ch   = 1, 
ea   = true,
et   = true,
hls  = true,
ic   = true,
is   = true,
nu   = true, 
nuw  = 4,
rnu  = true,
smd  = false,
sta  = true,
sw   = 2,
ts   = 2,
vb   = true,
wrap = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
