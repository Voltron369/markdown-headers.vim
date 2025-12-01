" Configurable markdown header styling with Unicode characters

" ============================================================================
" CONFIGURATION - Edit these settings to customize your headers
" ============================================================================

" Font style for each header level: 'doublestruck' or 'fullwidth'
" Override in .vimrc with: let g:md_h1_style = 'fullwidth'
let s:h1_style = get(g:, 'md_h1_style', 'fullwidth')
let s:h2_style = get(g:, 'md_h2_style', 'fullwidth')
let s:h3_style = get(g:, 'md_h3_style', 'doublestruck')
let s:h4_style = get(g:, 'md_h4_style', 'doublestruck')
let s:h5_style = get(g:, 'md_h5_style', 'none')
let s:h6_style = get(g:, 'md_h6_style', 'none')

" All caps for each header level: 1 = enabled, 0 = disabled
" Override in .vimrc with: let g:md_h1_caps = 0
let s:h1_caps = get(g:, 'md_h1_caps', 1)
let s:h2_caps = get(g:, 'md_h2_caps', 0)
let s:h3_caps = get(g:, 'md_h3_caps', 1)
let s:h4_caps = get(g:, 'md_h4_caps', 0)
let s:h5_caps = get(g:, 'md_h5_caps', 1)
let s:h6_caps = get(g:, 'md_h6_caps', 0)

" ============================================================================
" END CONFIGURATION
" ============================================================================

" Enable concealing
setlocal conceallevel=2
setlocal concealcursor=nc

" Double-struck letter mappings
let s:doublestruck = {
  \ 'A': '𝔸', 'B': '𝔹', 'C': 'ℂ', 'D': '𝔻', 'E': '𝔼', 'F': '𝔽', 'G': '𝔾',
  \ 'H': 'ℍ', 'I': '𝕀', 'J': '𝕁', 'K': '𝕂', 'L': '𝕃', 'M': '𝕄', 'N': 'ℕ',
  \ 'O': '𝕆', 'P': 'ℙ', 'Q': 'ℚ', 'R': 'ℝ', 'S': '𝕊', 'T': '𝕋', 'U': '𝕌',
  \ 'V': '𝕍', 'W': '𝕎', 'X': '𝕏', 'Y': '𝕐', 'Z': 'ℤ',
  \ 'a': '𝕒', 'b': '𝕓', 'c': '𝕔', 'd': '𝕕', 'e': '𝕖', 'f': '𝕗', 'g': '𝕘',
  \ 'h': '𝕙', 'i': '𝕚', 'j': '𝕛', 'k': '𝕜', 'l': '𝕝', 'm': '𝕞', 'n': '𝕟',
  \ 'o': '𝕠', 'p': '𝕡', 'q': '𝕢', 'r': '𝕣', 's': '𝕤', 't': '𝕥', 'u': '𝕦',
  \ 'v': '𝕧', 'w': '𝕨', 'x': '𝕩', 'y': '𝕪', 'z': '𝕫',
  \ '0': '𝟘', '1': '𝟙', '2': '𝟚', '3': '𝟛', '4': '𝟜', '5': '𝟝',
  \ '6': '𝟞', '7': '𝟟', '8': '𝟠', '9': '𝟡'
  \ }

" Fullwidth letter mappings
let s:fullwidth = {
  \ 'A': 'Ａ', 'B': 'Ｂ', 'C': 'Ｃ', 'D': 'Ｄ', 'E': 'Ｅ', 'F': 'Ｆ', 'G': 'Ｇ',
  \ 'H': 'Ｈ', 'I': 'Ｉ', 'J': 'Ｊ', 'K': 'Ｋ', 'L': 'Ｌ', 'M': 'Ｍ', 'N': 'Ｎ',
  \ 'O': 'Ｏ', 'P': 'Ｐ', 'Q': 'Ｑ', 'R': 'Ｒ', 'S': 'Ｓ', 'T': 'Ｔ', 'U': 'Ｕ',
  \ 'V': 'Ｖ', 'W': 'Ｗ', 'X': 'Ｘ', 'Y': 'Ｙ', 'Z': 'Ｚ',
  \ 'a': 'ａ', 'b': 'ｂ', 'c': 'ｃ', 'd': 'ｄ', 'e': 'ｅ', 'f': 'ｆ', 'g': 'ｇ',
  \ 'h': 'ｈ', 'i': 'ｉ', 'j': 'ｊ', 'k': 'ｋ', 'l': 'ｌ', 'm': 'ｍ', 'n': 'ｎ',
  \ 'o': 'ｏ', 'p': 'ｐ', 'q': 'ｑ', 'r': 'ｒ', 's': 'ｓ', 't': 'ｔ', 'u': 'ｕ',
  \ 'v': 'ｖ', 'w': 'ｗ', 'x': 'ｘ', 'y': 'ｙ', 'z': 'ｚ',
  \ '0': '０', '1': '１', '2': '２', '3': '３', '4': '４', '5': '５',
  \ '6': '６', '7': '７', '8': '８', '9': '９',
  \ ' ': '　',
  \ '!': '！',
  \ '"': '＂',
  \ '#': '＃',
  \ '$': '＄',
  \ '%': '％',
  \ '&': '＆',
  \ '(': '（',
  \ ')': '）',
  \ '*': '＊',
  \ '+': '＋',
  \ ',': '，',
  \ '-': '－',
  \ '\.': '．',
  \ '{': '｛',
  \ '|': '｜',
  \ '}': '｝',
  \ '\~': '～',
  \ ':': '：',
  \ ';': '；',
  \ '<': '＜',
  \ '=': '＝',
  \ '>': '＞',
  \ '?': '？',
  \ '@': '＠',
  \ '^': '＾',
  \ '_': '＿',
  \ '`': '｀',
  \ '\/': '／',
  \ '\[': '［',
  \ '\\': '＼',
  \ ']': '］',
  \ '''': '＇'
  \ }

" identity letter mappings
let s:none = {
  \ 'A': 'A', 'B': 'B', 'C': 'C', 'D': 'D', 'E': 'E', 'F': 'F', 'G': 'G',
  \ 'H': 'H', 'I': 'I', 'J': 'J', 'K': 'K', 'L': 'L', 'M': 'M', 'N': 'N',
  \ 'O': 'O', 'P': 'P', 'Q': 'Q', 'R': 'R', 'S': 'S', 'T': 'T', 'U': 'U',
  \ 'V': 'V', 'W': 'W', 'X': 'X', 'Y': 'Y', 'Z': 'Z',
  \ 'a': 'a', 'b': 'b', 'c': 'c', 'd': 'd', 'e': 'e', 'f': 'f', 'g': 'g',
  \ 'h': 'h', 'i': 'i', 'j': 'j', 'k': 'k', 'l': 'l', 'm': 'm', 'n': 'n',
  \ 'o': 'o', 'p': 'p', 'q': 'q', 'r': 'r', 's': 's', 't': 't', 'u': 'u',
  \ 'v': 'v', 'w': 'w', 'x': 'x', 'y': 'y', 'z': 'z',
  \ '0': '0', '1': '1', '2': '2', '3': '3', '4': '4', '5': '5',
  \ '6': '6', '7': '7', '8': '8', '9': '9'
  \ }

" Clear existing header syntax
syntax clear markdownH1
syntax clear markdownH2
syntax clear markdownH3
syntax clear markdownH4
syntax clear markdownH5
syntax clear markdownH6

" Helper function to get the appropriate character mapping
function! s:GetCharMap(level, letter)
  let style = s:h{a:level}_style
  let caps = s:h{a:level}_caps
  let char_map = s:{style}

  " Apply caps transformation if enabled
  if caps && a:letter =~# '[a-z]'
    return char_map[toupper(a:letter)]
  else
    return char_map[a:letter]
  endif
endfunction

" Create syntax matches for each header level
for level in range(1, 6)
  let style = s:h{level}_style
  let char_map = s:{style}
  for [letter, _] in items(char_map)
    let char = s:GetCharMap(level, letter)
    execute 'syntax match markdownH' . level . 'Char /\C' . letter . '/ contained conceal cchar=' . char . ' containedin=markdownH' . level
  endfor
endfor

" Re-define header syntax to include our character matches
syntax region markdownH1 matchgroup=markdownH1Delimiter start="^\s*#\s"      end="$" contains=markdownH1Char,@markdownInline,@Spell
syntax region markdownH2 matchgroup=markdownH2Delimiter start="^\s*##\s"     end="$" contains=markdownH2Char,@markdownInline,@Spell
syntax region markdownH3 matchgroup=markdownH3Delimiter start="^\s*###\s"    end="$" contains=markdownH3Char,@markdownInline,@Spell
syntax region markdownH4 matchgroup=markdownH4Delimiter start="^\s*####\s"   end="$" contains=markdownH4Char,@markdownInline,@Spell
syntax region markdownH5 matchgroup=markdownH5Delimiter start="^\s*#####\s"  end="$" contains=markdownH5Char,@markdownInline,@Spell
syntax region markdownH6 matchgroup=markdownH6Delimiter start="^\s*######\s" end="$" contains=markdownH6Char,@markdownInline,@Spell

