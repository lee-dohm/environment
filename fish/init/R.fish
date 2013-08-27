
set --local r_profile ~/.Rprofile

if [ (which R > /dev/null) -a (not [ -f $r_profile ]) ]
    set --local r_home $SCRIPT_DIR/R

    echo >> $r_profile
    echo '.First <- function() {' >> $r_profile
    echo "    Sys.setenv('R_LIB_PATH'='$r_home')" >> $r_profile
    echo "    source('$r_home/profile.R')" >> $r_profile
    echo '}' >> $r_profile
    echo >> $r_profile
end
