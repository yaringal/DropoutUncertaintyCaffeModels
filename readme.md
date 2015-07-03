#Dropout As A Bayesian Approximation: Code

These are the [Caffe](http://caffe.berkeleyvision.org/) models used for the experiments in [Dropout As A Bayesian Approximation: Representing Model Uncertainty In Deep Learning](http://mlg.eng.cam.ac.uk/yarin/publications.html#Gal2015Dropout) and [Bayesian Convolutional Neural Networks With Bernoulli Approximate Variational Inference](http://mlg.eng.cam.ac.uk/yarin/publications.html#Gal2015Bayesian).

Each folder correspond to a different dataset. Solar and CO2 folders have the processed datasets in the folder. MNIST and CIFAR10 use the default datasets processed by Caffe. Each folder contains 4 files for each experiment: *_deploy.prototxt, *_sampleTest_deploy.prototxt, *_solver.prototxt, *_dropout_solver.log. The first contains the network structure, the second contains the network structure for test time (when we sample stochastic forward passes through the network), the third is the solver configuration file, and the fourth is the resulting log file. The file name prefix in each folder corresponds to the network structure (for example lenet, MLP1024x1024x1024, and so on). This is followed by the experiment name (for example dropout, all_dropout, none, tanh, and so on). These are quite obvious from context.

Pycaffe was used to produce the plots shown in the papers. To get pycaffe to give stochastic forward passes through the dropout network, add the following line of code in src/caffe/proto/caffe.proto to "message DropoutParameter" (line 471):
```
  optional bool sample_weights_test = 2 [default = false]; // Sample weights for testing or use the mean 
```
Additionally, in src/caffe/layers/dropout_layer.cpp and src/caffe/layers/dropout_layer.cu, replace (two occurrences in each file)
```
  if (this->phase_ == TRAIN) {
```
with 
```
  if (this->phase_ == TRAIN || this->layer_param_.dropout_param().sample_weights_test()) {
```
