return {
    "neovim/nvim-lspconfig",
    config = function()
        local on_attach = function(_, bufnr)
            local opts = { buffer = bufnr }
            local map = vim.keymap.set
            map("n", "gd", vim.lsp.buf.definition, opts)
            map("n", "K", vim.lsp.buf.hover, opts)
            map("n", "<leader>rn", vim.lsp.buf.rename, opts)
            map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
        end

    require("lspconfig").clangd.setup({
        on_attach = on_attach,
        capabilities = vim.lsp.protocol.make_client_capabilities(),
    })
    end,
}
