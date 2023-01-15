## customer 1001
docker exec -i clab-srv6-demo-origin1 sh -s < ./set_client.sh 10.1.4.
docker exec -i clab-srv6-demo-destination1 sh -s < ./set_client.sh 10.6.4.
docker exec -i clab-srv6-demo-destination3 sh -s < ./set_client.sh 10.7.4.
## customer 1002
docker exec -i clab-srv6-demo-origin2 sh -s < ./set_client.sh 10.10.10.
docker exec -i clab-srv6-demo-destination2 sh -s < ./set_client.sh 10.6.4.
docker exec -i clab-srv6-demo-destination4 sh -s < ./set_client.sh 10.7.10.
