cd /home/ubuntu
mkdir node.js
cd /home/ubuntu/node.js
git clone https://github.com/sharanushettar644/k8s.git
cd k8s
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 883195043912.dkr.ecr.us-west-2.amazonaws.com
docker build -t node-sharan .
docker tag node-sharan:latest 883195043912.dkr.ecr.us-west-2.amazonaws.com/node-sharan:latest
docker push 883195043912.dkr.ecr.us-west-2.amazonaws.com/node-sharan:latest
#docker run -itd -p 3000:3000 sharan
cd ..
cd ..
helm upgrade --install john-node john
helm ls
