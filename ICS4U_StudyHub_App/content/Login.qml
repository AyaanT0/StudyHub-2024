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
    }

    Text {
        id: text1
        x: 202
        y: 29
        text: qsTr("WELCOME")
        font.pixelSize: 280
        font.family: "Courier"
    }

    Image {
        id: studylogoclr
        x: 1374
        y: 8
        width: 338
        height: 310
        source: "images/studylogoclr.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: loginbutton
        x: 0
        y: 0
        width: 1920
        height: 1080
        opacity: 0.4
        source: "images/login button.jpeg"
        fillMode: Image.Stretch
    }

    Button {
        id: button
        x: 811
        y: 665
        width: 299
        height: 88
        text: qsTr("Login")
        font.pointSize: 36
        font.family: "Courier"
    }

    TextField {
        id: textInput
        x: 441
        y: 479
        width: 262
        height: 46
        text: qsTr("Enter Email")
        font.pixelSize: 36
        horizontalAlignment: Text.AlignHCenter
        font.family: "Courier"
    }

    Text {
        id: text2
        x: 735
        y: 895
        text: qsTr("LOGIN")
        font.pixelSize: 150
        font.family: "Courier"
    }

    TextField {
        id: textInput1
        x: 1135
        y: 479
        width: 319
        height: 46
        text: qsTr("Enter Password")
        font.pixelSize: 36
        horizontalAlignment: Text.AlignHCenter
        font.family: "Courier"
    }




}
