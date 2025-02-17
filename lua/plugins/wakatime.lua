return {
    "wakatime/vim-wakatime",
    lazy = false,
    config = function()
        vim.cmd([[ 
            let g:wakatime_CLIPath = "~/.wakatime/wakatime-cli"
        ]])
    end,
}
