
#include "TestResult.h"
#include "Failure.h"


TestResult::TestResult() : failureCount (0), testCount(0), secondsElapsed(0)
{
    ::time(&startTime);
}


void TestResult::testWasRun()
{
	testCount++;
}

void TestResult::startTests () 
{
}


void TestResult::addFailure (const Failure & /*failure*/) 
{
	failureCount++;
}

void TestResult::endTests () 
{
    time_t endTime;
    ::time(&endTime);
    secondsElapsed = endTime - startTime;
}
