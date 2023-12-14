vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set numberwidth=4")
vim.cmd("set nowrap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "nvim-telescope/telescope.nvim", tag = "0.1.5", dependencies = { "nvim-lua/plenary.nvim" }},
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }
}


local opts = {}
require("lazy").setup(plugins, opts)

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

local config = require("nvim-treesitter.configs")
config.setup(
    {
        ensure_installed = { 
            "lua", 
            "vim", 
            "vimdoc", 
            "query", 
            "awk", 
            "bash",
            "c",
            "cpp",
            "c_sharp",
            "css", 
            "html", 
            "cmake", 
            "cpp", 
            "css", 
            "cuda",
            "diff",
            "dockerfile", 
            "git_config", 
            "git_rebase", 
            "gitattributes", 
            "gitignore", 
            "gitcommit", 
            "glsl",
            "hlsl",
            "http",
            "html",
            "ini",
            "java",
            "javascript",
            "jsdoc",
            "json",
            "latex",
            "llvm",
            "lua",
            "luadoc",
            "make",
            "markdown",
            "objdump",
            "passwd",
            "pem",
            "perl",
            "php",
            "qmldir",
            "qmljs",
            "regex",
            "solidity",
            "sql",
            "ssh_config",
            "strace",
            "typescript",
            "udev",
            "vim",
            "vimdoc",
            "vue",
            "xml",
            "yaml"
        },
        sync_install = false,
        highlight = true,
        indent = true
    }
)

vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})
