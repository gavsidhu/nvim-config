local wk = require("which-key")

-- wk.register({
--   f = {
--     name = "file", -- optional group name
--     f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--     r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
--     n = { "New File" }, -- just a label. don't create any mapping
--     e = "Edit File", -- same as above
--     ["1"] = "which_key_ignore",  -- special label to hide it in the popup
--     b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
--   },
-- }, { prefix = "<leader>" })


wk.register({
    ["<leader>"] = {
        -- File
        f = {
            name = "file",
            b = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", "Open File Browser" },
            f = { "<cmd>Telescope find_files<cr>", "Find File" },
            r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
            s = { function()
                require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
            end, "Search Files" },
            v = { "<cmd>Ex<cr>", "Open File Explorer" },
            t = { "<cmd>NvimTreeToggle<cr>", "Toggle File Tree" }
        },
        -- git
        g = {
            name = "git",
            f = { "<cm>Telescope git_files<cr>", "Git File Search" },
        },

        -- Hop
        h = {
            name = "hop",
            c = { "<cm>HopChar1<cr>", "Hop Character" },
            l = { "<cmd>HopLineStart<cr>", "Hop Line Start" },
            p = { "<cmd>HopPattern<cr>", "Hop Pattern" },
            w = { "<cmd>HopWord<cr>", "Hop Word" }
        },

        -- Editing (undo tree, copy, paste, surround, comments, etc...)
        e = {
            name = "edit",
            c = { "Toggle Comment" },
            u = { "<cmd>UndotreeToggle<cr>", "Undo Tree" },
            p = { "Paste - Keep Buffer" },
            r = { "<cmd>redo<cr>", "Redo" },
            y = { "Y<cr>", "Copy To System", { mode = "v" } },
            z = { "<cmd>undo<cr>", "Undo" },
        },
    },
})
