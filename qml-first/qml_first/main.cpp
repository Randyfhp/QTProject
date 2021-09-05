#include "mainwindow.h"

#include <QApplication>

#include <QtQml/QQmlApplicationEngine>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QApplication a(argc, argv);
     QQmlApplicationEngine engine;
     QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                      &a, [url](QObject *obj, const QUrl &objUrl) {
         if (!obj && url == objUrl) {
             QApplication::exit();
         }
     }, Qt::QueuedConnection);
     engine.load(url);
//    MainWindow w;
//    w.show();
    return a.exec();
}
