gcc -shared -fPIC align_malloc.c -o align_malloc.so

cd libmempool
make
make install

cd ../libraries/libmlx4-1.2.1mlnx1/
./autogen.sh
./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make
make install

cd ../libibverbs-1.2.1mlnx1/
./autogen.sh
./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make
make install

cd ../librdmacm-1.1.0mlnx/
./autogen.sh
./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make
make install
