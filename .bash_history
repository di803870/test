cd
ufw disable
apt-get update -y 
alias vi='vim'
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker && service docker start
service docker status
vi /etc/hosts
vi /etc/docker/daemon.json
systemctl restart docker && systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat << EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update -y
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
swapoff -a
vi /etc/fstab
kubeadm init --apiserver-advertise-address 211.183.3.200 --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get node
docker pull docker.io/calico/kube-controllers:v3.20.1
kubectl get node
vi /etc/docker/daemon.json
kubectl delete -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
ls
mkdir docker
cd docker
ls
touch Dockerfile
vi Dockerfile 
cd
ls
cd docker/
touch index.html
vi index.html 
ls
docker image ls
docker build -t 1.0
docker image ls
docker build -t myweb:1.0 .
docker image ls
ls
docker build -t myweb:2.0 .
docker image ls
docker rmi myweb:2.0
docker image ls
ls
vi index.html 
docker rmi myweb:2.0
docker build -t myweb:2.0 .
docker image ls
docker push myweb:1.0
docker push di803870/myweb:1.0
vi index.html 
docker build -t di803870/myweb:1.0
docker build -t di803870/myweb:1.0 .
ls
vi index.html 
docker build -t di803870/myweb:2.0 .
ls
docker image ls
docker rmi myweb:2.0
docker rmi myweb:1.0
ls
docker image ls
clear
docker image ls
docker push di803870/myweb:1.0 .
docker push di803870/myweb:1.0
docker login
docker push di803870/myweb:1.0
docker push di803870/myweb:2.0
ls
cd
touch namespace.yaml
vi namespace.yaml 
rm -rf namespace.yaml 
kubectl create ns testing
kubectl get ns
ls
cd docker/
docker image ls
ls
vi index.html 
docker rmi myweb:1.0
docker rmi di803870/myweb:1.0
docker rmi di803870/myweb:2.0
docker image ls
ls
docker build -t di803870/testing:2.0 .
vi index.html 
docker build -t di803870/testing:1.0 .
docker image ls
docker image push di803870/testing:1.0
docker image push di803870/testing:2.0
ls
cd
ls
kubectl get ns
kubectl create secret docker-registry testing-secret --docker-server=https://index.docker.io/v1/ --docker-username=di803870 --docker-password=dnrldnrl69 -n testing
kubectl get sc
kubectl get secrete
kubectl get secret
ls
cd docker/
ls
vi index.html 
cd
kubectl get node
cat ~/.docker/config.json
ls
vi pvc.yaml
ls
kubectl apply -f pvc.yaml
kubectl get pod
kubectl get pod -n testing 
kubectl delete pvc.yaml
kubectl delete -f pvc.yaml
vi pvc.yaml 
cp pvc.yaml pvc1.yaml
ls
vi pvc1.yaml 
kubectl apply -f pvc1.yaml
kubectl get pod
kubectl get pod -n testing
kubectl get all -n testing
kubectl delete pvc1.yaml
kubectl delete -f pvc1.yaml
ls
cp pvc.yaml pvc2.yaml
vi pvc2.yaml 
kubectl apply -f pvc2.yaml
kubectl get all -n testing 
kubectl delete -f pvc3.yaml
kubectl delete -f pvc2.yaml
ls
mkdir kube
cd kube
touch node.yaml
vi node.yaml
ls
kubectl apply -f node.yaml
kubectl get svc -n testing
vi pvc.yaml
ls
kubectl apply -f pvc.yaml
kubectl delete -f pvc.yaml
kubectl delete  pvc.yaml
kubectl delete -f  pvc.yaml
ls
vi pvc.yaml
cd
ls
cd kube
ls
vi pvc.yaml 
kubectl apply -f pvc.yaml
vi 
vi pvc.yaml 
kubectl apply -f pvc.yaml
kubectl delete -f pvc.yaml
cd
ls
kubectl get all -n testing
ls
cd kube
kubectl delete -f node.yaml
cd
ls
kubectl get all -n testing
vi pvc.yaml
vi pvc2.yaml
kubect apply -f pvc2.yaml
kubectl apply -f pvc2.yaml
kubectl delete -f pvc2.yaml
kubectl get all -n testing
vi pvc2.yaml
kubectl apply -f pvc2.yaml
kubectl create secret docker-registry accessdocker --docker-username=di803870 --docker-password=dnrldnrl69 --docker-server=index.docker.io
kubectl get secret testing -o yaml
kubectl get secret
kubectl get secret accessdocker -o yaml
kubectl delete secret -f accessdocker
kubectl delete secret  accessdocker
kubectl create secret docker-registry
kubectl create secret docker-registry testing --docker-username=di803870 --docker-password=dnrldnrl69 --docker-server=index.docker.io
kubectl get secret testing -o yaml
ls
cp pvc2.yaml pvc3.yaml
vi pvc3.yaml
kubectl delete pvc2.yaml
kubectl delete -f pvc2.yaml
kubectl apply -f pvc3.yaml
kubectl get all -n testing
ls
vi pvc3.yaml
kubectl delete -f pvc3.yaml
vi pvc3.yaml
kubectl apply -f pvc3.yaml
kubectl get all -n testing
kubectl describe pod -n testing test-deploy-6b9b4fb8f9-2wwh4
vi pvc3.yaml
kubectl describe pod -n testing test-deploy-6b9b4fb8f9-2wwh4
kubectl get all -n testing
clear
kubectl get all -n testing
kubectl exec deployment.apps/test-deploy -n testing -- ls /img
kubectl get all -n testing
clear
kubectl get all -n testing
ls
vi pvc3.yaml
ab -c 1000 -n 200 -t 60 http://211.183.3.118:30003
wget https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
ls
vi components.yaml 
kubectl apply -f components.yaml
ab -c 1000 -n 200 -t 60 http://211.183.3.118:30003
ab -c 1000 -n 200 -t 60 http://211.183.3.201:30003
apt get install apache2-utils
apt-get install apache2-utils
ab -c 1000 -n 200 -t 60 http://211.183.3.201:30003
kubectl top no --use-protocol-buffers ; kubectl get hpa
ls
vi pvc3.yaml
kubectl get all -n testing
vi pvc3.yaml 
kubectl get deploy -n testing
vi pvc3.yaml 
ls
vi components.yaml 
vi pvc3.yaml 
kubectl autoscale deployment test-deploy --cpu-percent=20 --min=1 --max=10
kubectl get deployment -n testing
kubectl autoscale deployment test --cpu-percent=20 --min=1 --max=10
ls
kubectl get all -n testing
ping www.google.com
ls
kubectl delete -f pvc3.yaml
kubectl apply -f pvc3.yaml
kubectl get all -n testing
ls
cd docker/
ls
vi Dockerfile 
vi /usr/local/apache2/htdocs
cd /usr/local/apache2/htdocs
cd /usr/local/apache2/
ls
vi Dockerfile 
ls
vi Dockerfile 
ls
cd
vi pvc3.yaml
kubectl apply -f pvc3.yaml
kubectl get all -n testing
kubectl delete -f pvc3.yaml
vi /etc/hosts
kubectl apply -f pvc3.yaml
kubectl get all -n testing
kubectl get pod -n testing
kubectl get pod -n testing -o wide
kubectl get pod -n testing
kubectl get all -n testing
clear
kubectl get all -n testing
kubectl describe svc -n testing all
kubectl describe svc -n testing test
kubectl delete -f pvc3
kubectl delete -f pvc3.yaml
ls
kubectl apply -f pvc3.yaml
kubectl get all -n testing
kubectl delete -f pvc3.yaml
kubectl get all -n testing
ls
vi pvc3.yaml 
kubectl apply -f pvc3.yaml
kubectl get all -n testing
vi /etc/hosts
kubectl get all -n testing
vi pvc3.yaml
ls
vi /etc/hosts
kubectl delete -f pvc3.yaml
kubectl apply -f pvc3.yaml
kubectl get all -n testing
kubectl describe -n testing /test-deploy-6b9b4fb8f9-z95r4 
kubectl describe -n testing test-deploy-6b9b4fb8f9-z95r4 
kubectl describe pod -n testing test-deploy-6b9b4fb8f9-z95r4 
kubectl get all -n testing
vi /etc/hosts
ping www.google.com
ping worker1
ping worker2
ping worker3
ping nfs
ping lb
ping 10.5.1.138
ping 211.183.3.200
ping 10.5.1.138
ls
kubectl get node
vi pvc3.yaml
kubectl get all -n testing
ping www.google.com
kubectl get all -n testing
vi /etc/hosts
apt-get install -y apache2 haproxy
systemctl start httpd
vi /etc/hosts
vi /etc/haproxy/haproxy.cfg
vi /etc/haproxy/haproxy.cfg 
getenforce
vi /etc/selinux
cd /etc/selinux
ls
vi semanage.conf 
getenforce
cd
systemctl status haproxy
vi /etc/haproxy/haproxy.cfg
systemctl restart haproxy
service haproxy restart
vi /etc/haproxy/haproxy.cfg
service haproxy restart
systemctl stop haproxy
vi /etc/haproxy/haproxy.cfg
service apache2 stop
service haproxy restart
journalctl -xe
vi /etc/haproxy/haproxy.cfg
apt-get list | grep haproxy
apt search haproxy
haproxy --v
haproxy --vv
haproxy -vv
haproxy -v
apt-get remove haproxy
kubectl get pod -n kube-system
swapoff -a
swapoff- a
swapoff -a
apt-get install -y systemd
kubectl delete -f pvc3.yaml
kubeadm reset
sudo kubeadm init --control-plane-endpoint haproxy:6443 --upload-certs
kubectl get node
kubeadm init --apiserver-advertise-address 211.183.3.200 --pod-network-cidr=192.168.0.0/16
kubectl delete -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubeadm init --apiserver-advertise-address 211.183.3.200 --pod-network-cidr=192.168.0.0/16
kubeadm reset
kubectl delete -f https://docs.projectcalico.org/manifests/calico.yaml
kubeadm init --apiserver-advertise-address 211.183.3.200 --pod-network-cidr=192.168.0.0/16
kubeadm reset
kubeadm init --control-plane-endpoint haproxy:6443
kubeadm reset
kubectl delete -f https://docs.projectcalico.org/manifests/calico.yaml
sudo kubeadm init --control-plane-endpoint haproxy:6443 --upload-certs
kubeadm reset
kubectl delete -f https://docs.projectcalico.org/manifests/calico.yaml
kubeadm init --apiserver-advertise-address 211.183.3.200 --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
kubectl get node
ls
kubectl get ns
ls
kubectl create ns testing
ls
kubectl apply -f pvc3.yaml
kubectl get all -n testing
ls
kubectl get all -n testing
kubectl delete -f pvc3.yaml
kubectl get all -n testing
kubectl delete -f pod test-deploy-6b9b4fb8f9-jqw68
kubectl delete pod test-deploy-6b9b4fb8f9-jqw68
kubectl get all -n testing
reboot
cd
ufw disabled
ufw disable
ip a
kubectl get node
