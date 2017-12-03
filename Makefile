# math_talks
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

Drop = ~/Dropbox
-include $(ms)/newtalk.def

##################################################################

## Content

Sources += local.txt.format

## Copyright not integrated into make system yet
Sources += copy.tex

Sources += $(wildcard *.txt)

## Moved here direct from Dropbox (NTU 2016).
## To do: figure out what you want from which column
## Using OTHER to mark things that are currently suppressed

surreal.draft.pdf: surreal.txt
surreal.final.pdf: surreal.txt
surreal.handouts.pdf: surreal.txt

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/newtalk.mk
-include $(ms)/newlatex.mk
-include $(ms)/pandoc.mk

# -include $(ms)/wrapR.mk
