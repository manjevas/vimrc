"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	VIM Runtime Configuration File
"	Setup by and for: Manju Srinivasa
"
"	version 0.0.2
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"  Feature list:
"  	- General 
"  	- User Interface
"  		-Set line number
"  		- Set relative line number
"		- Expand tabs into spaces
"		- Show visual line under cursor current line
" 	- Coding environment
"		- Syntax highlighting
"		- Set tab to 4 spaces
"		- Set autoindent on
"		- Show the matching part of the parir for [], {} and ()
"		- Enable all python syntax highlighting features
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	GENERAL
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	USER INTERFACE
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set line number
set number

" Set relative line number
set relativenumber

" Expand tabs into spaces
set expandtab

" Show visual line under cursor current line
set cursorline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	CODING ENVIRONMENT
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" PYTHON: "

"Syntax highlighting
syntax enable

" Set tab to have 4 spaces
set ts=4

" Show the matching part of the pair for [], {}, ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1


