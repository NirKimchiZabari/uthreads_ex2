
#include <vector>
#include <deque>
#include <bits/sigaction.h>
#include <evrpc.h>
#include <string>
#include <bits/signum.h>
#include "uthreads.h"
#include <signal.h>

#define ERR_FORMAT "thread library error: %s\n"

#define BLOCKED 1
#define READY 2
#define RUNNING 3

typedef struct
{
    int uid;
    int handler;
    int state;
    std::vector blocking_threads;
    int quantums;


} U_thread;

std::deque ready_t;
std::deque blocked_t;
U_thread *running;

int quantum_unit;
int total_quantum = 0;

struct sigaction timer_sa;
struct itimerval timer;

// ====================================


void print_error(std::string val)
{
    fprintf(stderr, ERR_FORMAT, val);
}

/* External interface */

void scheduler(int sig)
{

}

void start_virtual_timer()
{
    // ======= timer ================
    // Install timer_handler as the signal handler for SIGVTALRM.
    timer_sa.sa_handler = &scheduler;
    if (sigaction(SIGVTALRM, &timer_sa,NULL) < 0) {
        print_error("sigaction error.");
    }
    timer.it_value.tv_sec = 0;    // first time interval, seconds part
    timer.it_value.tv_usec = quantum_unit;    // first time interval, microseconds part
    timer.it_interval.tv_sec = 3;  // following time intervals, seconds part
    timer.it_interval.tv_usec = quantum_unit;  // following time intervals, microseconds part

    // Start a virtual timer. It counts down whenever this process is executing.
    if (setitimer (ITIMER_VIRTUAL, &timer, NULL)) {
        printf("setitimer error.");
    }
}

/*
 * Description: This function initializes the thread library.
 * You may assume that this function is called before any other thread library
 * function, and that it is called exactly once. The input to the function is
 * the length of a quantum in micro-seconds. It is an error to call this
 * function with non-positive quantum_usecs.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_init(int quantum_usecs)
{
    if(quantum_usecs < 1)
    {
        print_error("quantum_usecs must be positive.");
        return -1;
    }
    quantum_unit = quantum_usecs;
    start_virtual_timer();
    return 0;
}

/*
 * Description: This function creates a new thread, whose entry point is the
 * function f with the signature void f(void). The thread is added to the end
 * of the READY threads list. The uthread_spawn function should fail if it
 * would cause the number of concurrent threads to exceed the limit
 * (MAX_THREAD_NUM). Each thread should be allocated with a stack of size
 * STACK_SIZE bytes.
 * Return value: On success, return the ID of the created thread.
 * On failure, return -1.
*/
int uthread_spawn(void (*f)(void));


/*
 * Description: This function terminates the thread with ID tid and deletes
 * it from all relevant control structures. All the resources allocated by
 * the library for this thread should be released. If no thread with ID tid
 * exists it is considered an error. Terminating the main thread
 * (tid == 0) will result in the termination of the entire process using
 * exit(0) [after releasing the assigned library memory].
 * Return value: The function returns 0 if the thread was successfully
 * terminated and -1 otherwise. If a thread terminates itself or the main
 * thread is terminated, the function does not return.
*/
int uthread_terminate(int tid);


/*
 * Description: This function blocks the thread with ID tid. The thread may
 * be resumed later using uthread_resume. If no thread with ID tid exists it
 * is considered as an error. In addition, it is an error to try blocking the
 * main thread (tid == 0). If a thread blocks itself, a scheduling decision
 * should be made. Blocking a thread in BLOCKED state has no
 * effect and is not considered an error.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_block(int tid);


/*
 * Description: This function resumes a blocked thread with ID tid and moves
 * it to the READY state if it's not synced. Resuming a thread in a RUNNING or READY state
 * has no effect and is not considered as an error. If no thread with
 * ID tid exists it is considered an error.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_resume(int tid);


/*
 * Description: This function blocks the RUNNING thread until thread with
 * ID tid will terminate. It is considered an error if no thread with ID tid
 * exists, if thread tid calls this function or if the main thread (tid==0) calls this function.
 * Immediately after the RUNNING thread transitions to the BLOCKED state a scheduling decision
 * should be made.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_sync(int tid);


/*
 * Description: This function returns the thread ID of the calling thread.
 * Return value: The ID of the calling thread.
*/
int uthread_get_tid();


/*
 * Description: This function returns the total number of quantums since
 * the library was initialized, including the current quantum.
 * Right after the call to uthread_init, the value should be 1.
 * Each time a new quantum starts, regardless of the reason, this number
 * should be increased by 1.
 * Return value: The total number of quantums.
*/
int uthread_get_total_quantums(){
    return total_quantum;
}


/*
 * Description: This function returns the number of quantums the thread with
 * ID tid was in RUNNING state. On the first time a thread runs, the function
 * should return 1. Every additional quantum that the thread starts should
 * increase this value by 1 (so if the thread with ID tid is in RUNNING state
 * when this function is called, include also the current quantum). If no
 * thread with ID tid exists it is considered an error.
 * Return value: On success, return the number of quantums of the thread with ID tid.
 *                On failure, return -1.
*/
int uthread_get_quantums(int tid);