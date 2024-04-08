try
	call plug#begin()
	Plug expand('<sfile>')[0:-16] 
	call plug#end()

	lua require("naysayer").setup {}
	colorscheme naysayer
catch
	echo v:exception
	1cq
finally
	0cq
endtry
