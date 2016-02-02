# README FOR rm_pc_build

This project is not targeted for public usage although you are free to use as you wish.

You may also find more information on http://contrasting.datafundamentals.com/ ... although no effort is made to keep that as current as this README

#### Before you try this project:

Please understand that this project is targeted for easy removal by running this command:

rm -rm ~/rm_p*

Because it is targeted for easy removal all commands are designed to run within ~ 

If you do otherwise, alter commands as necessary.

#### If you have run this before (even if it failed)

Be sure to halt and remove the previous vagrant instance. You might find this easiest via the VirtualBox UI. Or, if you have not removed the ~/rm_pc/precontrast_docker_vagrant folder you can run 'vagrant destroy' from inside that folder.

#### Recent Changes Noted

This project was modified to use gradle on the user's box and not maven, as before.

There was a previous user error found on the vagrant instance with two of three testers of this project set. Some code was removed which may have fixed this issue, but it has not yet been tested by either of the two users who found the error in the first place. This testing may take place on 2016.02.02 as one of the testers becomes available. More fixes may follow if it found to still be broken.

#### To try this project

Assuming that you have a clean slate (per above)

```
cd ~

git clone https://github.com/petecarapetyan/rm_pc_build.git

source ~/rm_pc_build/init.sh
```

Now you should be inside the running VM. From inside the vm

```
source work/init/start.sh
```

If it completes properly and you see a link to http://192.168.33.13:8121/ in the last few lines of bash output, then try pasting this same link into your browser and it should work.

#### Ahem

The current version of contrasting is run in tandem with a mysql instance as if it relies on this same instance. This is smoke and mirrors. It uses derby for it's real database. This should be fixed.
