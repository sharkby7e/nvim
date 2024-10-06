return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-k>",  "<cmd>TmuxNavigateLeft<cr>" },
    { "<c-n>",  "<cmd>TmuxNavigateDown<cr>" },
    { "<c-e>",  "<cmd>TmuxNavigateUp<cr>" },
    { "<c-h>",  "<cmd>TmuxNavigateRight<cr>" },
    { "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
  },
}
