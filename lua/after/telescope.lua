local builtin = require('telescope.builtin')
local projects = require('telescope').load_extension('project')
local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions


vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc="Find files"})
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {desc="Find files"})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {desc="Search files"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc="Open buffers"})
vim.keymap.set('n', '<leader>fl', function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
	})
	end,
	{desc="Open file browser"})
vim.keymap.set('n', '<leader>k', builtin.help_tags, {desc="Command list"})
vim.keymap.set('n', '<leader>pf', "<cmd>Telescope find_project_files<CR>", {desc="Find project files"})
vim.keymap.set('n', '<leader>pp', "<cmd>Telescope project<CR>", {desc="Projects"})
vim.keymap.set('n', '<leader>pw', "<cmd>Telescope change_working_directory<CR>", {desc="Change working directory"})

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}
telescope.load_extension("file_browser")

vim.keymap.set("n", "<leader>sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}
