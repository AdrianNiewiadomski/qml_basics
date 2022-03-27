import QtQuick 2.0

Rectangle {
    width: 200
    height: 120
    color: "grey"

    Text {
        x: 50
        y: 50

        text: "Hello World!"

        Rectangle {
            color: "red"

            width: parent.width
            height: 5
            y: 15
        }
    }
}
