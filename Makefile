# A Makefile for generating the PDFs and TEX files from the R Markdown
# files and test the code embedded in the R Markdown.

# RULES
# -----
all: docs/index.html \
     docs/likelihood_ratio_simple_models.html \
     docs/LR_and_BF.html \
     docs/bayes_multiclass.html \
     docs/r_simplemix.html \
     docs/likelihood_ratio_simple_models.pdf \
     docs/LR_and_BF.pdf \
     docs/bayes_multiclass.pdf \
     docs/r_simplemix.pdf

docs/index.html : analysis/index.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/index.Rmd",view = FALSE)'

docs/likelihood_ratio_simple_models.html : analysis/likelihood_ratio_simple_models.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/likelihood_ratio_simple_models.Rmd",view = FALSE)'

docs/LR_and_BF.html : analysis/LR_and_BF.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/LR_and_BF.Rmd",view = FALSE)'

docs/bayes_multiclass.html : analysis/bayes_multiclass.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/bayes_multiclass.Rmd",view = FALSE)'

docs/r_simplemix.html : analysis/r_simplemix.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/r_simplemix.Rmd",view = FALSE)'

docs/likelihood_ratio_simple_models.pdf : analysis/likelihood_ratio_simple_models.Rmd readable.tex
	cp analysis/likelihood_ratio_simple_models.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/likelihood_ratio_simple_models.pdf")'
	rm temp.Rmd

docs/LR_and_BF.pdf : analysis/LR_and_BF.Rmd readable.tex
	cp analysis/LR_and_BF.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/LR_and_BF.pdf")'
	rm temp.Rmd

docs/bayes_multiclass.pdf : analysis/bayes_multiclass.Rmd readable.tex
	cp analysis/bayes_multiclass.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/bayes_multiclass.pdf")'
	rm temp.Rmd

docs/r_simplemix.pdf : analysis/r_simplemix.Rmd readable.tex
	cp analysis/r_simplemix.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/r_simplemix.pdf")'
	rm temp.Rmd

clean:
	rm -f docs/likelihood_ratio_simple_models.pdf
	rm -f docs/LR_and_BF.pdf

