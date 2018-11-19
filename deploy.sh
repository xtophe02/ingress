docker build -t xtophe02/myportofolio:latest -t xtophe02/myportofolio:$GIT_SHA -f ../myportofolio/Dockerfile ../myportofolio
docker build -t xtophe02/robotfriends:latest -t xtophe02/robotfriends:$GIT_SHA -f ../robotfriends/Dockerfile ../myportofolio
docker build -t xtophe02/yelpcamp:latest -t xtophe02/yelpcamp:$GIT_SHA -f ../yelpcamp/Dockerfile ../myportofolio
docker build -t xtophe02/facerecognition:latest -t xtophe02/facerecognition:$GIT_SHA -f ../facerecognition/Dockerfile ../myportofolio


docker push xtophe02/yelpcamp:latest
docker push xtophe02/robotfriends:latest
docker push xtophe02/facerecognition:latest
docker push xtophe02/myportofolio:latest

docker push xtophe02/yelpcamp:$GIT_SHA
docker push xtophe02/robotfriends:$GIT_SHA
docker push xtophe02/facerecognition:$GIT_SHA
docker push xtophe02/myportofolio:$GIT_SHA

#kubectl apply -f k8s
#kubectl set image deployments/robotfriends-service robotfriends=xtophe02/robotfriends:$GIT_SHA
#kubectl set image deployments/yelpcamp-service yelpcamp=xtophe02/yelpcamp:$GIT_SHA
#kubectl set image deployments/facerecognition-service facerecognition=xtophe02/facerecognition:$GIT_SHA
#kubectl set image deployments/facerecognitionapi-service facerecognitionapi=xtophe02/facerecognitionapi:$GIT_SHA
#kubectl set image deployments/myportofolio-service myportofolio=xtophe02/myportofolio:$GIT_SHA