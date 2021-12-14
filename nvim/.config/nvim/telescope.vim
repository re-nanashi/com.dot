lua << EOF
require('telescope').setup {
    defaults = {
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
            '-u' 
            },
        file_ignore_patterns = {"node_modules", "git"}
        },
    extensions = {
        fzf = {
            fuzzy = true,                    
            override_generic_sorter = false, 
            override_file_sorter = false,    
            case_mode = "smart_case",       
            }
        }
    }

require('telescope').load_extension('fzf')
EOF

"FIND FILES USING TELESCOPE COMMAND-LINE SUGAR.
nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <leader>lf <cmd>Telescope live_grep<cr>
nnoremap <leader>pf <cmd>Telescope buffers<cr>
nnoremap <leader>hf <cmd>Telescope help_tags<cr>
