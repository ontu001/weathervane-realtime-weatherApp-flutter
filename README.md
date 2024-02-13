WeatherVane-
Dynamic Weather forecast application using openWeater API.
https://github.com/.../weathervane-realtime-weatherApp...
Packages -
1. Fetch current device location using (geolocator) package, this wonderful package helps to get both ios and android device current location without any complexity native code.
2. Fetch api using (http) package
3. Current weather update using openWeater api (free api key)
4. Use flutter spinkit for attractive loading animation ( during the data fetching time).
4. Formating time and date I used (intl) package.
Functionality -
First it will show a splash screen ( forgive for canva watermark I will fix it later) then it will navigate to the the screen where the weather data being fetched based on device location. During this time i use a beautiful loading screen for good user experience. After fetching data from openWeater it will navigate to the home screen where user can see all necessary weather updates.
all the way down u can see a search button , it will navigate u to the search screen where u can search ur desire city for asking weather updates. 
From the very top right corner of the home screen u can see a location button. It will give u the current weather update based on ur device location.
