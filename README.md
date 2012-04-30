# How to #

## Installation ##
In your home folder:

	git clone https://carlcarl@github.com/carlcarl/vimrc.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
	cd ~/.vim
	git submodule update --init

## Shortcut ##

	tab: autocomplete->supertab
	<C-X><C-O>: autocomplete
	<C-\>: template
	<C-N> or <C-X><C-N>: autocomplete in document
	<C-F> or <C-X><C-F>: autocomplete path
	<C-J> or <C-X><C-I>: autocomplete in header

	T: tasklist
	L & H: change tab(gt & gT)
	gc(selection mode): comment selection
	gcc: comment current line
	<leader><leader>w: easy motion
	<leader><leader>t: easy motion + search
	ctrl + F12: ctags
	S<tag>(selection mode): surround
	cs<tag><tag2>: replace tag to tag2
	ds<tag>: delete tag
	F1: show or hide line number
	F2 or <leader>p: paste mode
	F5 <leader>n: nerd_tree

	#Python
	:Pylint: python syntax check
	:Pydoc: python document
	<leader>pw: python document
	F: code folding(all)
	f: code folding

