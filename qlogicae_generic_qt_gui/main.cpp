#include "stdafx.h"
#include "application.h"
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    Application window;
    window.show();
    return app.exec();
}
