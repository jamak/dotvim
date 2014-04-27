" Vim syntax file
" Language:	LINGO
" Maintainer:	Juan M. Cataldo <jcataldo@inf.utfsm.cl>
" Last change:	2004 Nov 5

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" LINGO is case-insensitive
syn case ignore

" LINGO functions include @
setlocal iskeyword=@-@,a-z,A-Z,48-57,_

syn match	lingoOperator	"\(+\|-\|=\|<=\|>=\|\*\|/\|:\|\.\.\|(\|)\)"

syn match	lingoInteger	"\<\d\+\>"

syn match	lingoIdentifier "[a-zA-Z][a-zA-z_0-9]*"

syn keyword	lingoFunction	@abs @in @bin @index @cos @max @exp @min
syn keyword	lingoFunction	@fpa @size @fpl @sum @free @gin @lgm @dual
syn keyword	lingoFunction	@log @file @pbn @odbc @pcx @ole @peb @pointer
syn keyword	lingoFunction	@pel @ranged @pfd @rangeu @phg @status @pfs
syn keyword	lingoFunction	@text @ppl @wkx @pps @psn @psl @ptd @rand
syn keyword	lingoFunction	@sign @smax @smin @tan @user @warn @wrap @for

syn keyword	lingoStatement	model end sets endsets data enddata
syn keyword	lingoStatement	com cat help mem
syn keyword	lingoStatement	model take rmps frmps
syn keyword	lingoStatement	look genl gen paus hide stats picture
syn keyword	lingoStatement	div rvrt save smps
syn keyword	lingoStatement	go solu nonz range exp oleexp odbcexp
syn keyword	lingoStatement	del ext alt
syn keyword	lingoStatement	quit
syn keyword	lingoStatement	page iptol ters verb bip width set freeze
syn keyword	lingoStatement	time newpw
syn keyword	lingoStatement	max min

syn region	lingoComment	start="^\s*!" end=";\s*$"

hi def link lingoComment Comment
hi def link lingoIdentifier Identifier
hi def link lingoStatement Statement
hi def link lingoFunction Function
hi def link lingoInteger Number
hi def link lingoOperator Operator

let b:current_syntax = "lingo"

" vim: ts=8: noexpandtab
