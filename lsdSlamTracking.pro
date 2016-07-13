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

QMAKE_CFLAGS_DEBUG    += -g -funwind-tables -fno-omit-frame-pointer -std=c++11
QMAKE_CXXFLAGS_DEBUG  += -g -funwind-tables -fno-omit-frame-pointer -std=c++11
QMAKE_LFLAGS_DEBUG    += -g -funwind-tables -fno-omit-frame-pointer -std=c++11

#QMAKE_CFLAGS   += -std=c++11 -fopenmp
#QMAKE_CXXFLAGS += -std=c++11 -fopenmp
#QMAKE_LFLAGS   += -std=c++11 -fopenmp

SOURCES += \
            Relocalizer.cpp        \
            SE3Tracker.cpp         \
            Sim3Tracker.cpp        \
            TrackingReference.cpp

HEADERS +=  \
            LGSX.h                 \
            Relocalizer.h          \
            SE3Tracker.h           \
            Sim3Tracker.h          \
            TrackingReference.h

unix {
    INCLUDEPATH +=  ../lsdSlamIO/
    INCLUDEPATH +=  ../lsdSlamFrame/
    INCLUDEPATH +=  ../lsdSlamUtil/
    INCLUDEPATH +=  ../lsdSlamGlobalMapping/

    # Boost
    LIBS    +=  -lboost_thread  -lboost_system

    #target.path = /usr/lib
    target.path = $$PWD/../build/lsdSlamApp
    INSTALLS += target
}
