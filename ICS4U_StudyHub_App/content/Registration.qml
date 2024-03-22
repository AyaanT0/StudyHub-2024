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

    TextField {
        id: textField
        x: 286
        y: 401
        width: 615
        height: 104
        text: "Enter Your Name"
        hoverEnabled: true
        placeholderTextColor: "#e22689ed"
        font.pointSize: 36
        font.family: "Courier"
        placeholderText: qsTr("Text Field")
    }

    TextField {
        id: textField1
        x: 1030
        y: 401
        width: 615
        height: 104
        text: "Enter Your Email"
        hoverEnabled: true
        placeholderTextColor: "#e22689ed"
        font.family: "Courier"
        font.pointSize: 35
        placeholderText: qsTr("Text Field")
    }

    TextField {
        id: textField2
        x: 286
        y: 573
        width: 615
        height: 104
        text: "Enter A Password"
        placeholderTextColor: "#e22689ed"
        font.family: "Courier"
        font.pointSize: 35
        placeholderText: qsTr("Text Field")
    }

    TextField {
        id: textField3
        x: 1030
        y: 573
        width: 615
        height: 104
        text: "Confirm Your Password"
        placeholderTextColor: "#e22689ed"
        font.pointSize: 35
        font.family: "Courier"
        placeholderText: qsTr("Text Field")
    }

    Button {
        id: button
        x: 839
        y: 771
        text: qsTr("Register")
        font.pointSize: 35
        font.family: "Courier"
    }

    Image {
        id: registerbutton
        x: 0
        y: 0
        width: 1920
        height: 1080
        opacity: 0.4
        source: "images/register button.jpg"
        fillMode: Image.Stretch
    }

    Image {
        id: studylogoclr
        x: 1463
        y: 47
        width: 260
        height: 260
        source: "images/studylogoclr.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 147
        y: 29
        text: qsTr("WELCOME!")
        font.pixelSize: 280
        font.family: "Courier"
    }

    Text {
        id: text3
        x: 600
        y: 910
        text: qsTr("REGISTER")
        font.pixelSize: 150
        font.family: "Courier"
    }






}
