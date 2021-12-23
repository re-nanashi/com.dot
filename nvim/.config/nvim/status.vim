"MINIMAL POWERLINE                                                                                                                                                                                        
let g:last_mode = ""                                                                                                                                                                                   

function! Mode()                                                                                                                                                                                       
    let l:mode = mode()                                                                                                                                                                                  

    if l:mode !=# g:last_mode "Mode change                                                                                                                                                               
        let g:last_mode = l:mode                                                                                                                                                                           
        if     mode ==# "n"  | hi User2 guibg=NONE ctermfg=28  ctermbg=22  cterm=bold 
        elseif mode ==# "i"  | hi User2 guibg=NONE ctermfg=23  ctermbg=231 cterm=bold 
        elseif mode ==# "R"  | hi User2 guibg=NONE ctermfg=231 ctermbg=160 cterm=bold 
        elseif mode ==? "v"  | hi User2 guibg=NONE ctermfg=160 ctermbg=208 cterm=bold 
        elseif mode ==# "^V" | hi User2 guibg=NONE ctermfg=160 ctermbg=208 cterm=bold 
        endif                                                                                                                                                                                              
    endif                                                                                                                                                                                                

    if     mode ==# "n"  | return "  NORMAL "                                                                                                                                                            
    elseif mode ==# "i"  | return "  INSERT "                                                                                                                                                            
    elseif mode ==# "R"  | return "  REPLACE "                                                                                                                                                           
    elseif mode ==# "v"  | return "  VISUAL "                                                                                                                                                            
    elseif mode ==# "V"  | return "  V·LINE "                                                                                                                                                            
    elseif mode ==# "^V" | return "  V·BLOCK "                                                                                                                                                           
    elseif mode ==# "c" | return "  CMD "                                                                                                                                                           
    else                 | return "\ MODE:" . l:mode . " "
    endif                                                                                                                                                                                                
endfunc                                                                                                                                                                                                

hi link User2 Statusline                                                                                                                                                                               
hi Statusline cterm=NONE                                                                                                                                                                               
"hi User1 guibg=#000000 ctermfg=231 ctermbg=236 cterm=bold                                                                                                                                                            
hi User2 guibg=NONE ctermfg=28  ctermbg=22  cterm=bold
"hi User3 guibg=#000000 ctermfg=28  ctermbg=22  cterm=bold
"hi User4 guibg=#000000 ctermfg=28  ctermbg=22  cterm=bold
"hi User5 guibg=#000000 ctermfg=28  ctermbg=22  cterm=bold

function! StatusDiagnostic() abort
    let info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let msgs = []
    if get(info, 'error', 0)
        call add(msgs, 'ERROR: ' . info['error'])
    endif
    if get(info, 'warning', 0)
        call add(msgs, 'W' . info['warning'])
    endif
    return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

set laststatus=2 
set statusline=%2*%{Mode()}%3*\ ⮀\ \ %t%1*%=%{StatusDiagnostic()}%{&enc}\ ⮃\ [%5*%{tolower(&ft)}%1*                                                                                                                      
"set statusline+=,%6*%{&mod?'+':''}%1*%{&mod?'':'-'}                                                                                                                                                    
set statusline+=%{&ro?',':''}%6*%{&ro?'⭤':''}%1*]\ [⭡\ %03l:%4*%03v%1*]
let g:NERDTreeStatusline = '%#NonText#'

" TAB LINE
let g:xtabline_settings = get(g:, 'xtabline_settings', {})
let g:xtabline_settings = {
            \ 'theme':                    'paramount',
            \ 'tabline_modes':            ['buffers', 'tabs'],
            \}
let g:xtabline_lazy = 1
