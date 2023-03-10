import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: thisRect
        width: 480; height: 360;
        anchors{
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        color: "lightgray"

        Text {
            id: helloWorldText
            text: qsTr("Hello World")
            font.family: "Chandas"
            font.pointSize: 32
            anchors{
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
        }

        Button {
            id: helloWorldButton
            text:  qsTr("Click me for further hello world")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: helloWorldText.bottom
            onClicked: hiddenHelloWorldText.visible = true
        }

        Text {
            id: hiddenHelloWorldText
            text: qsTr("Hello World Again")
            visible: false
            anchors.bottom: thisRect.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
