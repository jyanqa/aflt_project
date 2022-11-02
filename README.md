# Exploring the SoPa Model

The project aims to explore the SoPa model (Schwartz et al., 2018), which is characterized by the patterns matching mechanism. 

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

```

### References
If you make use if this code, please cite the following paper:

```bash

@inproceedings{Schwartz:2018,
  author={Schwartz, Roy and Thomson, Sam and Smith, Noah A.},
  title={{SoPa}: Bridging {CNNs}, {RNNs}, and Weighted Finite-State Machines},
  booktitle={Proc. of ACL},
  year={2018}
}
```

## Contact

For questions, comments or feedback, please email quynguyen@ethz.ch
