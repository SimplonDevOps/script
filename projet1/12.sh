
var= 10 20 30

fonctioncalculdestickets2 ()

echo $var | awk '{tot =  tot + $0} END  {print tot}'




