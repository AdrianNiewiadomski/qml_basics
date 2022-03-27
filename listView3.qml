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

        Rectangle {
            color: lv.currentIndex == index ? "grey" : "yellow"
            implicitHeight: txt.implicitHeight

            // implicitWidth: txt.implicitWidth
            anchors {
                left: parent.left;
                right: parent.right;
            }

            Text {
                id: txt
                text: model.name
                font.pixelSize: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: lv.currentIndex = model.index // może być też samo index
            }
        }
    }

    // Try to grab item with mouse and slide up and down
    ListView {
        id: lv
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        clip:true
        cacheBuffer: 40 // optional

        onCurrentIndexChanged: {
            console.log(currentIndex)
        }
    }
}
