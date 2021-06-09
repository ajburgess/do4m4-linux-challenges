# Read each city from standard input, and use it as the input for the 07 script
while read city
do
  # Make use of the previous script, pass it the city as a parameter
  ./07_weather_lookup.sh ${city}
done
