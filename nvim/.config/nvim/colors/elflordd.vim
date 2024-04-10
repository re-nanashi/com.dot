set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"GREEN - #32e37c
let g:colors_name = "elflordd"

hi Normal		guifg=white		guibg=#181818
"#131415
hi Comment	    term=bold		guifg=#7B838B
hi Constant	    term=underline	guifg=Magenta
"#e66aa6
hi Special	    term=bold		guifg=#ff5349
hi Identifier   term=underline	cterm=bold			guifg=#40ffff
hi Statement    term=bold		ctermfg=Yellow      gui=bold	    guifg=#db1f64
hi PreProc	    term=underline	ctermfg=LightBlue	guifg=#ff80ff
hi Type	        term=underline	guifg=#75E6DA       gui=bold
"#75E6DA       
hi Function	    term=bold		ctermfg=White       guifg=white
"#32e37c
hi Repeat	    term=underline	ctermfg=White		guifg=white
hi Operator	    guifg=#ff5349
hi Ignore	    ctermfg=black	guifg=bg
hi Error	    term=reverse    guibg=White         guifg=#db1f64
hi Todo	        term=standout   ctermbg=Yellow      ctermfg=Black   guifg=#552583 guibg=#FDB927
hi VertSplit    guifg=#2b2b2b 
hi Pmenu 	    guifg=#c6cdd5   guibg=#2b2b2b
hi PmenuSel 	term=bold       guifg=#c6cdd5       guibg=#333333
hi LineNr	    term=bold       guifg=#db1f64
hi LineNrAbove	term=bold       guifg=#5e5e5e 
hi LineNrBelow  term=bold       guifg=#5e5e5e 
hi Search	    guifg=#171717   guibg=DarkCyan
hi SignColumn   guifg=NONE      guibg=NONE
hi ColorColumn  guibg=#595959
hi Folded       guibg=#5e5e5e
hi ModeMsg		guifg=#db1f64
"Magenta
hi Directory	guifg=#969696
hi NonText	    guifg=#7B838B
hi ErrorMsg	    term=reverse    guibg=White         guifg=#db1f64
"#db1f64

" Common groups that link to default highlighting.
" You can specify other highlighting easily.

set fillchars+=vert:\ 
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug	    Error	
