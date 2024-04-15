let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd E:/OneDrive/backup/rime/公用/龙码
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +154488 long_ci_fei.txt
badd +28 jisuan_doyinzi_1.py
badd +1 data/doyinzi.txt
badd +1 zrmdb.txt
badd +106 gen_aux_5.py
badd +189 extend_ci.yaml
badd +41066 tigress_ci.dict.yaml
argglobal
%argdel
$argadd long_ci_fei.txt
edit long_ci_fei.txt
argglobal
<<<<<<< HEAD
balt jisuan_doyinzi_1.py
=======
balt extend_ci.yaml
>>>>>>> 6146027fa9e3b516de70ad371f6d925b6ba3ed16
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
<<<<<<< HEAD
let s:l = 154488 - ((17 * winheight(0) + 18) / 36)
=======
let s:l = 154487 - ((17 * winheight(0) + 18) / 36)
>>>>>>> 6146027fa9e3b516de70ad371f6d925b6ba3ed16
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 154488
normal! 09|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
