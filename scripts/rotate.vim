function Rotate(char,vimode,newwin) range
if a:char==""
let s:flag="x"
else
let s:flag=tolower(a:char)
endif
setlocal report=996
if a:vimode==0
exe a:firstline.",".a:lastline."y"
else
norm! gvy
endif
new
setlocal tw=0
put
1d_
let s:maxlen=0
%g/^/if col("$")>s:maxlen|let s:maxlen=col("$")|endif
%g/^/if col("$")<s:maxlen|exe "norm! ".(s:maxlen-col("$"))."A \<Esc>"|endif
let s:maxlen=s:maxlen-1
kc
if s:flag=="x"
let s:cpos=0
while s:cpos<s:maxlen
call setreg(0,"")
let s:lpos=1
while s:lpos<=line("'c")
call setreg(0,getline(s:lpos)[s:cpos],"a")
let s:lpos=s:lpos+1
endwhile
put0
let s:cpos=s:cpos+1
endwhile
unlet s:lpos
unlet s:cpos
1,'cd_
endif
if s:flag=="l"
let s:cpos=s:maxlen-1
while s:cpos>=0
call setreg(0,"")
let s:lpos=1
while s:lpos<=line("'c")
call setreg(0,getline(s:lpos)[s:cpos],"a")
let s:lpos=s:lpos+1
endwhile
put0
let s:cpos=s:cpos-1
endwhile
unlet s:lpos
unlet s:cpos
1,'cd_
endif
if s:flag=="r"
let s:cpos=0
while s:cpos<s:maxlen
call setreg(0,"")
let s:lpos=line("'c")
while s:lpos>0
call setreg(0,getline(s:lpos)[s:cpos],"a")
let s:lpos=s:lpos-1
endwhile
put0
let s:cpos=s:cpos+1
endwhile
unlet s:lpos
unlet s:cpos
1,'cd_
endif
if s:flag=="u"
let s:lpos=line("'c")
while s:lpos>0
call setreg(0,"")
let s:cpos=s:maxlen-1
while s:cpos>=0
call setreg(0,getline(s:lpos)[s:cpos],"a")
let s:cpos=s:cpos-1
endwhile
put0
let s:lpos=s:lpos-1
endwhile
unlet s:cpos
unlet s:lpos
1,'cd_
endif
if s:flag=="h"
exe "norm! G0mc\<C-V>god$p"
while col(".")>2
norm! h`c
exe "keepj norm! \<C-V>god"
norm! ``P
endwhile
endif
if s:flag=="v"
2,$g/^/m0
endif
norm! go
unlet s:maxlen
unlet s:flag
if a:newwin==0
exe "norm! go\<C-V>G$y"
q!
if a:vimode==0
exe "norm! ".a:firstline."GV".a:lastline."Gp"
else
norm! gvp
endif
endif
endfunction

command -range -nargs=? Rot <line1>,<line2>call Rotate(<q-args>,0,0)
command -range -nargs=? Srot <line1>,<line2>call Rotate(<q-args>,0,1)
command -range -nargs=? Rotv <line1>,<line2>call Rotate(<q-args>,1,0)
command -range -nargs=? Srotv <line1>,<line2>call Rotate(<q-args>,1,1)
