import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("xml_puh")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page2 {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        ColorAnimation {
            from: "white"
            to: "black"
            duration: 200
        }
        TabButton {
            text: qsTr("XML_PUH")
        }
        TabButton {
            text: qsTr("XML_EDITOR")
        }
    }
}
