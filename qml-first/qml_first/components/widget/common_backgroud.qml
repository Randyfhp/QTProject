import QtQuick 2.0

Rectangle {
    width: 400
    height: 400
    Text {
        id: id
        text: qsTr("Hello world")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}
