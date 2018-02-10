function IsReply()
    if line('$') > 1
        :1
        :put! =\"\n\n\"
        :1
    endif
endfunction

augroup mail_filetype
    autocmd!
    autocmd VimEnter *mutt* :call IsReply()
    autocmd VimEnter *mutt* :exe 'startinsert'
augroup END

setl tw=1000
setl fo=aw
