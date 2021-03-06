import QtQuick 1.1
import com.nokia.meego 1.1

Item {
    property alias text: textItem.text
    property alias title: textTitle.text
    property alias fontPixelSize: textItem.font.pixelSize

    width: 230
    height: 100

    Rectangle {
        id: shadow
        anchors.centerIn: parent
        width: parent.width + 4
        height: parent.height + 4
        opacity: 0.3
        color: "yellow"
    }

    Rectangle {
        //opacity: 0.8
        width: parent.width
        height: parent.height * 0.6
        //anchors.bottomMargin: parent.border.width/2
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 1
        gradient: Gradient {
            GradientStop {
                position: 0.00
                color: "#5a4669"
            }
            GradientStop {
                position: 1.00
                color: "#ad89c6"
            }
        }
        Label {
            id: textItem
            anchors.centerIn: parent
            platformStyle: LabelStyle {
                textColor: "yellow"
                fontPixelSize: 40
            }
        }
    }

    Rectangle {
        id:titleRect
        anchors.top: parent.top
        anchors.left: parent.left
        border.width: 1
        height: parent.height * 0.4
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        gradient: Gradient {
            GradientStop {
                position: 0.00
                color: "#aaaaaa" //"#c4d2f1"
            }
            GradientStop {
                position: 0.50
                color: "#555555" //"#c4f1c9"
            }
            GradientStop {
                position: 1.00
                color: "#aaaaaa" //"#c4d2f1"
            }
        }
        Label {
            id: textTitle
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 5
            platformStyle: LabelStyle {
                textColor: "white"
                fontPixelSize: textItem.font.pixelSize * 0.7
            }
        }
    }
}
