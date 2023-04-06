-- Esto es necesario para que VimTeX se cargue correctamente.
-- La opción "indent" es opcional.
-- La mayoría de los gestores de plugins lo hacen automáticamente.
vim.cmd("filetype plugin indent on")

-- Esto habilita las funciones relacionadas con la sintaxis de Vim y Neovim.
-- Sin esto, algunas funciones de VimTeX no funcionarán.
-- Consulte ":help vimtex-requirements" para obtener más información.
vim.cmd("syntax enable")

-- Opciones de visualización: se puede configurar el visor especificando un método integrado:
vim.g.vimtex_view_method = 'zathura'

-- O con una interfaz genérica:
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--synctex-forward'

-- VimTeX utiliza latexmk como backend de compilación predeterminado.
-- Si lo usa, lo cual se recomienda encarecidamente, probablemente no necesite configurar nada.
-- Si desea otro backend de compilación, puede cambiarlo como sigue:
-- La lista de backends compatibles y una explicación adicional se proporciona en la documentación, consulte ":help vimtex-compiler".
vim.g.vimtex_compiler_method = 'latexmk'

-- La mayoría de los mapeos de VimTeX dependen de "localleader", que se puede cambiar con la siguiente línea.
-- El valor predeterminado suele ser el símbolo "\".
vim.g.maplocalleader = ","

