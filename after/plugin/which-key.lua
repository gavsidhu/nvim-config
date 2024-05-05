local wk = require("which-key")


wk.register({
    -- File
    f = {
        name = "file",
        a = { "Add file to harpoon" },
        b = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", "Open File Browser" },
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        h = { "Toggle harpoon ui" },
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
        f = { "<cmd>Telescope git_files<cr>", "Git File Search" },
    },

    -- Hop
    h = {
        name = "hop",
        a = { "<cmd>HopAnywhere<cr>", "Hop Anywhere" },
        b = { "^", "Hop Beginning of Line" },
        e = { "$", "Hop End of Line" },
        c = { "<cmd>HopChar1<cr>", "Hop Character" },
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
        z = { "<cmd>undo<cr>", "Undo" },
    },
    t = {
        name = "tabs",
        n = { "<cmd>tabnew<cr>", "New Tab" },
        c = { "<cmd>tabclose<cr>", "Close Tab" }
    }
}, { prefix = "<leader>", mode = "n" })

--Visual mode
wk.register({
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
        f = { "<cmd>Telescope git_files<cr>", "Git File Search" },
    },

    -- Hop
    h = {
        name = "hop",
        c = { "<cmd>HopChar1<cr>", "Hop Character" },
        l = { "<cmd>HopLineStart<cr>", "Hop Line Start" },
        p = { "<cmd>HopPattern<cr>", "Hop Pattern" },
        w = { "<cmd>HopWord<cr>", "Hop hord" }
    },

    -- Editing (undo tree, copy, paste, surround, comments, etc...)
    e = {
        name = "edit",
        c = { "Toggle Comment" },
        d = { '"_d', "Delete Without Copying" },
        u = { "<cmd>UndotreeToggle<cr>", "Undo Tree" },
        p = { "Paste - Keep Buffer" },
        r = { "<cmd>redo<cr>", "Redo" },
        y = { '"+y', "Copy To System" },
        z = { "<cmd>undo<cr>", "Undo" },
    },
    t = {
        name = "tabs",
        n = { "<cmd>tabnew<cr>", "New Tab" },
        c = { "<cmd>tabclose<cr>", "Close Tab" }
    }
}, { prefix = "<leader>", mode = "v" })

-- Harpoon
wk.register({
    ["<M-1>"] = { "Harpoon file 1" },
    ["<M-2>"] = { "Harpoon file 2" },
    ["<M-3>"] = { "Harpoon file 3" },
    ["<M-4>"] = { "Harpoon file 4" }

}, { mode = "n" })
