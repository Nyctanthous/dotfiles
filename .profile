# ========================================================================= #
# =                                     ,,                                = #
# =                                   `7MM                                = #
# =                                     MM                                = #
# =                            ,pP"Ybd  MMpMMMb.                          = #
# =                            8I   `"  MM    MM                          = #
# =                            `YMMMa.  MM    MM                          = #
# =                            L.   I8  MM    MM                          = #
# =                            M9mmmP'.JMML  JMML.                        = #
# =                                                                       = #
# =       A configuration file for shells that use the Bourne shell       = #
# =                          configuration standard.                      = #
# ========================================================================= #

# ========================================================================= #
# =                         Locale/ TZ settings                           = #
# ========================================================================= #
LC_CTYPE=en_US.UTF-8
TZ=America/New_York


# ========================================================================= #
# =                           PATH configuration                          = #
# ========================================================================= #
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

# PATH for things that I've personally installed. Put them first.
PATH=/home/ben/anaconda3/bin:$PATH

# ========================================================================= #
# =                  Default applications/appsettings                     = #
# ========================================================================= #
EDITOR=ne
VISUAL=$EDITOR
PAGER=most
BROWSER=google-chrome-stable
MANWIDTH=80

# ========================================================================= #
# =                             Final export                              = #
# ========================================================================= #
export LC_CTYPE TZ PATH XDG_DATA_HOME EDITOR VISUAL PAGER BROWSER MANWIDTH
