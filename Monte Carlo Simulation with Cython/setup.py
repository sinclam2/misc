from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(name='Monte Carlo Simulation',
      ext_modules = [Extension('_plain_cython', ['plain_cython.pyx'],)],
      cmdclass={'build_ext':build_ext},)