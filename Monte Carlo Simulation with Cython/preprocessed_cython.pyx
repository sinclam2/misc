import numpy as np
cimport numpy as np
import cython

@cython.boundscheck(False)
def preprocessed_cython(int n_trials, int n_dice, int n_sixes):
    cdef int total = 0
    cdef int count, roll
    cdef double p
    cdef np.ndarray[np.int_t, 
                    ndim=2, 
                    negative_indices=False, 
                    mode='c'] rolls = np.random.randint(1, 7, (n_trials, n_dice))

    for trial in range(n_trials):
        count = 0
        for d in range(n_dice):
            roll = rolls[trial, d]
            if roll == 6:
                count += 1
        if count >= n_sixes:
            total += 1
    p = float(total) / n_trials
    return p