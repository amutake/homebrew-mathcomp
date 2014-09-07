require "formula"

class MathComp < Formula

  homepage "http://ssr.msr-inria.inria.fr/"
  url "http://ssr.msr-inria.inria.fr/FTP/mathcomp-1.5.tar.gz"
  md5 "f6f24df228569f0095d710063a633709"
  version "1.5"
  depends_on "ssreflect"

  def install
    system "make"
    system "make", "install"
  end
end
