
SMSHOME=%SMSHOME%
P4_LOCAL=%P4_LOCAL%
P4_HOST=%P4_HOST%
LIBRARY=%LIBRARY%
RELEASE=%RELEASE%
DESTINATION=%DESTINATION%
ADDRESS=%ADDRESS%

set -a
PACKAGE=${LIBRARY}-${RELEASE}
PACKAGE_TAR_GZ=${LIBRARY}-${RELEASE}.tar.gz
LIB_DIR=${P4_LOCAL}/grib_api/releases/${RELEASE}
INSTALL_DIR=${DESTINATION}/${LIBRARY}/${RELEASE}
set +a
