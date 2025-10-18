#include "pch.hpp"

#include "main.hpp"

namespace QLogicaeQtDesktop
{

}

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QLogicaeQtDesktop::Application window;
    window.show();
    
    return app.exec();
}
