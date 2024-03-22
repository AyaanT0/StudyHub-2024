

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import ICS4U_StudyHub_App

Rectangle {
    width: Constants.width
    height: Constants.height
    color: "#d5cfcf"
    property alias roundButtonIconsource: registerbutton.icon.source

    Text {
        id: text1
        x: 511
        y: 90
        width: 1538
        height: 272
        visible: true
        text: qsTr("WELCOME TO")
        font.pixelSize: 280
        horizontalAlignment: Text.AlignHCenter
        z: 1
        font.styleName: "Bold"
        font.family: "Courier"
    }

    Image {
        id: registerbuttonimage
        x: 133
        y: 424
        width: 788
        height: 628
        opacity: 1
        source: "images/register button.jpg"
        z: 2
        fillMode: Image.Stretch
    }

    Image {
        id: loginbuttonimage
        x: 1657
        y: 431
        width: 788
        height: 628
        opacity: 1
        source: "images/login button.jpeg"
        clip: false
        baselineOffset: 0
        autoTransform: false
        z: 1
        fillMode: Image.Stretch

    }

    RoundButton {
        id: registerbutton
        x: 1648
        y: 424
        width: 807
        height: 643
        opacity: 0.8
        radius: 35
        text: "LOGIN"
        icon.cache: true
        highlighted: false
        flat: false
        font.pointSize: 100
        checked: false
        checkable: false
        display: AbstractButton.TextUnderIcon
        icon.height: 435
        icon.width: 786
        z: 3
    }

    RoundButton {
        id: roundButton1
        x: 125
        y: 417
        width: 796
        height: 635
        opacity: 0.8
        radius: 35
        text: "REGISTER"
        checkable: false
        font.pointSize: 100
        z: 2
    }

    Image {
        id: subjects
        x: 0
        y: -8
        width: 2560
        height: 1440
        opacity: 0.3
        source: "images/subjects.jpg"
        fillMode: Image.Stretch
    }

    Image {
        id: studylogoclr
        x: 927
        y: 410
        width: 709
        height: 690
        source: "images/studylogoclr.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text2
        x: 500
        y: 1084
        width: 1538
        height: 272
        visible: true
        text: qsTr("STUDYHUB")
        font.pixelSize: 280
        horizontalAlignment: Text.AlignHCenter
        z: 1
        font.styleName: "Bold"
        font.family: "Courier"
    }






}
