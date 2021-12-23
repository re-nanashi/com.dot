" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elflordv2"
hi Normal		guifg=white		guibg=black
hi Comment	    term=bold		ctermfg=DarkCyan	guifg=#80a0ff
hi Constant	    term=underline	ctermfg=Magenta		guifg=Magenta
hi Special	    term=bold		ctermfg=DarkMagenta	guifg=Red
hi Identifier   term=underline	cterm=bold			ctermfg=Cyan    guifg=#40ffff
hi Statement    term=bold		ctermfg=Yellow      gui=bold	    guifg=#aa4444
hi PreProc	    term=underline	ctermfg=LightBlue	guifg=#ff80ff
hi Type	        term=underline	guifg=#75E6DA       gui=bold
hi Function	    term=bold		ctermfg=White       guifg=White
hi Repeat	    term=underline	ctermfg=White		guifg=white
hi Operator	    ctermfg=Red		guifg=Red
hi Ignore	    ctermfg=black	guifg=bg
hi Error	    term=reverse    ctermbg=Red         ctermfg=White   guibg=Red   guifg=White
hi Todo	        term=standout   ctermbg=Yellow      ctermfg=Black   guifg=Blue  guibg=Yellow
hi VertSplit    guifg=#2b2b2b 
hi Pmenu 	    guifg=#c6cdd5   guibg=#2b2b2b
hi PmenuSel 	term=bold       guifg=#c6cdd5       guibg=#333333
hi LineNr	    term=bold       guifg=#5e5e5e 
hi Search	    guifg=#171717   guibg=DarkCyan
hi SignColumn   guifg=NONE      guibg=Black
hi Folded       guibg=#5e5e5e



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
hi link Debug		Special
