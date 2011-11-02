#! /usr/bin/env python
import os;

screenrc = os.environ["HOME"]+"/.screenrc";
if not os.path.exists(screenrc):
	print "Symlinking screenrc...";
	os.symlink(os.getcwd()+"/screen/.screenrc", screenrc);
else:
	print screenrc + " already exists";

vimrc = os.environ["HOME"]+"/.vimrc";
if not os.path.exists(vimrc):
	print "Symlinking .vimrc...";
	os.symlink(os.getcwd()+"/vim/.vimrc", vimrc);
else:
	print vimrc + " already exists";

vim = os.environ["HOME"]+"/.vim";
if not os.path.exists(vim):
	print "Symlinking .vim...";
	os.symlink(os.getcwd()+"/vim/.vim", vim);
else:
	print vim + " already exists";
