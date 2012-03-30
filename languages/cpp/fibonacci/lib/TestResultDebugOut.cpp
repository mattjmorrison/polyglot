#include "TestResultDebugOut.h"
#include "Failure.h"
#include <iostream>
#include <sstream>
#include <windows.h>



void TestResultDebugOut::startTests ()
{
    OutputDebugString("\n\nRunning unit tests...\n\n");
}


void TestResultDebugOut::addFailure (const Failure & failure) 
{
    TestResult::addFailure(failure);

    std::ostringstream oss;
    oss << failure;
    OutputDebugString(oss.str().c_str());
}

void TestResultDebugOut::endTests () 
{
    TestResult::endTests();

    std::ostringstream oss;
    oss << testCount << " tests run" << std::endl;
    if (failureCount > 0)
        oss << "****** There were " << failureCount << " failures.";
    else
        oss << "There were no test failures.";
    oss << "(time: " << secondsElapsed << " s)" << std::endl;

    OutputDebugString(oss.str().c_str());
    OutputDebugString("\n");
}
