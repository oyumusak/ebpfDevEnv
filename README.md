# ebpfDevEnv

![Daha Derine Git](goindeeper.png)

GEREKSİNİMLER
- qemu
- make
- curl

Komutlar
- make all -> sanal makinayı çalıştırır
- make connect -> ssh bağlantısını sağlar
- make mount -> geliştirme sürecinde yorum satırında
- make down -> qemu processlerini kapatır
- make download -> gerekli dosyaları indirir

Warning ve bugları fixlemek için adımları takip edin

<p>
apt purge bpfcc-tools libbpfcc python3-bpfcc<br>
wget https://github.com/iovisor/bcc/releases/download/v0.25.0/bcc-src-with-submodule.tar.gz<br>
tar xf bcc-src-with-submodule.tar.gz<br>
cd bcc/<br>
apt install -y python-is-python3<br>
apt install -y bison build-essential cmake flex git libedit-dev   libllvm11 llvm-11-dev libclang-11-dev<br> zlib1g-dev libelf-dev libfl-dev python3-distutils<br>
apt install -y checkinstall<br>
mkdir build<br>
cd build/<br>
cmake -DCMAKE_INSTALL_PREFIX=/usr -DPYTHON_CMD=python3 ..<br>
make<br>
checkinstall<br>
</p>