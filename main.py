import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQuick import QQuickView

if __name__ == "__main__":
    app = QApplication()
    view = QQuickView()

    # view.setSource("1_hello_world.qml")
    # view.setSource("2_rectangles.qml")
    # view.setSource("3_text_underline.qml")
    # view.setSource("4_images.qml")
    # view.setSource("5_progress_bar.qml")
    # view.setSource("6_border_images.qml")

    # view.setSource("grid.qml")
    # view.setSource("repeater.qml")
    # view.setSource("repeater2.qml")
    # view.setSource("repeater3//repeater.qml")
    # view.setSource("repeater4.qml")
    # view.setSource("repeater5.qml")
    # view.setSource("repeater6.qml")

    # view.setSource("listView.qml")
    # view.setSource("listView2.qml")
    view.setSource("listView3.qml")

    view.show()
    sys.exit(app.exec())
