NOT_Running_Containers=`docker ps -a | grep Exited |awk '{print $1}'`
echo $NOT_Running_Containers

for NOT_Running_Container in $NOT_Running_Containers ; do
  docker rm $NOT_Running_Container 
done
