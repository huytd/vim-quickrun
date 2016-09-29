function! quickrun#execute(isfull)
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
  if extension == "py"
    let runner = "python"
  endif
  if extension == "swift"
    let runner = "swift"
  endif
  if runner == ""
    echoerr "File type not supported!"
  else
    if a:isfull == "true"
      execute ":term ".runner." ".file_name.".".extension
    endif
    if a:isfull == "false"
      execute ":!".runner." ".file_name.".".extension
    endif
  endif
endfunction

command! QuickRunExecute call quickrun#execute("false")
command! QuickRunExecuteFullScreen call quickrun#execute("true")
