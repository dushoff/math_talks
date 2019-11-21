# math_talks, a screens project directory

current: target
-include target.mk

# include makestuff/perl.def

######################################################################

# Content

vim_session:
	bash -cl "vmt"

######################################################################


Drop = ~/Dropbox/math_talks
-include makestuff/newtalk.def

## Content

Sources += local.txt.format

## Copyright not integrated into make system yet
Sources += copy.tex

Sources += $(wildcard *.txt *.step)

## Created this directory to make the first slide version of surreal lecture
## 2017
## Not sure what I did in 2018; violent changes for 2019
surreal.draft.pdf: surreal.txt
surreal.final.pdf: surreal.txt
surreal.handouts.pdf: surreal.txt
surreal.html: surreal.step

sursum.draft.pdf: sursum.txt
sursum.handouts.pdf: sursum.txt

######################################################################

dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

-include makestuff/os.mk
-include makestuff/newtalk.mk
-include makestuff/texdeps.mk
-include makestuff/webpix.mk
-include makestuff/pandoc.mk
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
