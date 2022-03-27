import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQuick import QQuickView

if __name__ == "__main__":
    app = QApplication()
    view = QQuickView()

    # view.setSource("1_hello_world.qml")
    view.setSource("1_hello_world.qml")

    view.show()
    sys.exit(app.exec())
