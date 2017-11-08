import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    property alias button1: button1

    Column {
        id: column
        Layout.fillWidth: true
        anchors.horizontalCenter: item1.horizontalCenter
        anchors.verticalCenter: item1.verticalCenter
        spacing: 10

        Grid {
            id: grid
            rows: 3
            columns: 3
            spacing: 20

            ComboBox {
                id: comboBox
                enabled: true

                editable : true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 1
                currentIndex: 8
            }

            ComboBox {
                editable : true

                id: comboBox1
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 2
            }

            Button {
                id: button
                text: qsTr("Add node")
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 3
            }
        }

        Button {
            Layout.fillWidth : true
            width: column.width
            id: button1
            Layout.row: 2
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.rowSpan: 3
            text: qsTr("Generate XML")
        }

        Button {
            Layout.fillWidth : true
            width: column.width
            id: button2
            Layout.row: 3
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.rowSpan: 3
            text: qsTr("Save XML")
        }
    }
}
