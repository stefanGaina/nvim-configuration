return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            current_line_blame = true,
            current_line_blame_opts = {
            delay = 500,
            virt_text_pos = "eol",
            },
        })
        vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { fg = "#444444" })
    end
}
