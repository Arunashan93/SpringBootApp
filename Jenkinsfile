node{
stage('SCM Checkout'){
git 'https://github.com/Arunashan93/SpringBootApp.git'
}
stage('Compile-test-Package'){
def mvnHome = tool name: 'maven-3',type: 'maven'
sh "${mvnHome}/bin/mvn package"
}
  post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }
            }
}


