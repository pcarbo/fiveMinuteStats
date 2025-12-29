# A Makefile for generating the PDFs and TEX files from the R Markdown
# files and test the code embedded in the R Markdown.

# RULES
# -----
all: docs/likelihood_ratio_simple_models.html \
     docs/likelihood_ratio_simple_models.pdf

docs/likelihood_ratio_simple_models.html : analysis/likelihood_ratio_simple_models.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/likelihood_ratio_simple_models.Rmd",view = FALSE)'

docs/likelihood_ratio_simple_models.pdf : analysis/likelihood_ratio_simple_models.Rmd readable.tex
	cp analysis/likelihood_ratio_simple_models.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/likelihood_ratio_simple_models.pdf")'
	rm temp.Rmd

clean:
	rm -f docs/likelihood_ratio_simple_models.pdf

