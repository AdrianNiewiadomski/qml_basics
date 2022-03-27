import QtQuick 2.0

Image {
    id: image
    width: 600;
    height: 600;
    source: "https://www.nasa.gov/sites/default/files/thumbnails/image/potw2109a.jpg"
    fillMode: Image.PerserveAspectFit

    Item {
        x: 0;
        y: 550;
        height: 50
        width: parent.width

        visible: image.progress != 1

        Rectangle {
            color: "red"
            height: parent.height
            width: image.progress * 600
        }

        Text {
            color: "black"
            width: parent.width
            height: parent.height
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            text: Math.round(image.progress * 100) / 100 + "%";
        }
    }
}
