" Vim syntax file
" Language: Active 4D
" Maintainer: Justin Russell
" Latest Revision: 4/28/2012

" If syntax has already been set, we can skip this script
if exists("b:current_syntax")
  finish
endif

" a4d is case insensitve
syn case ignore

syn keyword a4dKeywords 4d _o_set _o_web a abort aborted about abs accept access accumulate activated add administration after
syn keyword a4dKeywords alert alias alignment all allowed alt and append application apply arctan area array arrays assert asserted
syn keyword a4dKeywords attribute attributes authenticate authentication auto automatic available back background backup bar base64
syn keyword a4dKeywords beep before begin best blob body boolean borders break bring buffer buffers build button by c_blob c_boolean
syn keyword a4dKeywords c_date c_graph c_integer c_longint c_picture c_pointer c_real c_string c_text c_time calculation call called
syn keyword a4dKeywords cancel caps case cdata cell center century certificate cgi change channel char character check checking
syn keyword a4dKeywords child choice choose clear click client clients close code codec collapse color colors column columns combine
syn keyword a4dKeywords command comment comments compact comparison compiled component compress confirm connection container content
syn keyword a4dKeywords context contextual control convert converter coordinates copy cos count create creator ctrl current cursor
syn keyword a4dKeywords cut data database date day deactivated dec declaration decode decrypt default delay delete deleted depth
syn keyword a4dKeywords describe destination deviation dialog dictionary dif difference digest disable disk display displayed distinct
syn keyword a4dKeywords doctype document dom down drag drop duplicate during dynamic edit edited element elements else empty enable
syn keyword a4dKeywords enabled encode encrypt encryption end enterable entity entry environment equal erase err error euro event
syn keyword a4dKeywords example executable execute execution exit exp expand expiration export external false fault field file
syn keyword a4dKeywords filter filtered filters find first flush focus folder folders font footer footers form format forms formula
syn keyword a4dKeywords forward fragmentation from front frontmost full function generate gestalt get gif goto graph grid group
syn keyword a4dKeywords header headers height help hide hierarchy highlight highlighted history home horizontal html http icon
syn keyword a4dKeywords id idle ids if import in index indexed info information input insert instruction int integer integrate interface
syn keyword a4dKeywords internal intersection invert invisible is iso item items javascript job key keyboard keypair keystroke
syn keyword a4dKeywords keywords kind label larger last launch layout length level library license licenses limit limits line links
syn keyword a4dKeywords list listbox lists load loaded loading localization localized lock locked log login logout longint lowercase
syn keyword a4dKeywords mac machine macintosh macro many map mapping margin mark marker match max maximize memory menu menus message
syn keyword a4dKeywords messages metadata method methods milliseconds min minimize missing mod mode modification modified modifiers
syn keyword a4dKeywords modify month mouse move moved multi name named names new next nil no node nodes not notification notify
syn keyword a4dKeywords null num number object objects odbc of off offscreen old on one only open option options order output outside
syn keyword a4dKeywords owner packet page parameter parameters parent parse part password pasteboard path paths pause php picture
syn keyword a4dKeywords pictures plain plan platform play plugin pointer pop port position posix post preference preview previous
syn keyword a4dKeywords print printable printed printer printers printing process processes processing properties property push
syn keyword a4dKeywords qr qt query quit random range raw read real receive record records rect rectangle redirect redraw reduce
syn keyword a4dKeywords ref reference refresh regenerate regex register registered reject relate related relation relations release
syn keyword a4dKeywords reload remove replace report request resize resizing resolve resource resources response restore result
syn keyword a4dKeywords resume rgb right root round row rows run save sax scan screen screens screenshot script scroll scrollbar
syn keyword a4dKeywords secured security segment select selected selection self semaphore send sequence serial server service session
syn keyword a4dKeywords set settings setup shift shortcut show shutdown sibling sin size smaller soap sort sorts source spacing
syn keyword a4dKeywords spell spellcheck sql square squares stack start startup state static statistics status std stop string
syn keyword a4dKeywords structure style styled subform subrecord subrecords subselection substring subtotal sum suspend svg sylk
syn keyword a4dKeywords system table tags tan tasks template temporary test text thumbnail tickcount time timeout timer tip title
syn keyword a4dKeywords titles to tool totals trace transaction transform transformation trigger true trunc truncate type types
syn keyword a4dKeywords undefined union unload unregister up uppercase url use user users uuid valid validate value values var
syn keyword a4dKeywords variable variables variance verify version vertical visible volume wa web width win window windows with
syn keyword a4dKeywords write xml xslt xy year

syn keyword a4dActiveKeywords return

" Strings - this should handle the "triple quote" delimited strings
syn region a4dString start='\'' end='\''
syn region a4dString start='"' end='"'

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
hi def link a4dActiveKeywords Type
 
hi def link a4dString String

hi def link a4dCommentLine Comment
hi def link a4dCommentBlock Comment

hi def link a4dLibraryFunction Function

" "hi def link a4dCodeBlock PreProc

hi def link a4dLocalVariable Statement
hi def link a4dInterProcessVariable Statement
