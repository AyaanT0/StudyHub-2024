import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1920
    height: 1080

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#d5cfcf"

        Button {
            id: button
            x: 912
            y: 201
            width: 459
            height: 252
            text: qsTr("Start A Study Group")
            font.pointSize: 25
            font.family: "Courier"
        }

        Button {
            id: button1
            x: 912
            y: 484
            width: 459
            height: 261
            text: qsTr("Join A Study Group")
            font.pointSize: 25
            font.family: "Courier"
        }

        Button {
            id: button2
            x: 912
            y: 778
            width: 459
            height: 261
            text: qsTr("StudyHub AI+")
            font.family: "Courier"
            font.pointSize: 25
        }

        Button {
            id: button3250
            x: 1407
            y: 201
            width: 481
            height: 844
            text: qsTr("Recent Activity")
            icon.height: 350
            icon.width: 250
            display: AbstractButton.TextUnderIcon
            icon.source: "images/recentactivity.png"
            font.family: "Courier"
            font.pointSize: 35
        }

        Button {
            id: button4
            x: 47
            y: 201
            width: 818
            height: 838
            icon.cache: true
            icon.height: 4500
            icon.width: 4000
            font.pointSize: 45
            font.family: "Courier"
            display: AbstractButton.IconOnly
            icon.color: "#0026282a"
            icon.source: "images/mappin.png"
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 586
        height: 166
        color: "#7294ee"

        Image {
            id: studylogoclr
            x: -11
            y: 10
            width: 208
            height: 146
            source: "images/studylogoclr.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text1
            x: 203
            y: 47
            text: qsTr("STUDY HUB")
            font.pixelSize: 60
            font.styleName: "Bold"
            font.family: "Expletus Sans"
        }
    }

    Rectangle {
        id: rectangle2
        x: 587
        y: 0
        width: 1333
        height: 166
        color: "#90a8e9"

        Text {
            id: text2
            x: 227
            y: 5
            text: qsTr("Welcome, [name]")
            font.pixelSize: 115
        }

        Button {
            id: button3
            x: 1203
            y: 112
            text: qsTr("LOGOUT")
            font.pointSize: 15
            font.family: "Courier"
        }
    }
}
