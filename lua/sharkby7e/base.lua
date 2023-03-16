-- :help option-list
local options = {
ai   = true, 
ch   = 1, 
ea   = true,
hls  = true,
ic   = true,
is   = true,
nuw  = 4,
nu   = true, 
rnu  = true,
sw   = 2,
sta  = true,
ts   = 2,
vb   = true,
wrap = true,
background = dark
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
