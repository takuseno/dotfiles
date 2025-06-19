require("remote-nvim").setup({
    remote = {
        copy_dirs = {
            data = {
                dirs = { "site" },
                compression = {
                    enabled = true,
                },
            },
        },
    },
})
