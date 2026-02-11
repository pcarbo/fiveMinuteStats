# A Makefile for generating the PDFs and TEX files from the R Markdown
# files and test the code embedded in the R Markdown.

# RULES
# -----
all: docs/index.html \
     docs/integral.html \
     docs/inverse_transform_sampling.html \
     docs/Importance_sampling.html \
     docs/likelihood_ratio_simple_models.html \
     docs/likelihood_ratio_simple_continuous_data.html \
     docs/LR_and_BF.html \
     docs/bayes_multiclass.html \
     docs/r_simplemix.html \
     docs/likelihood_function.html \
     docs/bayes_beta_binomial.html \
     docs/bayes_conjugate.html \
     docs/bayes_conjugate_normal_mean.html \
     docs/summarize_interpret_posterior.html \
     docs/shiny_normal_example.html \
     docs/mixture_models_01.html \
     docs/em_algorithm_01.html \
     docs/em_variational.html \
     docs/markov_chains_discrete_intro.html \
     docs/simulating_discrete_chains_1.html \
     docs/simulating_discrete_chains_2.html \
     docs/stationary_distribution.html \
     docs/MH_intro.html \
     docs/MH_intro_02.html \
     docs/MH-examples1.html \
     docs/gibbs1.html \
     docs/gibbs2.html \
     docs/gibbs_structure_simple.html \
     docs/hmm.html \
     docs/bernoulli_poisson_process.html \
     docs/poisson_process_time_dependent_thinning.html \
     docs/norm_linear_comb.html \
     docs/mvnorm_00.html \
     docs/mvnorm.html \
     docs/normal_markov_chain.html \
     docs/mvnorm_eigen.pdf \
     docs/integral.pdf \
     docs/inverse_transform_sampling.pdf \
     docs/Importance_sampling.pdf \
     docs/likelihood_ratio_simple_models.pdf \
     docs/likelihood_ratio_simple_continuous_data.pdf \
     docs/LR_and_BF.pdf \
     docs/bayes_multiclass.pdf \
     docs/r_simplemix.pdf \
     docs/likelihood_function.pdf \
     docs/bayes_beta_binomial.pdf \
     docs/bayes_conjugate.pdf \
     docs/bayes_conjugate_normal_mean.pdf \
     docs/summarize_interpret_posterior.pdf \
     docs/mixture_models_01.pdf \
     docs/em_algorithm_01.pdf \
     docs/em_variational.pdf \
     docs/markov_chains_discrete_intro.pdf \
     docs/simulating_discrete_chains_1.pdf \
     docs/simulating_discrete_chains_2.pdf \
     docs/stationary_distribution.pdf \
     docs/MH_intro.pdf \
     docs/MH_intro_02.pdf \
     docs/MH-examples1.pdf \
     docs/gibbs1.pdf \
     docs/gibbs2.pdf \
     docs/gibbs_structure_simple.pdf \
     docs/hmm.pdf \
     docs/bernoulli_poisson_process.pdf \
     docs/poisson_process_time_dependent_thinning.pdf \
     docs/norm_linear_comb.pdf \
     docs/mvnorm_00.pdf \
     docs/mvnorm.pdf \
     docs/normal_markov_chain.pdf

index: docs/index.html

docs/index.html : analysis/index.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/index.Rmd",view = FALSE)'

docs/integral.html : analysis/integral.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/integral.Rmd",view = FALSE)'

docs/inverse_transform_sampling.html : analysis/inverse_transform_sampling.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/inverse_transform_sampling.Rmd",view = FALSE)'

docs/Importance_sampling.html : analysis/Importance_sampling.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/Importance_sampling.Rmd",view = FALSE)'

docs/likelihood_ratio_simple_models.html : analysis/likelihood_ratio_simple_models.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/likelihood_ratio_simple_models.Rmd",view = FALSE)'

docs/likelihood_ratio_simple_continuous_data.html : analysis/likelihood_ratio_simple_continuous_data.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/likelihood_ratio_simple_continuous_data.Rmd",view = FALSE)'

docs/LR_and_BF.html : analysis/LR_and_BF.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/LR_and_BF.Rmd",view = FALSE)'

docs/bayes_multiclass.html : analysis/bayes_multiclass.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/bayes_multiclass.Rmd",view = FALSE)'

docs/r_simplemix.html : analysis/r_simplemix.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/r_simplemix.Rmd",view = FALSE)'

docs/likelihood_function.html : analysis/likelihood_function.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/likelihood_function.Rmd",view = FALSE)'

docs/bayes_beta_binomial.html : analysis/bayes_beta_binomial.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/bayes_beta_binomial.Rmd",view = FALSE)'

docs/bayes_conjugate.html : analysis/bayes_conjugate.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/bayes_conjugate.Rmd",view = FALSE)'

docs/summarize_interpret_posterior.html : analysis/summarize_interpret_posterior.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/summarize_interpret_posterior.Rmd",view = FALSE)'

docs/shiny_normal_example.html : analysis/shiny_normal_example.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/shiny_normal_example.Rmd",view = FALSE)'

docs/mixture_models_01.html : analysis/mixture_models_01.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/mixture_models_01.Rmd",view = FALSE)'

docs/em_algorithm_01.html : analysis/em_algorithm_01.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/em_algorithm_01.Rmd",view = FALSE)'

docs/em_variational.html : analysis/em_variational.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/em_variational.Rmd",view = FALSE)'

docs/markov_chains_discrete_intro.html : analysis/markov_chains_discrete_intro.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/markov_chains_discrete_intro.Rmd",view = FALSE)'

docs/simulating_discrete_chains_1.html : analysis/simulating_discrete_chains_1.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/simulating_discrete_chains_1.Rmd",view = FALSE)'

docs/simulating_discrete_chains_2.html : analysis/simulating_discrete_chains_2.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/simulating_discrete_chains_2.Rmd",view = FALSE)'

docs/stationary_distribution.html : analysis/stationary_distribution.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/stationary_distribution.Rmd",view = FALSE)'

docs/MH_intro.html : analysis/MH_intro.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/MH_intro.Rmd",view = FALSE)'

docs/MH_intro_02.html : analysis/MH_intro_02.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/MH_intro_02.Rmd",view = FALSE)'

docs/gibbs1.html : analysis/gibbs1.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/gibbs1.Rmd",view = FALSE)'

docs/gibbs2.html : analysis/gibbs2.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/gibbs2.Rmd",view = FALSE)'

docs/gibbs_structure_simple.html : analysis/gibbs_structure_simple.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/gibbs_structure_simple.Rmd",view = FALSE)'

docs/hmm.html : analysis/hmm.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/hmm.Rmd",view = FALSE)'

docs/bernoulli_poisson_process.html : analysis/bernoulli_poisson_process.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/bernoulli_poisson_process.Rmd",view = FALSE)'

docs/poisson_process_time_dependent_thinning.html : analysis/poisson_process_time_dependent_thinning.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/poisson_process_time_dependent_thinning.Rmd",view = FALSE)'

docs/norm_linear_comb.html : analysis/norm_linear_comb.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/norm_linear_comb.Rmd",view = FALSE)'

docs/mvnorm_00.html : analysis/mvnorm_00.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/mvnorm_00.Rmd",view = FALSE)'

docs/mvnorm.html : analysis/mvnorm.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/mvnorm.Rmd",view = FALSE)'

docs/mvnorm_eigen.html : analysis/mvnorm_eigen.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/mvnorm_eigen.Rmd",view = FALSE)'

docs/normal_markov_chain.html : analysis/normal_markov_chain.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/normal_markov_chain.Rmd",view = FALSE)'

docs/integral.pdf : analysis/integral.Rmd readable.tex
	cp analysis/integral.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/integral.pdf")'
	rm temp.Rmd

docs/inverse_transform_sampling.pdf : analysis/inverse_transform_sampling.Rmd readable.tex
	cp analysis/inverse_transform_sampling.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/inverse_transform_sampling.pdf")'
	rm temp.Rmd

docs/Importance_sampling.pdf : analysis/Importance_sampling.Rmd readable.tex
	cp analysis/Importance_sampling.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/Importance_sampling.pdf")'
	rm temp.Rmd

docs/likelihood_ratio_simple_models.pdf : analysis/likelihood_ratio_simple_models.Rmd readable.tex
	cp analysis/likelihood_ratio_simple_models.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/likelihood_ratio_simple_models.pdf")'
	rm temp.Rmd

docs/likelihood_ratio_simple_continuous_data.pdf : analysis/likelihood_ratio_simple_continuous_data.Rmd readable.tex
	cp analysis/likelihood_ratio_simple_continuous_data.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/likelihood_ratio_simple_continuous_data.pdf")'
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

docs/likelihood_function.pdf : analysis/likelihood_function.Rmd readable.tex
	cp analysis/likelihood_function.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/likelihood_function.pdf")'
	rm temp.Rmd

docs/bayes_beta_binomial.pdf : analysis/bayes_beta_binomial.Rmd readable.tex
	cp analysis/bayes_beta_binomial.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/bayes_beta_binomial.pdf")'
	rm temp.Rmd

docs/bayes_conjugate.pdf : analysis/bayes_conjugate.Rmd readable.tex
	cp analysis/bayes_conjugate.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/bayes_conjugate.pdf")'
	rm temp.Rmd

docs/bayes_conjugate_normal_mean.pdf : analysis/bayes_conjugate_normal_mean.Rmd readable.tex
	cp analysis/bayes_conjugate_normal_mean.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/bayes_conjugate_normal_mean.pdf")'
	rm temp.Rmd

docs/bayes_conjugate_normal_mean.html : analysis/bayes_conjugate_normal_mean.Rmd
	Rscript -e 'workflowr::wflow_build("analysis/bayes_conjugate_normal_mean.Rmd",view = FALSE)'

docs/summarize_interpret_posterior.pdf : analysis/summarize_interpret_posterior.Rmd readable.tex
	cp analysis/summarize_interpret_posterior.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/summarize_interpret_posterior.pdf")'
	rm temp.Rmd

docs/mixture_models_01.pdf : analysis/mixture_models_01.Rmd readable.tex
	cp analysis/mixture_models_01.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/mixture_models_01.pdf")'
	rm temp.Rmd

docs/em_algorithm_01.pdf : analysis/em_algorithm_01.Rmd readable.tex
	cp analysis/em_algorithm_01.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/em_algorithm_01.pdf")'
	rm temp.Rmd

docs/em_variational.pdf : analysis/em_variational.Rmd readable.tex
	cp analysis/em_variational.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/em_variational.pdf")'
	rm temp.Rmd

docs/markov_chains_discrete_intro.pdf : analysis/markov_chains_discrete_intro.Rmd readable.tex
	cp analysis/markov_chains_discrete_intro.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/markov_chains_discrete_intro.pdf")'
	rm temp.Rmd

docs/simulating_discrete_chains_1.pdf : analysis/simulating_discrete_chains_1.Rmd readable.tex
	cp analysis/simulating_discrete_chains_1.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/simulating_discrete_chains_1.pdf")'
	rm temp.Rmd

docs/simulating_discrete_chains_2.pdf : analysis/simulating_discrete_chains_2.Rmd readable.tex
	cp analysis/simulating_discrete_chains_2.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/simulating_discrete_chains_2.pdf")'
	rm temp.Rmd

docs/stationary_distribution.pdf : analysis/stationary_distribution.Rmd readable.tex
	cp analysis/stationary_distribution.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/stationary_distribution.pdf")'
	rm temp.Rmd

docs/MH_intro.pdf : analysis/MH_intro.Rmd readable.tex
	cp analysis/MH_intro.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/MH_intro.pdf")'
	rm temp.Rmd

docs/MH_intro_02.pdf : analysis/MH_intro_02.Rmd readable.tex
	cp analysis/MH_intro_02.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/MH_intro_02.pdf")'
	rm temp.Rmd

docs/MH-examples1.pdf : analysis/MH-examples1.Rmd readable.tex
	cp analysis/MH-examples1.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/MH-examples1.pdf")'
	rm temp.Rmd

docs/gibbs1.pdf : analysis/gibbs1.Rmd readable.tex
	cp analysis/gibbs1.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/gibbs1.pdf")'
	rm temp.Rmd

docs/gibbs2.pdf : analysis/gibbs2.Rmd readable.tex
	cp analysis/gibbs2.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/gibbs2.pdf")'
	rm temp.Rmd

docs/gibbs_structure_simple.pdf : analysis/gibbs_structure_simple.Rmd readable.tex
	cp analysis/gibbs_structure_simple.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/gibbs_structure_simple.pdf")'
	rm temp.Rmd

docs/hmm.pdf : analysis/hmm.Rmd readable.tex
	cp analysis/hmm.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/hmm.pdf")'
	rm temp.Rmd

docs/bernoulli_poisson_process.pdf : analysis/bernoulli_poisson_process.Rmd readable.tex
	cp analysis/bernoulli_poisson_process.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/bernoulli_poisson_process.pdf")'
	rm temp.Rmd

docs/poisson_process_time_dependent_thinning.pdf : analysis/poisson_process_time_dependent_thinning.Rmd readable.tex
	cp analysis/poisson_process_time_dependent_thinning.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/poisson_process_time_dependent_thinning.pdf")'
	rm temp.Rmd

docs/norm_linear_comb.pdf : analysis/norm_linear_comb.Rmd readable.tex
	cp analysis/norm_linear_comb.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/norm_linear_comb.pdf")'
	rm temp.Rmd

docs/mvnorm_00.pdf : analysis/mvnorm_00.Rmd readable.tex
	cp analysis/mvnorm_00.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/mvnorm_00.pdf")'
	rm temp.Rmd

docs/mvnorm.pdf : analysis/mvnorm.Rmd readable.tex
	cp analysis/mvnorm.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/mvnorm.pdf")'
	rm temp.Rmd

docs/mvnorm_eigen.pdf : analysis/mvnorm_eigen.Rmd readable.tex
	cp analysis/mvnorm_eigen.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/mvnorm_eigen.pdf")'
	rm temp.Rmd

docs/normal_markov_chain.pdf : analysis/normal_markov_chain.Rmd readable.tex
	cp analysis/normal_markov_chain.Rmd temp.Rmd
	Rscript -e 'rmarkdown::render("temp.Rmd",output_file="docs/normal_markov_chain.pdf")'
	rm temp.Rmd

clean:
	rm -f docs/integral.pdf
	rm -f docs/inverse_transform_sampling.pdf
	rm -f docs/Importance_sampling.pdf
	rm -f docs/likelihood_ratio_simple_models.pdf
	rm -f docs/likelihood_ratio_simple_continuous_data.pdf
	rm -f docs/LR_and_BF.pdf
	rm -f docs/bayes_multiclass.pdf
	rm -f docs/r_simplemix.pdf
	rm -f docs/likelihood_function.pdf
	rm -f docs/bayes_beta_binomial.pdf
	rm -f docs/summarize_interpret_posterior.pdf
	rm -f docs/bayes_conjugate.pdf
	rm -f docs/bayes_conjugate_normal_mean.pdf
	rm -f docs/mixture_models_01.pdf
	rm -f docs/em_algorithm_01.pdf
	rm -f docs/em_variational.pdf
	rm -f docs/markov_chains_discrete_intro.pdf
	rm -f docs/simulating_discrete_chains_1.pdf
	rm -f docs/simulating_discrete_chains_2.pdf
	rm -f docs/stationary_distribution.pdf
	rm -f docs/MH_intro.pdf
	rm -f docs/MH_intro_02.pdf
	rm -f docs/MH-examples1.pdf
	rm -f docs/gibbs1.pdf
	rm -f docs/gibbs2.pdf
	rm -f docs/gibbs_structure_simple.pdf
	rm -f hmm.pdf
	rm -f bernoulli_poisson_process.pdf
	rm -f poisson_process_time_dependent_thinning.pdf
	rm -f norm_linear_comb.pdf
	rm -f mvnorm_00.pdf
	rm -f mvnorm.pdf
	rm -f mvnorm_eigen.pdf
	rm -f normal_markov_chain.pdf
	rm -f temp.Rmd
