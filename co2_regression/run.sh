../build_dev/tools/caffe train -gpu 0 --solver=co2_regression/MLP1024x1024x1024x1024_dropout_sampleTest_solver.prototxt > co2_regression/MLP1024x1024x1024x1024_dropout_sampleTest_solver.log 2>&1
echo $!

../build_dev/tools/caffe train -gpu 0 --solver=co2_regression/MLP1024x1024x1024_dropout_sampleTest_solver.prototxt > co2_regression/MLP1024x1024x1024_dropout_sampleTest_solver.log 2>&1
echo $!

../build_dev/tools/caffe train -gpu 0 --solver=co2_regression/MLP1024x1024_dropout_sampleTest_solver.prototxt > co2_regression/MLP1024x1024_dropout_sampleTest_solver.log 2>&1
echo $!

../build_dev/tools/caffe train -gpu 0 --solver=co2_regression/MLP512x512_dropout_sampleTest_solver.prototxt > co2_regression/MLP512x512_dropout_sampleTest_solver.log 2>&1
echo $!

