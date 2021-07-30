# flut_notif_lisner
Flutter Notification Listenner

this is my app to listener all incomming notifications in adroid


> install the dependecy in ``` pubspec.yaml``` notifications: 2.0.1

>add these code in your android/add/source AndroidManifest.xml
```xml
  <service
        android:label="notifications"
        android:name="dk.cachet.notifications.NotificationListener"
        android:permission="android.permission.BIND_NOTIFICATION_LISTENER_SERVICE">
        <intent-filter>
            <action android:name="android.service.notification.NotificationListenerService" />
        </intent-filter>
    </service>


    </aplication>

```
# Usage

All incoming data points are streamed with a StreamSubscription which is set up by calling the listen() method on the notificationStream stream object.

Given a method onData(NotificationEvent event) the subscription can be set up as follows:
```dart
Notifications _notifications;
StreamSubscription<NotificationEvent> _subscription;
...
void onData(NotificationEvent event) {
    print(event);
}

void startListening() {
    _notifications = new Notifications();
    try {
      _subscription = _notifications!.notificationStream!.listen(onData);
    } on NotificationException catch (exception) {
      print(exception);
    }
}
```


```
