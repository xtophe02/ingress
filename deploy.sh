docker build -t xtophe02/myportofolio:latest -t xtophe02/myportofolio:$GIT_SHA -f ./myportofolio/Dockerfile ./myportofolio
docker build -t xtophe02/robotfriends:latest -t xtophe02/robotfriends:$GIT_SHA -f ./robotfriends/Dockerfile ./robotfriends
docker build -t xtophe02/yelpcamp:latest -t xtophe02/yelpcamp:$GIT_SHA -f ./yelpcamp/Dockerfile ./yelpcamp
docker build -t xtophe02/facerecognition:latest -t xtophe02/facerecognition:$GIT_SHA -f ./facerecognition/Dockerfile ./facerecognition


docker push xtophe02/yelpcamp:latest
docker push xtophe02/robotfriends:latest
docker push xtophe02/facerecognition:latest
docker push xtophe02/myportofolio:latest

docker push xtophe02/yelpcamp:$GIT_SHA
docker push xtophe02/robotfriends:$GIT_SHA
docker push xtophe02/facerecognition:$GIT_SHA
docker push xtophe02/myportofolio:$GIT_SHA

kubectl apply -f k8s
kubectl set image deployments/robotfriends-deploy robotfriends=xtophe02/robotfriends:$GIT_SHA
kubectl set image deployments/yelpcamp-deploy yelpcamp=xtophe02/yelpcamp:$GIT_SHA
kubectl set image deployments/facerecognition-deploy facerecognition=xtophe02/facerecognition:$GIT_SHA
kubectl set image deployments/myportofolio-deploy myportofolio=xtophe02/myportofolio:$GIT_SHA