# Exploring the SoPa Model

*A course project for [Advanced Formal Language Theory, Spring 2022](https://rycolab.io/classes/aflt-s22/) at ETH Zurich.*

The project aims to explore the SoPa model, based on ["SoPa: Bridging CNNs, RNNs, and Weighted Finite-State Machines"](https://arxiv.org/abs/1805.06061) by Roy Schwartz, Sam Thomson and Noah A. Smith, ACL 2018, which is characterized by the patterns matching mechanism. 

### Dataset
As in the SoPa experiment, 100 movie reviews from SST dataset with binary labels are also used in our ablation study. 

### Approaches
We executed the study on three levels, including automaton level, automata level, as well as on the SoPa as a whole. For reproducility, please refer to README_ reproducible_code.md file.

### Result
We conclude valuable insights regarding how parameters affect the model performance through multiple experiments. 

- First, increasing patterns’ width improves model performance while the length has little effect. Second, in case exclud- ing ε-transitions, the bigger max-steps-forward is, the better performance is yielded. 
- Also, there is a downward trend in test accuracy as we increase the value of shared_sl because it decreases the complexity of the model. 

- Third, the log-space max-times semiring achieves the best accuracy. 
- Finally, training the patterns on multiple documents improves the gradient com- putation and hence the convergence rate.


## Contact

For questions, comments or feedback, please email quynguyen@ethz.ch

[Code](https://github.com/jyanqa/aflt_project/blob/master/README_%20reproducible_code.md) | [Report](https://github.com/jyanqa/aflt_project/blob/master/report_final.pdf)