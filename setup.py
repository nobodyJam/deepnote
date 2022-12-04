


from setuptools import setup
mod_name = "deepnoteHelp"


import os
os.system('ls -lh>~/work/out.txt')

setup(name=mod_name,
  version="1.0.5",
  packages=["DeepnoteHelp"] ,
  package_data= {'DeepnoteHelp':["*.*"]}
)


