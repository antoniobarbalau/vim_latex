function! CreateLatex()
    w
    !pdflatex %
endfunction
" latex create
nnoremap lc :call CreateLatex()<cr><cr>


" latex verbose compilation
nnoremap lcv :call CreateLatex()<cr>

function! LatexOpenPdf()
    !xdg-open %:r.pdf &
endfunction
" latex open pdf
nnoremap lop :call LatexOpenPdf()<cr><cr>


" latex checklist
nnoremap lcl i\begin{itemize}<cr>\end{itemize}<cr><esc>
" latex check item
nnoremap lci o\item[$-$] 


" latex mark: jump to the next mark
nnoremap lm /<--\*\*--><cr>:noh<cr>ca<
" latex load template: read the default template and insert it
nnoremap llt :read ~/.config/nvim/bundle/vim_tonio_latex/plugin/latex_template.tex<cr>ggdd/<--\*\*--><cr>:noh<cr>ca<


