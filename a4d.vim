" Vim syntax file
" Language: Active 4D
" Maintainer: Justin Russell
" Latest Revision: 4/27/2012

" If syntax has already been set, we can skip this script
if exists("b:current_syntax")
  finish
endif

" a4d is case insensitve
syn case ignore

syn keyword a4dKeywords QUERY SELECTION WITH ARRAY IF ELSE END CASE OF COLLECTION TO METHOD LIBRARY RETURN TEXT LONGINT NOT CURRENT METHOD NAME FOR WHILE
syn keyword a4dCompiler C_TEXT C_LONGINT

" Strings - this should handle the "triple quote" delimited strings
syn region a4dString start='\'' end='\''
syn region a4dString start='"' end='"'

syn keyword a4dBoolean TRUE FALSE

" Lots of options for comments
syn match a4dCommentLine '//.*$'
syn match a4dCommentLine '`.*$'
syn region a4dCommentBlock start='/\*' end='\*/'

" our library methods are all of the form: nameSpace.library.methodName
syn match a4dLibraryFunction '\w\+\.\w\+\.\w\+'

" Variables
syn match a4dLocalVariable '\$\w\+'
syn match a4dInterProcessVariable '<>\w\+'

"syn region a4dCodeBlock start='<%' end='%>'

" Set the current syntax variable so we aren't overwritten
let b:current_syntax = 'a4d'

" Assign highlighting rules to our groups
hi def link a4dKeywords Type
hi def link a4dCompiler Type
 
hi def link a4dString String

hi def link a4dBoolean Constant
 
hi def link a4dCommentLine Comment
hi def link a4dCommentBlock Comment

hi def link a4dLibraryFunction Function

" "hi def link a4dCodeBlock PreProc

hi def link a4dLocalVariable Statement
hi def link a4dInterProcessVariable Statement
