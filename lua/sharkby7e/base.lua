-- :help option-list
local options = {
  ai   = true,            -- autoindent
  cb   = "unnamedplus",   -- clipboard
  ch   = 1,               -- cmdheight
  ea   = true,            -- windows always equal
  et   = true,            -- expand tab
  hls  = true,            -- highlight search
  ic   = true,            -- ignore case in search 
  is   = true,            -- incremental search
  nu   = true,            -- numbers
  nuw  = 4,               -- number column width
  rnu  = true,            -- relative numbers
  smd  = false,           -- show mode 
  sta  = true,            -- use shiftwidth when inserting tab
  sw   = 2,               -- shift width
  ts   = 2,               -- tab spaces  
  vb   = true,            -- visual bell
  udf  = true,            -- undo file 
  wrap = false,           -- wrap
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}]])
