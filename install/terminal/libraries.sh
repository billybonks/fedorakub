sudo dnf install -y \
  pkg-config autoconf  clang rustc \
  readline-devel zlib-devel libyaml-devel  ncurses  libffi-devel libgdbm-devel jemalloc \
  vips ImageMagick ImageMagick-devel ImageMagick-c++ mupdf \
  libpq libpq-devel sqlite sqlite-devel mysql mysql-devel
  
sudo dnf group install development-tools
