#! /usr/bin/env python
import os;
import shutil;

def install_vim_plugin(plugindir, branch=False):
	externals_dir = os.getcwd()+"/externals";
	pluginpath = externals_dir+"/"+plugindir;
	targetpath = os.environ["HOME"]+"/.vim/"

	print "Updating plugin from git";
	if not branch:
		branch = 'master';
	curdir = os.getcwd();
	os.chdir(pluginpath);
	os.system('git pull origin '+branch);

	print "Installing vim plugin at " + pluginpath;
	for item in os.listdir(pluginpath):
		ignorelist = ['.git']
		if item not in ignorelist:
			path = pluginpath+"/"+item;
			if os.path.isdir(path):
				cmd = 'cp -R ' + path + ' ' + targetpath;
				os.system(cmd);

	os.chdir(curdir);

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

# Update and install vim plugins in externals
install_vim_plugin('vim-session');
install_vim_plugin('vim-fugitive');

# For bash take the existing .bashrc rename it and relink it as .bashrc.local then link in this bashrc
bashrc = os.environ["HOME"]+"/.bashrc";
bashrclocal = os.environ["HOME"]+"/.bashrc.local";
if not os.path.exists(bashrclocal):
	print "Moving " + bashrc + "...";
	os.rename(bashrc, bashrclocal);
create_link('.bashrc', 'bash');

# Adding in git-completion.bash
create_link('git-completion.bash', 'bash')
