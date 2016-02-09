function! NextDir()
    let current = split(getcwd(), '/')[-1]
    execute 'cd..'
    let list = split(globpath('.','*'), '\n')
    for i in list
        if !filereadable(i)
            let dir = split(i, '/')[-1]
            if dir > current
                execute 'cd' dir
                :e *einkunn*
                :NERDTreeCWD
                return 
          endif
      endif
  endfor
  execute 'cd' current
endfunction

function! PrevDir()
    let current = split(getcwd(), '/')[-1]
    execute 'cd..'
    let list = split(globpath('.','*'), '\n')
    for i in reverse(list)
        if !filereadable(i)
            let dir = split(i, '/')[-1]
            if dir < current
                execute 'cd' dir
                :e *einkunn*
                :NERDTreeCWD
                return 
          endif
      endif
  endfor
  execute 'cd' current
endfunction
