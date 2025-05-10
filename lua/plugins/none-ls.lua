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
                local filepath = vim.api.nvim_buf_get_name(0)
                local dir = vim.fs.dirname(filepath)
                local has_clang_format = vim.fs.find(".clang-format", {
                    upward = true,
                    path = dir,
                    stop = vim.loop.os_homedir(),
                })[1]

                if has_clang_format then
                    vim.lsp.buf.format({ async = false })
                end
            end,
        })
    end,
}
