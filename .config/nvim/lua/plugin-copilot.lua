-- Setup GitHub Copilot

require("copilot").setup({
    suggestion = { enabled = false },
    panel = { enabled = false },
    copilot_node_command = 'node'
})

require("copilot_cmp").setup()

require("CopilotChat").setup({
    mappings = {
        close = {
            normal = 'q',
            insert = '<ESC>',
        },
    },
})
