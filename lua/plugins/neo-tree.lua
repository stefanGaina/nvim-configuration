return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        { "3rd/image.nvim", opts = {} },
    },
    lazy = false,
    config = function()
        vim.keymap.set('n', "<C-n>", ":Neotree toggle<CR>", { silent = true })
        vim.cmd([[autocmd VimEnter * Neotree show]])
    end,
}
