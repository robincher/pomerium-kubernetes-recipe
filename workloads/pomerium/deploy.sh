echo "=> Create our random shared-secret and cookie-secret keys as envars"
kubectl create secret generic shared-secret --from-literal=shared-secret=$(head -c32 /dev/urandom | base64)
kubectl create secret generic cookie-secret --from-literal=cookie-secret=$(head -c32 /dev/urandom | base64)

echo "=> Create config map for Pomerium"
kubectl apply -f pomerium-config.yml

echo "=> Deploy pomerium proxy, cache, authorize, and authenticate"
kubectl apply -f pomerium-proxy.yml
kubectl apply -f pomerium-authenticate.yml
kubectl apply -f pomerium-authorize.yml
kubectl apply -f pomerium-cache.yml