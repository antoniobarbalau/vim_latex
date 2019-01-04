function! CreateLatex()
    w
    !pdflatex %
endfunction
" latex create
autocmd FileType tex nnoremap <Space>c :call CreateLatex()<cr><cr>
" latex verbose compilation
autocmd FileType tex nnoremap <Space>vc :call CreateLatex()<cr>
function! LatexOpenPdf()
    !xdg-open %:r.pdf &
endfunction
" latex open pdf
autocmd FileType tex nnoremap <Space>o :call LatexOpenPdf()<cr><cr>
" latex load template: read the default template and insert it
autocmd FileType tex nnoremap <Space>lt :read ~/.config/nvim/bundle/vim_tonio_latex/plugin/latex_template.tex<cr>ggdd/<--\*\*--><cr>:noh<cr>ca<
" latex mark: jump to the next mark
autocmd FileType tex noremap <Space><Space> /<--\*\*--><cr>:noh<cr>ca<



function! SectionCreate()
    w
    !python ~/.config/nvim/bundle/vim_tonio_latex/plugin/create_standalone_section.py %
endfunction
noremap <Space>sc :call SectionCreate()<cr><cr>


" latex checklist
autocmd FileType tex inoremap \cl \begin{itemize}<cr>\end{itemize}<Esc>ko
" latex check item
autocmd FileType tex inoremap \i \item[$-$]<Space>



