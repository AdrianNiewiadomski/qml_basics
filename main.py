import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQuick import QQuickView

if __name__ == "__main__":
    app = QApplication()
    view = QQuickView()

    # view.setSource("1_hello_world.qml")
    # view.setSource("2_rectangles.qml")
    view.setSource("3_text_underline.qml")

    view.show()
    sys.exit(app.exec())
