AC_INIT([swift-spec], [0.1], [adam@thoughtbot.com])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_ARG_VAR([XCPRETTY],[The path to the xcpretty binary to use])
if ! "$XCPRETTY" -h &>/dev/null; then
  AC_PATH_PROG([XCPRETTY],[xcpretty])
  AS_IF([test "$XCPRETTY" == "no"],[AC_MSG_ERROR([xcpretty not found])])
fi
AC_CONFIG_FILES([Makefile src/Makefile])
AC_OUTPUT
