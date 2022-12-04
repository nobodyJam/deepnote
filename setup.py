


from setuptools import setup
mod_name = "deepnoteHelp"


import os
os.system("ls -lh")

setup(name=mod_name,
  version="1.0.2",
  packages=["DeepnoteHelp"] ,
  package_data= {'DeepnoteHelp':["*.*"]}
)


