return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    -- Existing languages
                    "lua_ls",
                    "cssls",
                    "html",
                    "emmet_ls",

                    -- Added languages
                    "ts_ls",              -- TypeScript
                    "volar",              -- Vue
                    "tailwindcss",        -- Tailwind CSS
                    "dockerls",           -- Docker
                    "docker_compose_language_service", -- Docker Compose
                    "marksman",           -- Markdown
                    "eslint",             -- JavaScript/TypeScript linting
                    "gopls",              -- Go
                    "svelte",             -- Svelte
                    "prismals",           -- Prisma
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
            lsp_capabilities.textDocument.completion.completionItem.snippetSupport = true

            -- Emmet Language Server
            lspconfig.emmet_ls.setup({
                capabilities = lsp_capabilities,
                filetypes = {
                    "css",
                    "html",
                    "javascript",
                    "javascriptreact",
                    "sass",
                    "scss",
                    "svelte",
                    "typescript",
                    "typescriptreact",
                    "vue",
                    "markdown",
                },
                init_options = {
                    html = {
                        options = {
                            ["bem.enabled"] = true,
                        },
                    },
                },
            })

            -- HTML Language Server
            lspconfig.html.setup({
                capabilities = lsp_capabilities,
            })

            -- CSS Language Server
            lspconfig.cssls.setup({
                capabilities = lsp_capabilities,
            })

            -- Tailwind CSS Language Server
            lspconfig.tailwindcss.setup({
                capabilities = lsp_capabilities,
            })

            -- TypeScript Language Server
            lspconfig.ts_ls.setup({
                capabilities = lsp_capabilities,
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = true
                end,
            })

            -- Vue Language Server (Volar)
            lspconfig.volar.setup({
                capabilities = lsp_capabilities,
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = true
                end,
            })

            -- Docker Language Server
            lspconfig.dockerls.setup({
                capabilities = lsp_capabilities,
            })

            -- Docker Compose Language Service
            lspconfig.docker_compose_language_service.setup({
                capabilities = lsp_capabilities,
            })

            -- Markdown Language Server
            lspconfig.marksman.setup({
                capabilities = lsp_capabilities,
            })

            -- ESLint Language Server
            lspconfig.eslint.setup({
                capabilities = lsp_capabilities,
            })

            -- Prisma Language Server
            lspconfig.prismals.setup({
                capabilities = lsp_capabilities,
            })

            -- Lua Language Server
            lspconfig.lua_ls.setup({
                capabilities = lsp_capabilities,
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = true
                end,
            })

            -- Svelte Language Server
            lspconfig.svelte.setup({
                capabilities = lsp_capabilities,
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = true
                end,
            })

            -- Go Language Server
            lspconfig.gopls.setup({
                capabilities = lsp_capabilities,
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = true
                end,
            })

            -- Keymaps
            local opts = { noremap = true, silent = true }

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

            -- Code actions
            vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)

            vim.keymap.set("n", "<C-p>", vim.diagnostic.goto_prev, opts)
            vim.keymap.set("n", "<A-p>", vim.diagnostic.goto_next, opts)
            vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)

            vim.keymap.set("n", "<C-K>", vim.lsp.buf.signature_help, opts)
            vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
            vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
            vim.keymap.set("n", "<leader>wl", function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, opts)
            vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            vim.keymap.set("n", "<leader>E", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
        end,
    },
}
