local harpoon = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")
require("telescope").load_extension("harpoon")


vim.keymap.set('n', '<C-Space>',harpoon_mark.add_file,{desc="Harpoon"})
vim.keymap.set('n', '<leader>s',harpoon.toggle_quick_menu,{desc="Harpoon Quick menu"})
vim.keymap.set('n', '<leader>x',"<Cmd>Telescope harpoon marks<CR>",{desc="Harpoon Telescope"})
vim.keymap.set('n', '<leader>1',function() harpoon.nav_file(1) end,{desc="Harpoon File 1"})
vim.keymap.set('n', '<leader>2',function() harpoon.nav_file(2) end,{desc="Harpoon File 2"})
