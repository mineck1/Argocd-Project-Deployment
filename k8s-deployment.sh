#!/bin/bash
sed -i "s#replace#${imageName}#g" blue.yml
kubectl -n test get deployment ${deploymentName} > /dev/null

# if [[ $? -ne 0 ]]; then
  #   echo "deployment ${deploymentName} doesnt exist"
  # kubectl -n  apply -f blue.yml
  #  echo "deployment ${deploymentName} exist"
  #  echo "image name - ${imageName}"
   # kubectl -n test set image deploy ${deploymentName} ${containerName}=${imageName} --record=true
#fi
kubectl  apply -f blue.yml -n test
