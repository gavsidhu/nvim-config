require('telescope').setup {
    extensions = {
        file_browser = {
            -- other configuration options...
            hidden = {
                file_browser = true,  -- Show hidden files in file_browser
                folder_browser = true -- Show hidden files in folder_browser
            },
            -- other configuration options...
        }
    }
}

require('telescope').load_extension('file_browser')
