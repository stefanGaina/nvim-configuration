return {
    "luochen1990/rainbow",
    event = { "BufReadPre", "BufNewFile" },
    init = function()
        vim.g.rainbow_active = 1
    end,
    config = function()
        vim.g.rainbow_conf = {
            guifgs = { "#FAFA00", "#FF33FF", "#3399FF", "#FF6666" },
        }

        vim.cmd("RainbowToggleOn")
    end,
}
