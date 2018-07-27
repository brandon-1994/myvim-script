if lightline#colorscheme#background() ==# 'light'
  let s:gry0 = '#fcf1e4'
  let s:gry1 = '#f0e5d8'
  let s:gry2 = '#6a6b84'
  let s:red_ = '#e7313e'
  let s:orng = '#cb6300'
  let s:gren = '#008e00'
  let s:blue = '#007cd1'
else
  let s:gry0 = '#272838'
  let s:gry1 = '#353646'
  let s:gry2 = '#9e8f7d'
  let s:red_ = '#d07967'
  let s:orng = '#bb8d6b'
  let s:gren = '#93a27c'
  let s:blue = '#87a5ce'
endif

let s:p = { 'normal' : {} , 'inactive': {} , 'insert'  : {} ,
          \ 'replace': {} , 'visual'  : {} , 'tabline' : {} }

let s:p.normal.left     = [[ s:gry0, s:gry2 ], [ s:gry2, s:gry1 ]]
let s:p.normal.middle   = [[ s:gry2, s:gry1 ]]
let s:p.normal.right    = [[ s:gry0, s:gry2 ], [ s:gry0, s:gry2 ]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:gry0, s:gren ]]
let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]

let s:p.visual.left     = [[ s:gry0, s:blue ]]
let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = [[ s:gry0, s:gry2 ]]
let s:p.tabline.tabsel  = copy(s:p.normal.middle)
let s:p.tabline.right   = [[ s:gry0, s:gry2 ]]

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:orng, s:gry0 ]]

let g:lightline#colorscheme#stellarized#palette =
  \ lightline#colorscheme#fill(s:p)
