
begin
    set --local r_profile ~/.Rprofile

    if [ (which R > /dev/null) -a not -f $r_profile ]
        echo >> $r_profile
        echo '.First <- function() {' >> $r_profile
        echo '  Sys.setenv("R_LIB_PATH"="~/Source/environment/R")' >> $r_profile
        echo '  source("~/Source/environment/R/profile.R")' >> $r_profile
        echo '}' >> $r_profile
        echo >> $r_profile
    end
end
