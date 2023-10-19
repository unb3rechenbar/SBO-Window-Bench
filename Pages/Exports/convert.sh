# Converting Script for TeX -> PNG
#
# 19.10.2023
#

pdflatex -interaction nonstopmode $1
convert -density 300 "${$1%.*}.pdf" -resize 3000x750 -units pixelsperinch "${$1%.*}.png"
