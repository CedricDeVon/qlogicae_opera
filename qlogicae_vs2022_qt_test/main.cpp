#include "pch.hpp"

#include "main.hpp"

namespace QLogicaeQtTest
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

QTEST_MAIN(QLogicaeQtTest::Main)
#include "main.moc"
