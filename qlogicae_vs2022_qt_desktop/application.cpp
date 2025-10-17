#include "stdafx.h"

#include "application.hpp"

#ifndef x64_MASM_ASSEMBLY

extern "C" void qlogicae_qt_desktop__assembly();

#endif

namespace QLogicaeQtDesktop
{
    Application::Application(QWidget* parent)
        : QMainWindow(parent)
    {
        _ui->setupUi(this);
    }

    Application::~Application()
    {

    }
}
