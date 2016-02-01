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
    INCLUDEPATH += /home/sergey/MyProject/MySlamProject/Qt/
    INCLUDEPATH += /home/sergey/libs/Sophus

    INCLUDEPATH +=  /home/sergey/MyProject/MySlamProject/Qt/lsdSlamIO/
    LIBS        +=  -L/home/sergey/MyProject/MySlamProject/Qt/FullProject/build/lsdSlamIO     \
                    -llsdSlamIO

    INCLUDEPATH += /home/sergey/MyProject/MySlamProject/Qt/lsdSlamFrame/
    LIBS        +=  -L/home/sergey/MyProject/MySlamProject/Qt/FullProject/build/lsdSlamFrame  \
                    -llsdSlamFrame

    INCLUDEPATH +=  /home/sergey/MyProject/MySlamProject/Qt/lsdSlamUtil/
    LIBS        +=  -L/home/sergey/MyProject/MySlamProject/Qt/FullProject/build/lsdSlamUtil    \
                    -llsdSlamUtil

    INCLUDEPATH += /home/sergey/MyProject/MySlamProject/Qt/lsdSlamGlobalMapping/
    LIBS        +=  -L/home/sergey/MyProject/MySlamProject/Qt/FullProject/build/lsdSlamGlobalMapping  \
                    -llsdSlamGlobalMapping

    # Boost
    LIBS    +=  -L/home/sergey/libs/boost_1_59_0/stage/lib      \
                -lboost_thread                                  \
                -lboost_system

    #target.path = /usr/lib
    target.path = /home/sergey/MyProject/MySlamProject/lsdSlamSharedLibs
    INSTALLS += target
}
