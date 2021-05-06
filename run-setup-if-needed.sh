if [ -z "$(ls -A /secrets)" ]; then
   echo "starting setup docker"
   docker-compose -f docker-compose.setup.yml run --rm keystore
   docker-compose -f docker-compose.setup.yml run --rm certs
   echo "setup done"
   
else
   echo "No need to setup"
fi
