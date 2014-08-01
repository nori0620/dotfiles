" unite prefix key
nnoremap [unite] <Nop>
nmap <Leader>u [unite]

" maps {{{
nmap [unite]n     <SID>(normally)
nmap [unite]c     <SID>(buffer-dir)
nmap [unite]C     <SID>(buffer-file)
nmap [unite]b     <SID>(buffer)
nmap [unite]B     <SID>(all-buffer)
"}}}

" mapped commands {{{
" files {{{
nnoremap <silent>        <SID>(normally)     :<C-u>Unite -buffer-name=files file file_rec file_mru buffer_tab file/new<CR>
nnoremap <silent>        <SID>(buffer-dir)   :<C-u>UniteWithBufferDir -buffer-name=files -prompt=buffer_dir> file file_mru buffer_tab file/new<CR>
nnoremap <silent> <expr> <SID>(buffer-file) ':<C-u>UniteWithBufferDir -buffer-name=files -prompt=buffer_dir> -input=' . expand('%:p') . ' file file_mru buffer_tab file/new<CR>'
nnoremap <silent>        <SID>(buffer)       :<C-u>Unite -buffer-name=files -prompt=buffer> buffer_tab file_mru file/new<CR>
nnoremap <silent>        <SID>(all-buffer)   :<C-u>Unite -buffer-name=files -prompt=buffer> buffer file_mru file/new<CR>
"}}}
"


