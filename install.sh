#! /usr/bin/env bash

# deletemachines images         machines       provision      state
pushd $(dirname $0) > /dev/null
THISDIR=$(pwd)
popd > /dev/null

ln -s $THISDIR/deletemachines /usr/local/bin/deletemachines
ln -s $THISDIR/machines /usr/local/bin/machines
ln -s $THISDIR/images /usr/local/bin/images
ln -s $THISDIR/packages /usr/local/bin/packages
ln -s $THISDIR/provision /usr/local/bin/provision
ln -s $THISDIR/state /usr/local/bin/state

