return {
    "folke/tokyonight.nvim",
    priority = 1000, -- Ensure it loads first,
    config = function()
        vim.cmd("colorscheme tokyonight-moon")
    end
}
