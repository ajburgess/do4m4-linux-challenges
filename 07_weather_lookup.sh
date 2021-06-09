# Get the city either from the parameter, or ask the user if not supplied
city=$1
if [ "$city" == "" ]
then
  read -p "Enter a city: " city
fi
url="https://weather-api.qaalabs.com/${city}"
json=$(wget -qO- ${url})
# Check whether wget successfully got weather (or if for example failed with 404)
if [ $? == 0 ]
then
  description=$(echo ${json} | jq -r ".WeatherDescription")
  temperature=$(echo ${json} | jq -r ".TemperatureInCelsius")
  echo "Weather in ${city} is ${temperature} degrees with ${description}"
else
  echo "Could not get weather for ${city}"
fi


