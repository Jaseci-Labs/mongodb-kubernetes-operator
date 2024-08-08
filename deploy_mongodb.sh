# Install operator (once per cluster)
kubectl apply -f config/crd/bases/mongodbcommunity.mongodb.com_mongodbcommunity.yaml

# Install RBAC and Roles (once per namespace)
kubectl apply -k config/rbac/ --namespace <my-namespace>
kubectl create -f config/manager/manager.yaml --namespace <my-namespace>

# Deploy MongoDB replicaset
kubectl apply -f config/samples/mongodb.com_v1_mongodbcommunity_cr.yaml --namespace <my-namespace>
