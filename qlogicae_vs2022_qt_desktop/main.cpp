#include "stdafx.h"

#include "application.hpp"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QLogicaeQtDesktop::Application window;

    window.show();

    return app.exec();
}
