function! CreateLatex()
    w
    !pdflatex %
endfunction
" latex create
nnoremap <Space>lc :call CreateLatex()<cr><cr>
" latex verbose compilation
nnoremap <Space>lvc :call CreateLatex()<cr>
function! LatexOpenPdf()
    !xdg-open %:r.pdf &
endfunction
" latex open pdf
nnoremap <Space>lo :call LatexOpenPdf()<cr><cr>
" latex load template: read the default template and insert it
nnoremap <Space>lt :read ~/.config/nvim/bundle/vim_tonio_latex/plugin/latex_template.tex<cr>ggdd/<--\*\*--><cr>:noh<cr>ca<
" latex mark: jump to the next mark
autocmd FileType tex noremap <Space><Space> /<--\*\*--><cr>:noh<cr>ca<


" latex checklist
autocmd FileType tex noremap \cl \begin{itemize}<cr>\end{itemize}<cr><esc>ko
" latex check item
autocmd FileType tex noremap \i \item[$-$]<Space>



