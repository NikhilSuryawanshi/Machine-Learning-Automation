# !/bin/sh
accuracy=$(sudo docker exec myos cat /ml/accuracy.txt)
limit=0.95
if ( $(echo "$accuracy > $limit" | bc -l  ));
then echo "complete";
exit 0
else echo "not complete";
sudo docker exec myos python3 /ml/less_accuracy.py
exit 1
fi
