. ./colors.sh

CMD=/usr/local/ada-4.2/bin/gnatmake

cd ../languages/ada
section "Ada Hi"
step "Compile Ada"
$CMD hi.ada
step "Execute Ada"
./hi
rm -rf hi
rm -rf hi.ali

