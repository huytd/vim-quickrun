function! quickrun#execute()
  silent! wall
  let file_name = expand('%:t:r')
  let extension = expand('%:e')
  let runner = ""
  if extension == "js"
    let runner = "node"
  endif
  if extension == "rb"
    let runner = "ruby"
  endif
  if extension == "go"
    let runner = "go run"
  endif
  if runner == ""
    echoerr "File type not supported!"
  else
    execute "!".runner." ".file_name.".".extension
  endif
endfunction

command! QuickRunExecute call quickrun#execute()
