#include "pch.hpp"

#include "main.hpp"

namespace QLogicaeVS2022QtTest
{
    class Main :
        public QObject
    {
        Q_OBJECT

    protected slots:
        void initTestCase_data()
        {
            qDebug("Creates a global test data table.");
        }

        void initTestCase()
        {
            qDebug("Called before the first test function is executed.");
        }

        void init()
        {
            QLogicaeCore::CLI_IO.print_with_new_line("QLogicaeVS2022QtTest - Confirmed!");

            qDebug("Called before each test function is executed.");
        }

        void myTest()
        {
            QVERIFY(true); 
            QCOMPARE(1, 1);
        }

        void cleanup()
        {
            qDebug("Called after every test function.");
        }

        void cleanupTestCase()
        {
            qDebug("Called after the last test function was executed.");
        }
    };
}

QTEST_MAIN(QLogicaeVS2022QtTest::Main)
#include "main.moc"
