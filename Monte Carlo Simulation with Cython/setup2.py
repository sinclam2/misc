from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
import numpy

setup(name='Monte Carlo Simulation Preprocessed',
      ext_modules = [Extension('_preprocessed_cython', ['preprocessed_cython.pyx'],include_dirs=[numpy.get_include()])],
      cmdclass={'build_ext':build_ext},)