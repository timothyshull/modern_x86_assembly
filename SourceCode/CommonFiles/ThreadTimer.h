#ifndef THREAD_TIMER_H
#define THREAD_TIMER_H

#include <cstdint>

class ThreadTimer {
public:
    LARGE_INTEGER StartTime;
    LARGE_INTEGER StopTime;

    ThreadTimer(bool start = false);

    double GetElapsedTime(void);

    void Start(void);

    void Stop(void);

    static bool GetProcessAffinityMask(uint64_t *process_mask, uint64_t *system_mask);

    static bool SetProcessAffinityMask(uint64_t process_mask);

    static bool SetThreadAffinityMask(void);

    static bool SetThreadAffinityMask(uint64_t thread_mask);

    static void SaveElapsedTimeMatrix(const char *fn, double *et, int nrows, int ncols);
};

inline ThreadTimer::ThreadTimer(bool start)
{
    StartTime.QuadPart = 0;
    StopTime.QuadPart = 0;

    if (start) {
        Start();
    }
}

inline void ThreadTimer::Start(void)
{
    QueryPerformanceCounter(&StartTime);
}

inline void ThreadTimer::Stop(void)
{
    QueryPerformanceCounter(&StopTime);
}

#endif //THREAD_TIMER_H
