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
        color: "#d9cfcf"

        Image {
            id: subjects
            x: 0
            y: 156
            width: 508
            height: 924
            opacity: 0.4
            source: "images/subjects.jpg"
            fillMode: Image.Stretch
        }

        Button {
            id: button
            x: 55
            y: 381
            width: 399
            height: 98
            text: qsTr("START A GROUP")
            font.pointSize: 25
            font.family: "Courier"
        }

        Button {
            id: button1
            x: 55
            y: 795
            width: 399
            height: 98
            text: qsTr("Recent Activity")
            font.family: "Courier"
            font.pointSize: 25
        }

        Button {
            id: button2
            x: 55
            y: 655
            width: 399
            height: 98
            text: qsTr("StudyHub AI+")
            font.family: "Courier"
            font.pointSize: 25
        }

        Button {
            id: button3
            x: 55
            y: 523
            width: 399
            height: 98
            text: qsTr("Join A Group")
            font.pointSize: 25
            font.family: "Courier"
        }

        Rectangle {
            id: rectangle3
            x: 0
            y: 243
            width: 508
            height: 92
            color: "#9c9c9c"
        }

        Text {
            id: text3
            x: 128
            y: 255
            text: qsTr("ACTIONS")
            font.pixelSize: 60
            font.family: "Courier"
        }

        Rectangle {
            id: rectangle4
            x: 545
            y: 194
            width: 1351
            height: 853
            color: "#eaeeff"
            radius: 25


            Rectangle {
                id: rectangle5
                x: 360
                y: 131
                width: 933
                height: 113
                color: "#d9d9d9"
                radius: 30
            }
            RadioButton {
                id: radioButton
                x: 472
                y: 165
                text: qsTr("Online")
                font.pointSize: 30
                font.family: "Courier"
            }

            RadioButton {
                id: radioButton1
                x: 914
                y: 162
                text: qsTr("In-Person")
                font.family: "Courier"
                font.pointSize: 30
            }

            Rectangle {
                id: rectangle8
                x: 360
                y: 556
                width: 933
                height: 113
                color: "#d9d9d9"
                radius: 30
            }

            Rectangle {
                id: rectangle9
                x: 360
                y: 341
                width: 933
                height: 113
                color: "#d9d9d9"
                radius: 30

                TextArea {
                    id: textArea
                    x: 58
                    y: 34
                    width: 746
                    height: 71
                    font.pointSize: 25
                    font.family: "Courier"
                    placeholderText: qsTr("Enter Location Here")
                }

                TextArea {
                    id: textArea1
                    x: 33
                    y: 252
                    width: 746
                    height: 71
                    placeholderText: qsTr("Select A Subject")
                    font.pointSize: 25
                    font.family: "Courier"
                }
            }

            Text {
                id: text4
                x: 32
                y: 151
                width: 242
                height: 74
                text: qsTr("METHOD")
                font.pixelSize: 65
                horizontalAlignment: Text.AlignHCenter
                font.family: "Courier"
            }

            Text {
                id: text5
                x: 32
                y: 360
                text: qsTr("LOCATION")
                font.pixelSize: 65
                font.family: "Courier"
            }

            Text {
                id: text6
                x: 32
                y: 575
                text: qsTr("SUBJECT")
                font.pixelSize: 65
                font.family: "Courier"
            }

            Image {
                id: dropdown
                x: 883
                y: 583
                width: 60
                height: 71
                source: "images/dropdown.png"
                fillMode: Image.PreserveAspectFit
            }

            Button {
                id: button4
                x: 544
                y: 759
                width: 263
                height: 86
                text: qsTr("CREATE")
                font.family: "Courier"
                font.pointSize: 35
            }

        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 510
        height: 156
        color: "#7294ee"
    }

    Rectangle {
        id: rectangle2
        x: 508
        y: 0
        width: 1412
        height: 156
        color: "#90a8e9"

        Text {
            id: text2
            x: 203
            y: 17
            text: qsTr("Start A Group")
            font.pixelSize: 115
            font.family: "Courier"
        }

        Button {
            id: button5
            x: 1252
            y: 108
            text: qsTr("BACK")
            font.family: "Courier"
            font.pointSize: 15
        }
    }

    Image {
        id: studylogoclr
        x: 19
        y: 2
        width: 186
        height: 154
        source: "images/studylogoclr.png"
        fillMode: Image.PreserveAspectFit

        Text {
            id: text1
            x: 188
            y: 46
            text: qsTr("StudyHub")
            font.pixelSize: 55
            font.family: "Courier"
        }
    }
}
