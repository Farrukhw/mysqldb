pipeline 
{ 
  agent any 
  environment 
  { 
    dockerRepo = 'farrukhw/dice'
    imageTag=':webapp_tomcat'
    registryCredential = 'Hub.Docker'
  } 
  stages 
  { 
    stage('Build') 
    { 
      steps 
      { 
        sh 'docker build . -t ' + dockerRepo+imageTag+_$BUILD_NUMBER  
      } 
    } 
  }

//    stage('Test') 
//    { 
//      steps { 
//        sh 'docker container rm -f node || true'  
//        sh 'docker container run -p 8001:8080 --name node -d farrukhw/test-node-app' 
//        sh 'curl -I http://localhost:8001' 
//      } 
//    } 

//    stage('Publish') 
//    { 
//        steps
//        { 
//            script 
//            { 
//                docker.withRegistry( '', registryCredential ) 
//                { 
//                  sh 'docker push farrukhw/test-node-app:latest' 
//                } 
//             } 
//         } 
      
//     } 
}
