sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl status docker
sudo systemctl start docker
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt install kubeadm kubelet kubectl
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
# Export the OS and CRI_O version values
export OS_VERSION=xUbuntu_22.04
export CRIO_VERSION=1.28
sudo curl -fsSL https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/$OS_VERSION/Release.key | sudo gpg --dearmor -o /usr/share/keyrings/libcontainers-archive-keyring.gpg
sudo curl -fsSL https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable:/cri-o:/$CRIO_VERSION/$OS_VERSION/Release.key | sudo gpg --dearmor -o /usr/share/keyrings/libcontainers-crio-archive-keyring.gpg
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y cri-o cri-o-runc cri-tools kubelet kubeadm kubectl
# Start the cri-o service
sudo systemctl daemon-reload
sudo systemctl enable crio
sudo systemctl start crio
# Use the same versions to avoid issues with the installation.
sudo apt-get install -y cri-o cri-o-runc cri-tools kubelet kubeadm kubectl
sudo apt-get update
sudo apt-get install -y software-properties-common
echo "deb [arch=amd64] https://packages.cri-o.io/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cri-o.list
curl -fsSL https://packages.cri-o.io/apt/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y cri-o cri-o-runc cri-tools
sudo apt-get install -y kubelet kubeadm kubectl
sudo systemctl enable crio
sudo systemctl start crio
sudo systemctl enable kubelet
sudo systemctl start kubelet
sudo systemctl enable crio
sudo systemctl start crio
sudo systemctl enable crio
sudo systemctl start crio
sudo systemctl enable kubelet
sudo systemctl start kubelet
which crio
dpkg -l | grep cri-o
sudo apt-get remove --purge cri-o cri-o-runc cri-tools
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get update
sudo apt-get install -y cri-o cri-o-runc cri-tools
sudo apt-get update
sudo apt-get install -y cri-o cri-o-runc cri-tools
systemctl list-units --type=service | grep cri
sudo systemctl enable crio
sudo systemctl start crio
sudo systemctl status crio
journalctl -u crio
sudo systemctl stop kubelet
sudo systemctl stop docker
sudo systemctl disable kubelet
sudo systemctl disable docker
sudo apt-get purge -y kubelet kubeadm kubectl
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io
sudo rm -rf /etc/kubernetes
sudo rm -rf /var/lib/kubelet
sudo rm -rf /var/lib/etcd
sudo rm -rf /var/lib/cni
sudo rm -rf /var/lib/docker
sudo rm -rf /var/run/docker
sudo deluser kubelet
sudo delgroup kubelet
sudo iptables -F
sudo iptables -t nat -F
sudo rm /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get update
sudo apt-get clean
swapoff -a
sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system
sysctl net.ipv4.ip_forward
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update && sudo apt-get install containerd.io && systemctl enable --now containerd
wget https://github.com/containernetworking/plugins/releases/download/v1.4.0/cni-plugins-linux-amd64-v1.4.0.tgz
mkdir -p /opt/cni/bin
tar Cxzvf /opt/cni/bin cni-plugins-linux-amd64-v1.4.0.tgz
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system
sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward
modprobe br_netfilter
sysctl -p /etc/sysctl.conf
sudo vi /etc/containerd/config.toml
sudo systemctl restart containerd && systemctl status containerd
systemctl status containerd.service
sudo apt-get update 
sudo systemctl restart containerd && systemctl status containerd
sudo nano /etc/containerd/config.toml
sudo vi/etc/containerd/config.toml
sudo vi /etc/containerd/config.toml
sudo vi /etc/containerd/config.tomlsudo systemctl restart containerd && systemctl status containerd
sudo systemctl restart containerd && systemctl status containerd
sudo kubeadm config images pull
sudo kubeadm init
sudo kubeadm config images pull
sudo apt-get update && sudo apt-get upgrade
sudo kubeadm config images pull
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
sudo mkdir -p -m 755 /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo kubeadm config images pull
sudo kubeadm init
kubectl get nodes 
apt-get update 
#To start using your cluster, you need to run the following as a regular user:
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
#Alternatively, if you are the root user, you can run:
export KUBECONFIG=/etc/kubernetes/admin.conf
#Apply the CNI YAML
kubectl apply -f https://reweave.azurewebsites.net/k8s/v1.30/net.yaml
kubectl get nodes
kubectl create pod lokesh 
kubectl create -f pod lokesh 
kubectl get pods
kubectl get nodes
vi pod1
kubectl apply -f pod1.yaml
kubectl create -f pod1.yaml
ls
cat pod1
mv pod1 pod1.yml
ls
kubectl create -f pod1.yaml
kubectl apply -f pod1.yaml
kubectl apply -f pod1.yml
vi pod1
kubectl apply -f pod1.yml
kubectl apply -f pod1.ymlls
ls
rm pod1 pod1.yml 
vi pod1.yml
kubectl apply -f pod1.ymlls
kubectl apply -f pod1.yml
kubectl get pods
kubectl get po
kubectl get namespace --show-labels 
kubectl get nodes
kubectl get namespaces
kubectl create namespace lokesh_ns1
kubectl create namespace lokeshns1
kubectl create namespace yesh-ns2
kubectl get namespaces 
vi lokesh-ns3
kubectl create namespace lokesh-ns3
kubectl get namespaces
kubectl get namespace --show-labels
vi webapp-pod1.yml
vi webapp-pod1.yml
kubectl create -f webapp-pod1.yml 
vi webapp-pod1.yml
vi webapp-pod2.yml
kubectl create -f webapp-pod2.yml 
vi webapp-pod2.yml
kubectl create -f webapp-pod2.yml 
vi webapp-pod2.yml
kubectl create -f webapp-pod2.yml 
kubectl get pods
vi webapp-pod2.yml
kubectl get namespaces
kubectl config set-context --current --namespace=lokeshns1
kubectl get pods
kubectl get nodes
kubectl get po
kubectl apply -f multicon-pod.yml
kubectl create -f multicon-pod.yml
vi multicon-pod.yml
kubectl apply -f multicon-pod.yml
kubectl get pods 
kubectl describe multicontainer-pod 
kubectl describe multicontainer-pod.yml
kubectl describe pod multicontainer-pod
kubectl get pod multicon-pod.yml -o wide 
kubectl get pod multicon-pod -o wide
kubectl get pod multicon-pod.yml -o wide
kubectl get pods
kubectl get pod multicontainer-pod -o wide  
kubectl get pod webapp1  -o wide  
kubectl delete -f multicon-pod.yml 
kubectl delete -f webapp-pod 
ls
kubectl delete -f webapp-pod1.yml webapp-pod2.yml 
kubectl delete -f webapp-pod1.yml 
kubectl delete -f webapp-pod1.yml
kubectl delete -f webapp-pod2.yml 
kubectl get pods
ls 
ls
rm -rf webapp-pod1.yml  webapp-pod2.yml
ls
vi webapp1-pod1.yml
ls
kubectl create pod -f webapp1-pod1.yml
kubectl create pod -f  webapp1-pod1.yml
vi webapp1-pod1.yml
kubectl create pod -f  webapp1-pod1.yml
kubectl create -f webapp1-pod1.yml
kubectl get pods
kubectl get pods -n lokeshns1
kubectl get pods -n yesh-ns1
kubectl get namespaces
kubectl get pods -n yesh-ns2
kubectl get pods -n lokeshns1
kubectl get events -n lokeshns1
kubectl describe pod webapp1 -n lokeshns1
kubectl get pods
kubectl get nodes
vi label-pod1
mv label-pod1 label-po1.yml
ls
kubectl create -f label-po1.yml 
kubectl get pods
kubectl get po
kubectl get po -o wide 
kubectl describe banglore-pod 
kubectl describe pod banglore-pod 
kubectl get pods --show-labels
kubectl describe pod banglore-pod 
ls
vi label-po1.yml 
kubectl apply pod -f label-po1.yml 
kubectl apply pod label-po1.yml 
kubectl apply -f pod label-po1.yml 
kubectl apply pod -f label-po1.yml 
kubectl apply pods -f label-po1.yml 
kubectl apply -f label-po1.yml 
kubectl get pods
kubectl describe pod banglore-pod 
kubectl get pods -l env=development 
kubectl get pods -l env!=development 
kubectl delete pod -l env!=development
kubectl get pods
vi selectors-pod.yml
vi selectors-pod1.yml
ls
kubectl create pods -f selectors-pod.yml 
kubectl create pod -f selectors-pod.yml 
kubectl create -f selectors-pod.yml 
kubectl get pods
kubectl get --show-labels
kubectl get pods --show-labels
kubectl create -f selectors-pod1.yml 
kubectl get pods
kubectl create -f selectors-pod.yml 
vi selectors-pod.yml
kubectl create -f selectors-pod.yml 
vi selectors-pod.yml
kubectl create -f selectors-pod.yml 
ls
vi selectors-pod1.yml 
ls
kubectlget pods
kubectl get pods
kubectl label pods my-pod myname=lokeshkumar
kubectl get --show-labels
kubectl get pods --show-labels
kubectl get pods -l myname=lokeshkumar
kubectl get pods -l myname!=lokeshkumar
kubectl delete pod -l myname=lokeshkumar
kubect get pods
kubectl get pods
kubectl get pods -l env in(developement)
kubectl get pods -l env in'(developement)'
kubectl get pods -l envin'(developement)'
kubectl get pods -l 'envin(developement)'
kubectl get pods -l 'envin (developement)'
kubectl get pods -l 'env in (developement)'
kubectl get pods -l 'envin(developement)'
kubectl get pods -l 'envin(developement,qa)'
kubectl get pods -l 'environment in (development, qa)'
kubectl get pods -l 'environment in (development)'
kubectl get pods -l 'env in (development)'
vi node-selector-pod1.yml
kubectl create -f node-selector-pod1.yml 
kubectl get pods
kubectl descibe pod nodelabels-selector 
kubectl describe pod nodelabels-selector 
kubectl get pods -o wide
kubectl label nodes ip-172-31-12-233 hardware=t2-medium
kubectl describe pod nodelabels
kubectl get pods
kubectl get pods -o wide
ls
vi node-selector-pod1.yml 
kubectl get pods -o wide
kubectl describe pod nodelabels
ll
pwd
ll
ls 
cd /
ls
ll
ls
vi rc-pod1.yml
kubectl apply -f rc-pod1.yml
kubectl get rc
kubectl describe rc nginx-rc
kubectl get pods --selector=app=nginx
kubectl edit rc nginx-rc
kubectl apply -f rc-pod1.yml 
kubectl get rc
kubectl edit rc nginx-rc
kubectl apply -f rc-pod1.yml 
kubectl get rc
kubectl apply -f rc-pod1.yml 
kubectl get rc
kubectl edit rc nginx-rc
kubectl apply -f rc-pod1.yml 
kubectl get rc
vi rc-pod1.yml 
kubectl apply -f rc-pod1.yml 
kubectl get rc
vi rs-pod1.yml
kubectl apply -f rs-pod1.yml 
kubectl ger rs
kubectl get rs
vi rs-mysqldb.yml
kubectl apply -f rs-mysqldb.yml 
kubectl get rs
kubectl get pods
vi cip-service.yml
kubectl apply -f cip-service.yml 
kubectl get all
kubectl get pods
kubectl get pod
kubectl get svc
kubectl get service 
kubectl get svc -o wide
kubectl describe backend-service
kubectl describe svc backend-service
vi np-service.yml
kubectl apply -f np-service.yml 
kubectl get svc -o wide 
vi lb-service.yml
kubectl apply -f lb-service.yml 
kubectl get svc 
kubectl get svc  -o wide 
vi external-ns.yml
kubectl apply -f external-ns.yml 
kubectl get svc -o wide 
ls
git remote add origin https://github.com/lokeshjyo01/kubernetes-aws-devops-lokeshtech.git
sudo apt update
sudo apt install git 
git config --global user.name "lokeshkumar"
git config --global user.email "lokeshjyo01@gmail.com"
git config --global --list
ssh-keygen -t rsa -b 4096 -C "lokeshjyo01@gmail.com"
