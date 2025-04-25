return {
    "askfiy/visual_studio_code",
    priority = 1000,
    lazy = false,
    config = function()
        vim.cmd([[colorscheme visual_studio_code]])
        vim.api.nvim_set_hl(0, "MatchParen", { bold = true, bg = "#353535" })
        vim.api.nvim_set_hl(0, "Todo", { bold = true })
        vim.api.nvim_set_hl(0, "@namespace", { fg = "#C8C8C8" })
        vim.api.nvim_set_hl(0, "@parameter", { fg = "#9A9A9A" })
        vim.api.nvim_set_hl(0, "@variable", { fg = "#9CDCFE" })
        vim.api.nvim_set_hl(0, "Conditional", { fg = "#D8A0DF" })
        vim.api.nvim_set_hl(0, "Repeat", { fg = "#D8A0DF" })
        vim.api.nvim_set_hl(0, "Statement", { fg = "#D8A0DF" })
        vim.api.nvim_set_hl(0, "Exception", { fg = "#D8A0DF" })
        vim.api.nvim_set_hl(0, "Include", { fg = "#9A9A9A" })
        vim.api.nvim_set_hl(0, "PreProc", { fg = "#9A9A9A" })
        vim.api.nvim_set_hl(0, "Type", { fg = "#569CD6" })
        vim.api.nvim_set_hl(0, "Label", { fg = "#569CD6" })
        vim.api.nvim_set_hl(0, "cppAccess", { fg = "#569CD6" })
        vim.api.nvim_set_hl(0, "cppConstant", { fg = "#569CD6" })
        vim.api.nvim_set_hl(0, "@lsp.type.macro.cpp", { fg = "#BEB7FF" })
    end,
}
