augroup Markdown
  set spell spelllang=pt_br
  set wrap
  " Insert
  inoremap ;eq $$<CR>\begin{aligned}<CR>\end{aligned}<CR>$$<ESC>kO
  inoremap ;f \frac{}{<++>}<++><ESC>10hi
  inoremap ;i ![img](./<++>.png)<++><ESC>16hi
  inoremap ;. \cdot
  inoremap ;v \vec{}<++><ESC>4hi
  inoremap #2 ##
  inoremap #3 ###
  inoremap #4 ####
  inoremap #5 #####
  
  vnoremap ;f do<ESC>p^^"fct/\frac{<C-r>f}<del>{<C-o>$} <ESC>dF\`<hpjddk
  vnoremap ;i "mc![img](./<C-r>m.png)<ESC>
  vnoremap ;. :s/*/\cdot/g<CR><backspace>
  vnoremap ;v "mc\vec{}<ESC>h"mp
augroup END
