from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(name='Monte Carlo Simulation Final',
      ext_modules = [Extension('_rand_cython', ['rand_cython.pyx'],)],
      cmdclass={'build_ext':build_ext},)