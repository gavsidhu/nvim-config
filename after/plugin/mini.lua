require('mini.pairs').setup()
--
-- require('mini.surround').setup({
--     mappings = {
--         add = '<leader>esa',        -- Add surrounding in Normal and Visual modes
--         delete = '<leader>esd',     -- Delete surrounding
--         find = '<leader>esf',       -- Find surrounding (to the right)
--         find_left = '<leader>esF',  -- Find surrounding (to the left)
--         highlight = '<leader>esh',  -- Highlight surrounding
--         replace = '<leader>esr',    -- Replace surrounding
--         update_n_lines = '<leader>esn', -- Update `n_lines`
--
--         -- suffix_last = 'l', -- Suffix to search with "prev" method
--         -- suffix_next = 'n', -- Suffix to search with "next" method
--     },
-- })

require('mini.comment').setup({
    mappings = {
        -- Toggle comment (like `gcip` - comment inner paragraph) for both
        -- Normal and Visual modes
        comment = '<leader>ec',

        -- Toggle comment on current line
        comment_line = '<leader>ec',

        -- Toggle comment on visual selection
        comment_visual = '<leader>ec',

        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        textobject = '<leader>ec',
    },
})
