import QtQuick 2.0

Rectangle {
    width: 400
    height: 400
    color: "black"

    Grid {
        x:  5
        y: 5

        columns: 5
        rows: 5
        spacing: 10 // between rectangles

        Repeater {
            model: 24

            // delegate jest tutaj opcjonalny. Jeśli nie będzie klucza to rezultat się nie zmieni.
            delegate: Rectangle {
                width: 70
                height: 70
                color: "green"
            }
        }
    }
}
