

command_exists() {
    command -v "$@" > /dev/null 2>&1
}



if command_exists lsb_release; then
    dist_version="$(lsb_release --release | cut -f2)"
fi
