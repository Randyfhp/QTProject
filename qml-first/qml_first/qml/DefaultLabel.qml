import QtQuick 2.0

Text {
    default property var defaultText
    text: qsTr("hello, " + defaultText)
}
