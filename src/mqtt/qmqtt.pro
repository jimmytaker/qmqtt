TEMPLATE = lib
TARGET = qmqtt

CONFIG(debug, debug|release) {
     TARGET = $$join(TARGET,,,d)
}

QT = core network
QMQTT_WEBSOCKETS: QT += websockets

DEFINES += QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII

HEADERS += \
    $$PWD/qmqtt_global.h \
    $$PWD/qmqtt.h

include(qmqtt.pri)

HEADERS += $$PUBLIC_HEADERS $$PRIVATE_HEADERS

#load(qt_module)
