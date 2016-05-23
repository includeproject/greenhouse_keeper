import forecastio

api_key = "0c08c3250a8a889eb937ca3e88cab730"
lat = 20.751902
lng = -103.438930

forecast = forecastio.load_forecast(api_key, lat, lng)

current = forecast.currently()
print "sumary: " + str(current.summary)
print "icon: " + str(current.icon)

print "temperature: " + str(current.temperature)
print "humidity: " + str(current.humidity)
print "preassure: " + str(current.pressure)
print "ozone: " + str(current.ozone)

print current.time

# Get forecast for the day to plot in R
FILE = open('temperature.data', 'w')
byHour = forecast.hourly()
for hourlyData in byHour.data:
    FILE.write(str(hourlyData.temperature) + "\n")
FILE.close()
