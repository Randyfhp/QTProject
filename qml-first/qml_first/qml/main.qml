import QtQuick 2.0
import QtQuick.Window 2.12
import "qrc:/widget/widget"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 640
        height: 480
        anchors.margins: 10
        color: "#FFEEFF"
        gradient: Gradient {
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 0.33; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }

        Item {
            width: 160
            height: 120
            Text {
                text: qsTr("Hello world")
                anchors.margins: 10
                font {
                    family: "Century"
                    pixelSize: 28
                }
                color: "#000000"
                style: Text.Sunken
                styleColor: '#FF4444'
                elide: Text.ElideRight
    //            verticalAlignment: Text.AlignTop
                anchors.fill: parent
                anchors.centerIn: parent
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit()
            }
        }

        DefaultLabel {
            text: "world"
            width: parent.width
            anchors.horizontalCenter: parent
        }

        TextButton {
            text:"按键"
        }
    }
}
