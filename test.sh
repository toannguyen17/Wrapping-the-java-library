
rm -rf build/test/
mkdir build/test

# shellcheck disable=SC2164
cd src/main/
javac org/usefullibs/greeter/impl/HelloWorld.java -d ../../build/test/ && echo 'Compiled org.usefullibs.greeter.impl.HelloWorld class!'

# shellcheck disable=SC2164
cd ../test
javac org/usefullibs/greeter/impl/HelloWorldTest.java -cp ../../build/test/:../../libs/junit-4.11.jar -d ../../build/test/ && echo 'Compiled org.usefullibs.greeter.impl.HelloWorldTest class!'


# shellcheck disable=SC2164
cd ../../build/test
java -cp ../../libs/junit-4.11.jar:. \
  org.junit.runner.JUnitCore \
  org.usefullibs.greeter.impl.HelloWorldTest
