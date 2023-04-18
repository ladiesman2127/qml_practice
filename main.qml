import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 500
    height: 800
    Label {
        id: main_label
        width: window.width
        y: 20
        font.family: "Helvetica";
        font.pointSize: 16;
        font.bold: true
        text: "Обработка результатов пеленгования"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Rectangle {
        z:0
        id: grouping
        width: 0.9 * window.width
        x: main_label.x
        y: main_label.y + main_label.height + 40
        height: 200
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 1
        Label {
            id:lbl_grouping
            font.family: "Helvetica";
            font.pointSize: 16;
            x: 20
            y: -15
            text: "Группировка"
            background: Rectangle {
                        color: "white"
                    }
        }
        ComboBox {
            id: cmb_grouping
            y: lbl_grouping.y + lbl_grouping.height
            width: parent.width * 0.99
            model: ["Не группировать", "Частота", "Источник", "Сеанс", "IMEI", "IMSI"]
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent
        }
    }

    Rectangle {
        id: processing_algorithm
        width: 0.9 * window.width
        x: grouping.x + 20
        y: grouping.y + grouping.height + 40
        height: 200
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 1
        Label {
            id: lbl_processing_algorithm
            font.family: "Helvetica";
            font.pointSize: 16;
            x: 20
            y: -15
            text: "Алгоритм обработки"
            background: Rectangle {
                        color: "white"
                    }
        }
        ComboBox {
            id: cmb_processing_algorithm
            model: ["Усреднить", "Выбрать лучшие"]
            y: lbl_processing_algorithm.y + lbl_processing_algorithm.height
            width: parent.width * 0.99
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent
        }
    }


}

