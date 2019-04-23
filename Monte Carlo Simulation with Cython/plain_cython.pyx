import random

def plain_cython(int n_trials, int n_dice, int n_sixes):
    cdef int total = 0
    cdef int count, roll
    cdef double p
    for trial in range(n_trials):
        count = 0
        for d in range(n_dice):
            roll = random.randint(1, 6)
            if roll == 6:
                count += 1
        if count >= n_sixes:
            total += 1
    p = float(total) / n_trials
    return p