#pragma once

#include "ui_application.h"

namespace QLogicaeQtDesktop
{
    class Application : public QMainWindow
    {
        Q_OBJECT

    public:
        explicit Application(
            QWidget *parent = nullptr
        );

        ~Application();

    private:
        Ui::ApplicationClass* _ui;
    };
}
