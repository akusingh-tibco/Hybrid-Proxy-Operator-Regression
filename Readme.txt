This test suite covers cic20 Hybrid Connectivity scenarios described in TestLink here:
 http://testlink.tibco.com/testlink/linkto.php?tprojectPrefix=TCC&item=testsuite&id=1359822

Tibtest is used to run the test suite:
 https://confluence.tibco.com/display/TROP/Test+Framework

QUICK START GUIDE:

 Run a test suite:
   Prerequisites:
     - Update awss.env file as per setup and requirements
     - kubectl available on the path and configured to point to a cic20 cluster

 See results:
 ls $PATH_TO_COMPUTE_TESTS/stratosphere/testSuites/hybridProxyOperator/output

 For example, to run a single test in the hybridProxyOperator suite:
 ./tibtest -e ./awss.env ./hybridProxyOperator/Sanity_Hybrid_Proxy_Operaor.yaml
 
 Or the whole suite:
 ./tibtest -e ./basicauth/aws.env hybridProxyOperator