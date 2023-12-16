return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
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
                    "query",
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
                indent = true,
                incremental_selection = true,
                ident = true
            }
        )

        vim.cmd("set foldmethod=expr")
        vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")
        vim.cmd("set nofoldenable")
    end
}
    
