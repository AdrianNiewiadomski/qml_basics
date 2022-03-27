import QtQuick 2.0

Rectangle {
    width: 300; height: 300; color: "black"

    Grid {
        x:15; y: 15
        columns: 2; rows: 2; spacing: 20 // between rectangles

        Repeater {
            model: ["red", "green", "blue", "yellow"]
            Rectangle {
                width: 125; height: 125; color: model.modelData
            }
        }
    }
}
