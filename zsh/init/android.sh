if [[ $OS = "Darwin" ]]; then
    android_path="$HOME/android-sdk-macosx"
fi

if [[ (-n $android_path) && (-d $android_path) ]]; then
    __append-path-entry $android_path/platform-tools
    __append-path-entry $android_path/tools
fi

unset android_path
