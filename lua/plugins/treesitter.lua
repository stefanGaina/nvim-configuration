return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "cpp", "cmake", "make", "c", "lua" },
            highlight = {
                enable = true,
                disable = { "cpp", "c" },
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
