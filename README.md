# How to #

## Installation ##
In your home folder:

	git clone git://github.com/carlcarl/vimrc.git
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
	cd ~/.vim
	git submodule update --init --recursive

## Addictional Shortcuts ##

	tab: autocomplete
	<C-\>: template

	T: tasklist
	L & H: change tab(gt & gT)
	gc(selection mode): comment selection
	gcc: comment current line
	<leader><leader>w: easy motion
	<leader><leader>t: easy motion + search
	ctrl + F12: ctags
	ctrl + ]: find definition
	ctrl + t: back to usage
	ctrl + o: previous action
	S<tag>(selection mode): surround
	cs<tag><tag2>: replace tag to tag2
	ds<tag>: delete tag
	F1: show or hide line number
	F2 or <leader>p: paste mode
	F3: tag list
	F4 or <leader>n: nerd_tree
	F5: Remove all signs
	F6: Disable gitgutter
	
	#cscope
	ctrl + \ + g: find definition
	ctrl + \ + s: find this symbol
	ctrl + \ + c: find the functions which call the function
	ctrl + \ + t: find the text string
	ctrl + \ + i: find files include this file
	ctrl + \ + f: open the file

	#gitgutter
	gh: next hunk
	gH: previoud hunk

	#Python
	:Pylint: python syntax check
	:Pydoc function: find function definition in python document
	K: find current function definition in python document
	F: code folding(all)
	f: code folding
	<C-c>g goto definition
	<C-c>d show documentation
	<C-c>f find occurrences
	<leader>r run python
	<leader>b set breakpoint

## Normal Shortcuts ##

   	gg: Begin of file
	G: End of file
	^: Begin of current line
	$: End of current line

	A: Insert at line end
	o: Insert a new line after current line
	O: Insert a new line before current line

	fx: Find 'x' after current position in current line
	Fx: Find 'x' before current position in current line
	*: Find current word in file

	viw: Select word
	vit: Select content in tag 
	vat: Select content include tag

	ctrl+[: Back to normal mode(Esc)

	<C-N> or <C-X><C-N>: autocomplete in document
	<C-F> or <C-X><C-F>: autocomplete path
	<C-J> or <C-X><C-I>: autocomplete in header
	<C-X><C-O>: autocomplete

## Package dependency ##

	clang: c autocomplete
	pysmell: python autocomplete
	pylint: python syntax check
	php: php syntax check 

