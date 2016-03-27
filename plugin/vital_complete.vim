"=============================================================================
" FILE: plugin/vital_complete.vim
" AUTHOR: haya14busa
" License: MIT license
"=============================================================================
scriptencoding utf-8
if expand('%:p') ==# expand('<sfile>:p')
  unlet! g:loaded_vital_complete
endif
if exists('g:loaded_vital_complete')
  finish
endif
let g:loaded_vital_complete = 1
let s:save_cpo = &cpo
set cpo&vim

command! -nargs=1 VitalCompleteUpdate call vital_complete#update(<q-args>)

let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
" vim: expandtab softtabstop=2 shiftwidth=2 foldmethod=marker