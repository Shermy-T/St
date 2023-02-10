import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800
    height: 480
    title: qsTr("thời tiết")



    Image {
        id: image
        x: -21
        y: -44
        width: 821
        height: 569
        source: "../b/b.jpg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: timeText
        x: 216
        y: 133
        width: 172
        height: 53
        color: "#ffffff"
        text: Qt.formatTime(new Date(), "hh:mm:ss")
        font.family: "Times New Roman"
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        font.pointSize: 30
        elide: Text.ElideNone
    }
    Timer {
        id: timer1
        interval: 1000
        repeat: true
        running: true

        onTriggered:
        {
            timeText.text =  Qt.formatTime(new Date(),"hh:mm:ss")
        }
    }



    Text {
        id: temp
        objectName: "temp"
        x: 53
        y: 192
        width: 219
        height: 121
        color: "#ffffff"
        text: qsTr("10.0")
        font.capitalization: Font.AllLowercase
        font.letterSpacing: 0
        style: Text.Sunken
        font.weight: Font.Bold
        font.family: "Arial"
        font.italic: false
        font.bold: false
        renderType: Text.NativeRendering
        font.pixelSize: 100
    }


    Text {
        id: hum
        objectName: "hum"
        x: 548
        y: 69
        width: 98
        height: 56
        color: "#ffffff"
        text: qsTr("10.0")
        fontSizeMode: Text.Fit
        lineHeight: 0.5
        wrapMode: Text.WordWrap
        font.weight: Font.Bold
        renderType: Text.NativeRendering
        font.pixelSize: 40
    }

    Text {
        id: hum2
        x: 446
        y: 79
        width: 108
        height: 47
        color: "#ffffff"
        text: qsTr("Độ ẩm:")
        wrapMode: Text.WordWrap
        lineHeight: 1.2
        elide: Text.ElideNone
        font.pixelSize: 30
    }

    Text {
        id: temp1
        objectName: "temp1"
        x: 257
        y: 192
        width: 65
        height: 65
        color: "#ffffff"
        text: qsTr("°C")
        fontSizeMode: Text.VerticalFit
        elide: Text.ElideMiddle
        renderType: Text.NativeRendering
        font.bold: false
        font.weight: Font.Bold
        font.pixelSize: 50
        style: Text.Sunken
        font.italic: false
        font.family: "Arial"
    }

    Text {
        id: temp2
        x: 633
        y: 79
        width: 44
        height: 37
        color: "#ffffff"
        text: qsTr("%")
        renderType: Text.NativeRendering
        font.italic: false
        font.weight: Font.Bold
        style: Text.Sunken
        objectName: "temp1"
        font.bold: false
        font.pixelSize: 30
        font.family: "Arial"
    }







}
