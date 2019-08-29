To clone a Debian installation, use the apt-clone utility. It's available (as a separate package, not part of the default installation) in Debian since wheezy and in Ubuntu since 12.04. On the existing machine, run

apt-clone clone foo

This creates a file foo.apt-clone.tar.gz. Copy it to the destination machine, and run

apt-get install apt-clone
apt-clone restore foo.apt-clone.tar.gz

If you're working with an old system where apt-clone isn't available, or if you just want to replicate the list of installed packages but not any configuration file, here are the manual steps.

    On the source machine:

    cat /etc/apt/sources.list /etc/apt/sources.list.d >sources.list
    dpkg --get-selections >selections.list
    apt-mark showauto >auto.list

    On the target machine:

    cp sources.list /etc/apt/
    apt-get update
    /usr/lib/dpkg/methods/apt/update /var/lib/dpkg/
    dpkg --set-selections <selections.list
    apt-get dselect-upgrade
    xargs apt-mark auto <auto.list


