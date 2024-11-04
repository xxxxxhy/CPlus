/****************************************************************************
** Meta object code from reading C++ file 'ufomap_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../../../src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/include/ufomap_rviz_plugins/ufomap_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ufomap_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ufomap_ros__rviz_plugins__UFOMapDisplay_t {
    QByteArrayData data[13];
    char stringdata0[202];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ufomap_ros__rviz_plugins__UFOMapDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ufomap_ros__rviz_plugins__UFOMapDisplay_t qt_meta_stringdata_ufomap_ros__rviz_plugins__UFOMapDisplay = {
    {
QT_MOC_LITERAL(0, 0, 39), // "ufomap_ros::rviz_plugins::UFO..."
QT_MOC_LITERAL(1, 40, 15), // "updateQueueSize"
QT_MOC_LITERAL(2, 56, 0), // ""
QT_MOC_LITERAL(3, 57, 11), // "updateTopic"
QT_MOC_LITERAL(4, 69, 11), // "updateDepth"
QT_MOC_LITERAL(5, 81, 23), // "updateOccupiedFreeThres"
QT_MOC_LITERAL(6, 105, 16), // "updateRenderMode"
QT_MOC_LITERAL(7, 122, 17), // "updateRenderStyle"
QT_MOC_LITERAL(8, 140, 15), // "updateColorMode"
QT_MOC_LITERAL(9, 156, 11), // "updateAlpha"
QT_MOC_LITERAL(10, 168, 11), // "updateScale"
QT_MOC_LITERAL(11, 180, 9), // "updateBBX"
QT_MOC_LITERAL(12, 190, 11) // "updateReset"

    },
    "ufomap_ros::rviz_plugins::UFOMapDisplay\0"
    "updateQueueSize\0\0updateTopic\0updateDepth\0"
    "updateOccupiedFreeThres\0updateRenderMode\0"
    "updateRenderStyle\0updateColorMode\0"
    "updateAlpha\0updateScale\0updateBBX\0"
    "updateReset"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ufomap_ros__rviz_plugins__UFOMapDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   69,    2, 0x09 /* Protected */,
       3,    0,   70,    2, 0x09 /* Protected */,
       4,    0,   71,    2, 0x09 /* Protected */,
       5,    0,   72,    2, 0x09 /* Protected */,
       6,    0,   73,    2, 0x09 /* Protected */,
       7,    0,   74,    2, 0x09 /* Protected */,
       8,    0,   75,    2, 0x09 /* Protected */,
       9,    0,   76,    2, 0x09 /* Protected */,
      10,    0,   77,    2, 0x09 /* Protected */,
      11,    0,   78,    2, 0x09 /* Protected */,
      12,    0,   79,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void ufomap_ros::rviz_plugins::UFOMapDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<UFOMapDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateQueueSize(); break;
        case 1: _t->updateTopic(); break;
        case 2: _t->updateDepth(); break;
        case 3: _t->updateOccupiedFreeThres(); break;
        case 4: _t->updateRenderMode(); break;
        case 5: _t->updateRenderStyle(); break;
        case 6: _t->updateColorMode(); break;
        case 7: _t->updateAlpha(); break;
        case 8: _t->updateScale(); break;
        case 9: _t->updateBBX(); break;
        case 10: _t->updateReset(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject ufomap_ros::rviz_plugins::UFOMapDisplay::staticMetaObject = { {
    &rviz::Display::staticMetaObject,
    qt_meta_stringdata_ufomap_ros__rviz_plugins__UFOMapDisplay.data,
    qt_meta_data_ufomap_ros__rviz_plugins__UFOMapDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *ufomap_ros::rviz_plugins::UFOMapDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ufomap_ros::rviz_plugins::UFOMapDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ufomap_ros__rviz_plugins__UFOMapDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::Display::qt_metacast(_clname);
}

int ufomap_ros::rviz_plugins::UFOMapDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
