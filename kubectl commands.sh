kubectl get pods  #for all apods from default namespaces
kubectl get pods -n all  #for all apods from all namespaces

#--dry-run to genarate manifest in yaml format
kubectl run redis --image=radis123 --dry-run=client -o yaml > radis.yml

#change pod definition
kubectl apply -f <file> #edit definition file with vi and apply chages
kubectl edit pod <pod name> #edit with kubectl edit 

#create pod from image
kubectl run <pod name> --image=<image>

#crete pod from file
kubectl create -f <file name with location>
kubectl delete pod <pod name>
#Replicaset 
kubectl create -f <replicaset-definition.yaml> #creates replicaset with definition file
kubectl get replicaset #view all replicasets
kubectl delete replicaset <replicaset name> #delete the replicaset
#change num of replicas in replica set
kubectl replace -f <file name.yaml> #change the number of replicas in definition file and run this command
kubectl scale --replicas=6 -f <file name.yaml> #change the replicas number in definition file with scale command
kubectl scale --replicas=6 replicaset <replicaset name> # this changes the number of replicas with changing the definition file