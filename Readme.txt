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

# Sanity_Hybrid_Proxy_Operator Covers TCC - 3499, 3415, 3685
# Regression_Hybrid_Proxy_Operator Covers 3386, 3383, 3387, 3398, 3378, 3419, 3407, 3420, 3384, 3533,
#                                         3385, 3395, 3417, 3418, 3394, 3392, 3540, 3537, 3483, 3479,
#                                         3410, 3539, 3393, 3400, 3414, 3413, 3534, 3541, 3424, 3425, 
#                                         3427, 3477, 3535, 3536, 35xx, 3421, 3411.