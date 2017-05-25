hi clear
syntax reset
set background=dark

let g:colors_name = "material-palenight"

let NONE="NONE"
let BACKGROUND="#1E202F"
let COMMENTS="#676E95"
let FOREGROUND="#9599BE"

let WHITE="#FFFFFF"
let BLACK="#000000"
let RED="#FF5370"
let ORANGE="#F78C6C"
let YELLOW="#FFCB6B"
let GREEN="#C3E88D"
let CYAN="#89DDFF"
let BLUE="#82AAFF"
let PALEBLUE="#B2CCD6"
let PURPLE="#C792EA"
let BROWN="#C17E70"
let PINK="#F07178"
let VIOLET="#BB80B3"

let Colors = {}
let Colors['Normal'] = { "guibg": BACKGROUND, "guifg": FOREGROUND }

" FOREGROUND
let Colors['jsVariableDef'] = { "guibg": NONE, "guifg": FOREGROUND }

" COMMENTS
let Colors['jsEnvComment'] = { "guibg": NONE, "guifg": FOREGROUND }
let Colors['jsComment'] = { "guibg": NONE, "guifg": FOREGROUND }

" WHITE
let Colors['jsParens'] = { "guibg": NONE, "guifg": WHITE }
let Colors['jsBrackets'] = { "guibg": NONE, "guifg": WHITE }
let Colors['jsObjectKey'] = { "guibg": NONE, "guifg": WHITE }

" ORANGE
let Colors['jsNumber'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsBooleanTrue'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsBooleanFalse'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsFuncArgs'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsNull'] = { "guibg": NONE, "guifg": ORANGE }

" YELLOW 
let Colors['jsGlobalObjects'] = { "guibg": NONE, "guifg": YELLOW }

" BLUE
let Colors['jsGlobalNodeObjects'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsFuncCall'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsTaggedTemplate'] = { "guibg": NONE, "guifg": PURPLE }

" CYAN
let Colors['jsDestructuringBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsNoise'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsObjectBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsFuncParens'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsFuncBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsIfElseBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsModuleBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsTemplateBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['xmlEqual'] = { "guibg": NONE, "guifg": CYAN }

" PURPLE
let Colors['jsReturn'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsConditional'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['xmlAttrib'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsArrowFunction'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsImport'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsExport'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsFrom'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsTry'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsCatch'] = { "guibg": NONE, "guifg": PURPLE }

" RED 
let Colors['xmlTag'] = { "guibg": NONE, "guifg": RED }
let Colors['xmlEndTag'] = { "guibg": NONE, "guifg": RED }
let Colors['xmlTagName'] = { "guibg": NONE, "guifg": RED }


for key in keys(Colors)
  let s:colors = Colors[key]
  
  if has_key(s:colors, 'gui')
    let gui = s:colors['gui']
  else
    let gui = 'NONE'
  endif

  if has_key(s:colors, 'guifg')
    let guifg = s:colors['guifg']
  else
    let guifg = 'NONE'
  endif

  if has_key(s:colors, 'guibg')
    let guibg = s:colors['guibg']
  else
    let guibg = 'NONE'
  endif

  if has_key(s:colors, 'term')
    let term = s:colors['term']
  else
    let term = 'NONE'
  endif

  if has_key(s:colors, 'cterm')
    let cterm = s:colors['cterm']
  else
    let cterm = 'NONE'
  endif

  if has_key(s:colors, 'ctermfg')
    let ctermfg = s:colors['ctermfg']
  else
    let ctermfg = 'NONE'
  endif

  if has_key(s:colors, 'ctermbg')
    let ctermbg = s:colors['ctermbg']
  else
    let ctermbg = 'NONE'
  endif

  if has_key(s:colors, 'guisp')
    let guisp = s:colors['guisp']
  else
    let guisp = 'NONE'
  endif

  if key =~ '^\k*$'
    execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
  endif
endfor

hi Boolean gui=NONE guifg=#79d0f6 guibg=NONE
hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
hi Comment gui=NONE guifg=#696969 guibg=NONE
hi Conceal gui=NONE guifg=#808080 guibg=NONE
hi Conditional gui=NONE guifg=#8f8f8f guibg=NONE
hi Constant gui=NONE guifg=#808080 guibg=NONE
hi Cursor gui=reverse guifg=NONE guibg=NONE
hi CursorColumn gui=NONE guifg=NONE guibg=#1a1a1a
hi CursorLine gui=NONE guifg=NONE guibg=#1a1a1a
hi CursorLineNr gui=NONE guifg=#707070 guibg=NONE
hi DiffAdd gui=NONE guifg=NONE guibg=#082608
hi DiffChange gui=NONE guifg=NONE guibg=#1a1a1a
hi DiffDelete gui=NONE guifg=NONE guibg=#260808
hi DiffText gui=NONE guifg=NONE guibg=#333333
hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
hi Error gui=NONE guifg=NONE guibg=#260808
hi ErrorMsg gui=NONE guifg=NONE guibg=#260808
hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
hi Folded gui=NONE guifg=#707070 guibg=NONE
hi Ignore gui=NONE guifg=NONE guibg=NONE
hi IncSearch gui=NONE guifg=NONE guibg=#333333
hi LineNr gui=NONE guifg=#3A3F58 guibg=NONE
hi MatchParen gui=NONE guifg=NONE guibg=#333333
hi ModeMsg gui=NONE guifg=NONE guibg=NONE
hi MoreMsg gui=NONE guifg=NONE guibg=NONE
hi NonText gui=NONE guifg=#616161 guibg=NONE
" hi Normal gui=NONE guifg=#9599BE guibg=#1E202F
hi Number gui=NONE guifg=#fac7f9 guibg=NONE
hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a
hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
hi PmenuSel gui=NONE guifg=NONE guibg=#333333
hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
hi Question gui=NONE guifg=NONE guibg=NONE
hi Search gui=NONE guifg=NONE guibg=#262626
hi SignColumn gui=NONE guifg=#616161 guibg=NONE
hi Special gui=italic guifg=#ff526f guibg=#292d3d
hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#260808
hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#082608
hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
hi Statement gui=NONE guifg=#8adeff guibg=NONE
hi StatusLine gui=NONE guifg=#9e9e9e guibg=#262626
hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626
hi StorageClass gui=NONE guifg=#c894eb guibg=NONE
hi String gui=NONE guifg=#c3e88d guibg=NONE
hi TabLine gui=NONE guifg=#707070 guibg=#262626
hi TabLineFill gui=NONE guifg=NONE guibg=#262626
hi TabLineSel gui=NONE guifg=#9e9e9e guibg=#262626
hi Title gui=NONE guifg=#808080 guibg=NONE
hi Todo gui=standout guifg=NONE guibg=NONE
hi Type gui=NONE guifg=#8f8f8f guibg=NONE
hi Underlined gui=NONE guifg=NONE guibg=NONE
hi VertSplit gui=NONE guifg=#333333 guibg=NONE
hi Visual gui=NONE guifg=NONE guibg=#333333
hi VisualNOS gui=NONE guifg=NONE guibg=NONE
hi WarningMsg gui=NONE guifg=NONE guibg=#260808
hi WildMenu gui=NONE guifg=NONE guibg=#525252
hi lCursor gui=NONE guifg=NONE guibg=NONE
hi Identifier gui=NONE guifg=#82AAFF guibg=NONE
hi PreProc gui=NONE guifg=NONE guibg=NONE

" JS
