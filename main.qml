import QtQuick 2.12

Image {
    id: image
    width: 1000; height: 1000
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/151000/151205/Ilsacyclone_vir_2023103_lrg.jpg"
    fillMode: Image.PreserveAspectFit
    Rectangle {
        color: "red"
        x:0
        y:950
        height: 50
        width: 1000 * image.progress
        visible: image.progress != 1
    }

    onStatusChanged: console.log(sourceSize)
}
