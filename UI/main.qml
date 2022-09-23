import QtQuick
import QtQuick.Controls.Basic
ApplicationWindow {
    visible: true
    width: 400
    height: 600
    x: screen.desktopAvailableWidth - width - 12
    y: screen.desktopAvailableHeight - height - 48
    flags: Qt.FramelessWindowHint | Qt.Window
    title: "Python Desktop App Example"
    property string currTime: "00:00:00"
    property QtObject backend
    Rectangle {
        anchors.fill: parent
        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/image.jpg"
            fillMode: Image.PreserveAspectCrop
        }
        Rectangle {
            anchors.fill: parent
            color: "transparent"
            Text {
                text: currTime  
                font.pixelSize: 24
                color: "white"
            }
        }
    }
    Connections {
        target: backend
        function onUpdated(msg) {
            currTime = msg;
        }
    }
}