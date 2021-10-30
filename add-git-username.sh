username=''
email=''

print_usage() {
  printf "Usage: ..."
}

while getopts 'abf:v' flag; do
  case "${flag}" in
    a) username='true' ;;
    b) email='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done
# find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && pwd && git config user.email 'molivas@stackct.com' && git config user.name 'molivas' && git config --get user.name && git config --get user.email" \;