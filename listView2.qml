import QtQuick 2.0

Rectangle {
    width: 150; height: 200; color: "white"

    // id: nameModel
    ListModel {
        id: nameModel

        ListElement { name: "Alice"; active: false}
        ListElement { name: "Bob"; active: false }
        ListElement { name: "Jane"; active: false }
        ListElement { name: "Victor"; active: false }
        ListElement { name: "Wendy"; active: false }
        ListElement { name: "Alice"; active: false}
        ListElement { name: "Bob"; active: false }
        ListElement { name: "Jane"; active: false }
        ListElement { name: "Victor"; active: false }
        ListElement { name: "Wendy"; active: false }
        ListElement { name: "Alice"; active: false}
        ListElement { name: "Bob"; active: false }
        ListElement { name: "Jane"; active: false }
        ListElement { name: "Victor"; active: false }
        ListElement { name: "Wendy"; active: false }
        ListElement { name: "Alice"; active: false}
        ListElement { name: "Bob"; active: false }
        ListElement { name: "Jane"; active: false }
        ListElement { name: "Victor"; active: false }
        ListElement { name: "Wendy"; active: false }
    }

    // id: nameDelegate
    Component {
        id: nameDelegate
        Text {
            text: model.name
            font.pixelSize: 30

            Component.onCompleted: {
                console.log("Weclome", model.index, model.name)
            }

            Component.onDestruction: {
                console.log("Goodbeye", model.index, model.name)
            }
        }
    }

    // Try to grab item with mouse and slide up and down
    ListView {
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        clip:true
        cacheBuffer: 40 // optional
    }
}
