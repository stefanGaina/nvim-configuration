return {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.clang_format,
            },
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
            callback = function()
                vim.lsp.buf.format({ async = false })
            end,
        })
    end,
}
