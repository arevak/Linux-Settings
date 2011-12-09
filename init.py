#! /usr/bin/env python
import os;

def create_link(targetname, srcdir):
	lntarget = os.environ["HOME"]+"/"+targetname;
	if not os.path.exists(lntarget):
		print "Symlinking " + targetname + "...";
		os.symlink(os.getcwd()+"/"+srcdir+"/"+targetname, lntarget);
	else:
		print lntarget + " already exists";

create_link('.screenrc', 'screen');
create_link('.vimrc', 'vim');
create_link('.vim', 'vim');
create_link('.ackrc', 'ack');
