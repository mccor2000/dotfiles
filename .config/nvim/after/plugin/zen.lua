vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle({
        window = {
            backdrop = 0.85,
            width = 120,
            height = 1,
            options = { }
        },
        plugins = {
            tmux = { enabled = false },
        },
    })
end)
