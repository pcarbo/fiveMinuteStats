# A Makefile for generating the PDFs and TEX files from the R Markdown
# files and test the code embedded in the R Markdown.

# RULES
# -----
all: docs/likelihood_ratio_simple_models.html

docs/likelihood_ratio_simple_models.html : analysis/likelihood_ratio_simple_models.Rmd
	Rscript -e 'workflowr::wflow_publish("analysis/likelihood_ratio_simple_models.Rmd",view = FALSE)'

clean:

