# math_talks
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .ignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

Drop = ~/Dropbox/math_talks
-include $(ms)/newtalk.def

##################################################################

## Content

Sources += local.txt.format

## Copyright not integrated into make system yet
Sources += copy.tex

Sources += $(wildcard *.txt)

## Created this directory to make the first slide version of surreal lecture
## 2017

surreal.draft.pdf: surreal.txt
surreal.final.pdf: surreal.txt
surreal.handouts.pdf: surreal.txt
surreal.html: surreal.step

######################################################################

dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/newtalk.mk
-include $(ms)/newlatex.mk
-include $(ms)/webpix.mk
-include $(ms)/pandoc.mk

# -include $(ms)/wrapR.mk
