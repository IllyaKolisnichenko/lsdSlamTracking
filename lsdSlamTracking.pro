#-------------------------------------------------
#
# Project created by QtCreator 2015-10-29T06:58:45
#
#-------------------------------------------------

QT          -= core gui

CONFIG      += c++11
CONFIG      += sse2

TARGET      = lsdSlamTracking
TEMPLATE    = lib

DEFINES     += LSDSLAMTRACKING_LIBRARY

#QMAKE_CFLAGS_DEBUG    += -pg
#QMAKE_CXXFLAGS_DEBUG  += -pg
#QMAKE_LFLAGS_DEBUG    += -pg

SOURCES += \
            Tracking/Relocalizer.cpp        \
            Tracking/SE3Tracker.cpp         \
            Tracking/Sim3Tracker.cpp        \
            Tracking/TrackingReference.cpp

HEADERS +=  \
            Tracking/LGSX.h                 \
            Tracking/Relocalizer.h          \
            Tracking/SE3Tracker.h           \
            Tracking/Sim3Tracker.h          \
            Tracking/TrackingReference.h

unix {
#    INCLUDEPATH += /home/sergey/MyProject/MySlamProject/Qt/
#    INCLUDEPATH += /home/sergey/libs/Sophus

    INCLUDEPATH +=  ../lsdSlamIO/
#    LIBS        +=  -L$$PWD/../build/lsdSlamIO     \
#                    -llsdSlamIO

    INCLUDEPATH +=  ../lsdSlamFrame/
#    LIBS        +=  -L$$PWD/../build/lsdSlamFrame  \
#                    -llsdSlamFrame

    INCLUDEPATH +=  ../lsdSlamUtil/
#    LIBS        +=  -L$$PWD/../build/lsdSlamUtil    \
#                    -llsdSlamUtil

    INCLUDEPATH +=  ../lsdSlamGlobalMapping/
#    LIBS        +=  -L$$PWD/../build/lsdSlamGlobalMapping  \
#                    -llsdSlamGlobalMapping

    # Boost
    LIBS    +=  -lboost_thread  -lboost_system

    #target.path = /usr/lib
    target.path = $$PWD/../build/lsdSlamApp
    INSTALLS += target
}
