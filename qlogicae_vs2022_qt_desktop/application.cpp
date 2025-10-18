#include "pch.hpp"

#include "application.hpp"

namespace QLogicaeQtDesktop
{
    Application::Application(QWidget* parent)
        : QMainWindow(parent)
    {
        _ui.setupUi(this);
    }

    Application::~Application()
    {

    }
}
