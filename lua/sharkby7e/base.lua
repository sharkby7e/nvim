-- :help option-list
local options = {
  si   = true,          -- autoindent
  cb   = "unnamedplus", -- clipboard
  ch   = 1,             -- cmdheight
  ea   = true,          -- windows always equal
  et   = true,          -- expand tab
  hls  = true,          -- highlight search
  ic   = true,          -- ignore case in search
  is   = true,          -- incremental search
  nu   = true,          -- numbers
  nuw  = 2,             -- number column width
  ph   = 10,            -- popup window height
  rnu  = true,          -- relative numbers
  smd  = false,         -- show mode
  sta  = true,          -- use shiftwidth when inserting tab
  scl  = "yes",         -- sign column always 2 wide (git/errors)
  sw   = 2,             -- shift width
  ts   = 2,             -- tab spaces
  vb   = true,          -- visual bell
  udf  = true,          -- undo file
  wrap = false,         -- wrap
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=250, on_visual=true}]])
