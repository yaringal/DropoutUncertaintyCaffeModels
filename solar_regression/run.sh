# ../build_dev/tools/caffe train -gpu 0 --solver=solar_regression/MLP1024x1024x1024x1024_dropout_sampleTest_solver.prototxt > solar_regression/MLP1024x1024x1024x1024_dropout_sampleTest_solver.log 2>&1
# echo $!

# ../build_dev/tools/caffe train -gpu 0 --solver=solar_regression/MLP1024x1024x1024_dropout_sampleTest_solver.prototxt > solar_regression/MLP1024x1024x1024_dropout_sampleTest_solver.log 2>&1
# echo $!

# ../build_dev/tools/caffe train -gpu 0 --solver=mnist_uncertainty/lenet_all_dropout_solver.prototxt > mnist_uncertainty/lenet_all_dropout_solver.log 2>&1
# echo $!

# ../build_dev/tools/caffe train -gpu 0 --solver=mnist_uncertainty/lenet_dropout_solver.prototxt > mnist_uncertainty/lenet_dropout_solver.log 2>&1
# echo $!

# ../build_dev/tools/caffe train -gpu 0 --solver=mnist_uncertainty/lenet_solver.prototxt > mnist_uncertainty/lenet_solver.log 2>&1
# echo $!

bash cifar10_uncertainty/cifar10.sh > cifar10_uncertainty/cifar10.log 2>&1
echo $!
