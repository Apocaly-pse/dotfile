#
# Generel
#

# Needed for the dot2texi package which invokes GraphViz.
$latex = 'latex --shell-escape';
$xelatex = 'xelatex --shell-escape';

# 
# Mac OS
#
# $pdflatex = 'pdflatex -synctex=1 %O %S';
$xelatex = 'xelatex -synctex=1 %O %S';
$pdf_previewer = "open -a Skim";
$clean_ext = "paux lox pdfsync out";
$pdf_mode = 5;
$postscript_mode = $dvi_mode = 0;

