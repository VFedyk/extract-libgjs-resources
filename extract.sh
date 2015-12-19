#! /bin/sh

gs=/usr/lib/libgjs.so

mkdir -p js/overrides js/tweener

for r in `gresource list $gs`; do
  gresource extract $gs $r > ${r/#\/org\/gnome\/gjs\/modules/.\/js}
done
