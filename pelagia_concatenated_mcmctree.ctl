
              seed = -1
           seqfile = raxml_95_alignments.phylip
          treefile = ExaML_pelagia-75p-examl.tre
           outfile = pelagia_concatenated1.out

             ndata = 1    * Entire alignment treated as a single partition
           seqtype = 0    * Nucleotides
           usedata = 3    * out.BV / in.BV (Hessian matrix) 
             clock = 2    * Independent rates

             model = 4    * HKY85
             alpha = 0.1  * Alpha for gamma rates at sites
             ncatG = 5    * No. categories in discrete gamma

         cleandata = 0    * Do not remove sites with ambiguity data

           BDparas = 1 1 0    * birth, death, sampling
       kappa_gamma = 6 2      * gamma prior for kappa
       alpha_gamma = 1 1      * gamma prior for alpha

       rgene_gamma = 2 137.86 1    * gammaDir prior for rate for genes
      sigma2_gamma = 2 5 1         * gammaDir prior for sigma^2 (for clock=2 or 3)

          finetune = 1: .1 .1 .1 .1 .1 .1 * auto (0 or 1): times, rates, mixing, paras, RateParas, FossilErr

             print = 1000
            burnin = 5000
          sampfreq = 250
           nsample = 10000

    *** Note: Make your window wider (100 columns) before running the program.
    