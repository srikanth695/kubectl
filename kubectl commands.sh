kubectl get pods  #for all apods from default namespaces
kubectl get pods -n all  #for all apods from all namespaces

#--dry-run to genarate manifest in yaml format
kubectl run redis --image=radis123 --dry-run=client -o yaml > radis.yml

#create pod from image
kubectl run <pod name> --image=<image>

#crete pod from file
kubectl create -f <file name with location>