require 'formula'

class ProtobufAT241 < Formula
  url 'https://github.com/protocolbuffers/protobuf/releases/download/v2.4.1/protobuf-2.4.1.tar.bz2'

  def install
    ENV.universal_binary if ARGV.build_universal?
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-zlib"
    system "make"
    system "make install"
  end
end
