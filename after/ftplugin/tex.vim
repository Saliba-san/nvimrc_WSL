augroup Latex
  let g:tex_flavor = 'pdflatex'
	set spell spelllang=pt_br
  set wrap
	" Insert
	inoremap ;fig \begin{figure}[H]<CR>\centering<CR>\includegraphics{}<CR>\captions{}\label{}<CR>\end{figure}<ESC>2kwa
	inoremap ;p \usepackage{}<left>
	inoremap ;eq \begin{equation}<cr>\end{equation}o
	inoremap ;s \section{}<left>
	inoremap ;i \emph{}<left>
	inoremap ;b \bold{}<left>
	inoremap ;r \ref{}<left>
	
	vnoremap ;$ c$<ESC>pa$<ESC>
	vnoremap ;i c\emph{<ESC>pa}<ESC>
	vnoremap ;b c\bold{<ESC>pa}<ESC>
	vnoremap ;r c\ref{<ESC>pa}<ESC>
augroup END
