#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_application.h"

class Application : public QMainWindow
{
    Q_OBJECT

public:
    Application(QWidget *parent = nullptr);
    ~Application();

private:
    Ui::ApplicationClass ui;
};

