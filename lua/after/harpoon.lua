local harpoon = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")
require("telescope").load_extension("harpoon")


vim.keymap.set('n', '<leader>hs',harpoon_mark.add_file,{desc="Harpoon"})
vim.keymap.set('n', '<leader>hm',harpoon.toggle_quick_menu,{desc="Harpoon Quick menu"})
vim.keymap.set('n', '<leader>hh',"<Cmd>Telescope harpoon marks<CR>",{desc="Harpoon Telescope"})
vim.keymap.set('n', '<leader>1',function() harpoon.nav_file(1) end,{desc="Harpoon File 1"})
vim.keymap.set('n', '<leader>2',function() harpoon.nav_file(2) end,{desc="Harpoon File 2"})
vim.keymap.set('n', '<leader>3',function() harpoon.nav_file(3) end,{desc="Harpoon File 3"})
vim.keymap.set('n', '<leader>4',function() harpoon.nav_file(4) end,{desc="Harpoon File 4"})
vim.keymap.set('n', '<leader>5',function() harpoon.nav_file(5) end,{desc="Harpoon File 5"})
