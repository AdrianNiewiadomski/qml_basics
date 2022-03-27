import QtQuick 2.0

BorderImage {
    source: "images/red.png"
    border: {
        left: 30
        top: 30
        right: 30
        bottom: 30
    }

    horizontalTileMode: BorderImage.Stretch
    verticalTileMode: BorderImage.Stretch
}
