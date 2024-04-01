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
                x: 679
                y: 487
                width: 664
                height: 105
                color: "#d9d9d9"
                radius: 30
            }


            Rectangle {
                id: rectangle8
                x: 679
                y: 222
                width: 664
                height: 117
                color: "#d9d9d9"
                radius: 30
            }


            TextArea {
                id: textArea1
                x: 691
                y: 521
                width: 579
                height: 56
                placeholderText: qsTr("Select A Subject")
                font.pointSize: 25
                font.family: "Courier"
            }

            Text {
                id: text4
                x: 706
                y: 149
                width: 242
                height: 74
                text: qsTr("METHOD")
                font.pixelSize: 65
                horizontalAlignment: Text.AlignHCenter
                font.family: "Courier"
            }

            Text {
                id: text6
                x: 706
                y: 407
                text: qsTr("SUBJECT")
                font.pixelSize: 65
                font.family: "Courier"
            }

            Image {
                id: dropdown
                x: 1230
                y: 514
                width: 60
                height: 71
                source: "images/dropdown.png"
                fillMode: Image.PreserveAspectFit
            }

            Button {
                id: button4
                x: 880
                y: 690
                width: 263
                height: 86
                text: qsTr("JOIN")
                font.family: "Courier"
                font.pointSize: 35
            }

            RadioButton {
                id: radioButton
                x: 1100
                y: 251
                text: qsTr("Online")
                font.pointSize: 30
                font.family: "Courier"
            }

            RadioButton {
                id: radioButton1
                x: 706
                y: 251
                text: qsTr("In-Person")
                font.family: "Courier"
                font.pointSize: 30
            }

            Rectangle {
                id: rectangle6
                x: 36
                y: 32
                width: 637
                height: 794
                color: "#e1d8ff"
                radius: 25
                border.width: 2

                Rectangle {
                    id: rectangle7
                    x: 18
                    y: 25
                    width: 602
                    height: 97
                    color: "#d9d9d9"
                    radius: 25
                    border.width: 2

                    Text {
                        id: text5
                        x: 217
                        y: 17
                        text: qsTr("LIST")
                        font.pixelSize: 55
                        font.family: "Courier"
                    }
                }

                Text {
                    id: text7
                    x: 26
                    y: 567
                    text: qsTr("ECONOMICS STUDY GROUP")
                    font.pixelSize: 35
                    font.family: "Courier"
                }

                CheckBox {
                    id: checkBox
                    x: 486
                    y: 186
                    text: qsTr("LEAVE?")
                    font.pointSize: 20
                    font.family: "Courier"
                }

                Text {
                    id: text11
                    x: 26
                    y: 438
                    text: qsTr("PHYSICS STUDY GROUP")
                    font.pixelSize: 35
                    font.family: "Courier"
                }

                Text {
                    id: text12
                    x: 26
                    y: 188
                    text: qsTr("CS STUDY GROUP")
                    font.pixelSize: 35
                    font.family: "Courier"
                }

                Text {
                    id: text13
                    x: 26
                    y: 306
                    text: qsTr("CALCULUS STUDY GROUP")
                    font.pixelSize: 35
                    font.family: "Courier"
                }

                CheckBox {
                    id: checkBox1
                    x: 486
                    y: 306
                    text: qsTr("LEAVE?")
                    font.pointSize: 20
                    font.family: "Courier"
                }

                CheckBox {
                    id: checkBox2
                    x: 486
                    y: 437
                    text: qsTr("LEAVE?")
                    font.pointSize: 20
                    font.family: "Courier"
                }

                CheckBox {
                    id: checkBox3
                    x: 486
                    y: 567
                    text: qsTr("LEAVE?")
                    font.pointSize: 20
                    font.family: "Courier"
                }

                Text {
                    id: text8
                    x: 26
                    y: 683
                    text: qsTr("CHEMISTRY STUDY GROUP")
                    font.pixelSize: 35
                    font.family: "Courier"
                }

                CheckBox {
                    id: checkBox4
                    x: 486
                    y: 683
                    text: qsTr("LEAVE?")
                    font.pointSize: 20
                    font.family: "Courier"
                }
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
            text: qsTr("Join A Group")
            font.pixelSize: 115
            font.family: "Courier"
        }

        Button {
            id: button5
            x: 1239
            y: 101
            text: qsTr("BACK")
            font.pointSize: 15
            font.family: "Courier"
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
