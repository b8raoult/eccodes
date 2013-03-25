#!/usr/bin/ksh

cat > accessor_class_list.gperf <<EOF
%{
#include "grib_api_internal.h"
#include "grib_accessor_class.h"

%}
struct accessor_class_hash { char *name; grib_accessor_class **cclass;};
%%
EOF

cat grib_accessor_factory_hash_list | sed 's/\/\*/#/g' >> accessor_class_list.gperf

p4 edit grib_accessor_classes_hash.c

gperf -W classes -t -G -H grib_accessor_classes_get_id -N grib_accessor_classes_hash -m 1 -j 1 accessor_class_list.gperf | sed s/__inline//g | sed s/inline//g > grib_accessor_classes_hash.c

