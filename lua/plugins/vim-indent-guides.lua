return {
    "preservim/vim-indent-guides",
    config = function()
		vim.cmd("let g:indent_guides_color_change_percent=2")
        vim.cmd("let g:indent_guides_start_level=2")
        vim.cmd("let g:indent_guides_guide_size=1")
		vim.cmd("IndentGuidesEnable")
    end
}
