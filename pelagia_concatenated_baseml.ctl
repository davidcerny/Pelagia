      seqfile = raxml_95_alignments.phylip * sequence data file name
      outfile = pelagia_baseml * main result file
     treefile = ExaML_pelagia-75p-baseml.tre * tree file name

        noisy = 3   * 0,1,2,3: how much rubbish on the screen
      verbose = 1   * 1: detailed output, 0: concise output
      runmode = 0   * 0: user tree; 1: semi-automatic; 2: automatic
                    * 3: StepwiseAddition; (4,5):PerturbationNNI

        model = 7   * 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85
                    * 5:T92, 6:TN93, 7:REV, 8:UNREST, 9:REVu; 10:UNRESTu
        Mgene = 0   * 0:rates, 1:separate; 2:diff pi, 3:diff kapa, 4:all diff

        ndata = 1   * number of data sets
        clock = 1   * 0:no clock, 1:clock; 2:local clock; 3:CombinedAnalysis

    fix_alpha = 0   * 0: estimate alpha; 1: fix alpha at value below
        alpha = 0.1 * initial or fixed alpha, 0:infinity (constant rate)
       Malpha = 0   * 1: different alpha's for genes, 0: one alpha
        ncatG = 8   * # of categories in the dG, AdG, or nparK models of rates

      fix_rho = 1   * 0: estimate rho; 1: fix rho at value below 
          rho = 0   * initial or fixed rho, 0:no correlation
        nparK = 0   * rate-class models. 1:rK, 2:rK&fK, 3:rK&MK(1/K), 4:rK&MK

        nhomo = 1   * 0 & 1: homogeneous, 2: kappa for branches, 3: N1, 4: N2
        getSE = 0   * 0: don't want them, 1: want S.E.s of estimates

 RateAncestor = 0   * (0,1,2): rates (alpha>0) or ancestral states

   Small_Diff = 1e-6
       method = 0   * 0: simultaneous; 1: one branch at a time
