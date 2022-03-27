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
    }

    // id: nameDelegate
    Component {
        id: nameDelegate
        Text {
            text: model.name
            font.pixelSize: 30
            color: {
                if (model.active) {
                    return "red"
                } else {
                    return "black"
                }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    console.log(model.index)
                    model.active = !model.active
                }
            }
        }
    }

    ListView {
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        clip:true
    }
}
