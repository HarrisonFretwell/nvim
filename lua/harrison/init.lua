vim.opt.list = true
vim.opt.listchars:append("space:⋅")
require("harrison.set")
require("harrison.packer")
require("harrison.remap")
require("harrison.keymap")

vim.keymap.set({ "n", "x", "o" }, "s", "<Cmd>Svart<CR>") -- begin exact search
vim.keymap.set({ "n", "x", "o" }, "S", "<Cmd>SvartRegex<CR>") -- begin regex search
vim.keymap.set({ "n", "x", "o" }, "gs", "<Cmd>SvartRepeat<CR>") -- repeat with last accepted query
