import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
/*
Item{
    id: itemXML

    ColumnLayout {
        id: columnLayout
        width: 330
        height: 356
        anchors.horizontalCenter: itemXML.horizontalCenter
        anchors.verticalCenter: itemXML.verticalCenter



        Button {
            Layout.fillWidth: true
            id: button
            text: qsTr("Button")
        }
        FocusScope {
            width: 200
            height: 200

            Rectangle {
                property int margins: 20
                x: margins
                y: margins
                width: parent.width - margins*2
                height: parent.height - margins*2
                border.color: "black"
                border.width: 2
                radius: 10
                color: "pink"

                Flickable {
                    id: flick
                    width: parent.width - 10
                    height: parent.height;
                    clip: true

                    function ensureVisible (){
                        if (contentY >= r.y)
                            contentY = r.y;
                        else if (contentY+height <= r.y+r.height)
                            contentY = r.y+r.height-height;
                    }

                    TextEdit {
                        id: message
                        x: 5
                        width: parent.width
                        height: parent.height
                        wrapMode: "WrapAtWordBoundaryOrAnywhere"
                        onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
                        font.pixelSize: 16
                    }
                }
            }
        }
    }
}
*/
Item {
    id: main
    width: 640
    height: 480

    ScrollView {
        id: view
        anchors.fill: parent

        TextArea {
            text: "TextArea\n...\n...\n...\n...\n...\n...\n"
        }
    }
    Button {

        text: qsTr("Save XML")
    }


}
