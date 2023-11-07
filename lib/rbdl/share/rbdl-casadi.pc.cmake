prefix=@CMAKE_INSTALL_PREFIX@
libdir=@CMAKE_INSTALL_FULL_LIBDIR@
includedir=@CMAKE_INSTALL_FULL_INCLUDEDIR@/rbdl-casadi

Name: RBDL-Casadi
Description: Rigid Body Dynamics Library
URL: https://github.com/rbdl/rbdl
Version: @RBDL_VERSION@
Requires: casadi
Conflicts:
Libs: -L${libdir} -lrbdl-casadi -Wl,-rpath ${libdir}
Libs.private:
Cflags: -I${includedir}
