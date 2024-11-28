Set Up the App

1: Clone the repository
```git clone https://github.com/DIRRHUB/robot_task.git```

2: Run the server
cd server/bin
dart run server.bin

3: Run the app
cd app
flutter pub get
flutter run -d chrome

The automatically tries to connect to the server on localhost:8080. Then a point moves based on setup configuration on the server. You can change the speed of the point moving Slider, stop and start moving (it works with delay cause we have 1 seconds delay on animation) and get initial setup speed from API (in facts its just get request on GitHub page where initial_speed file is located)
