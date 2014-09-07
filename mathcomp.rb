require "formula"

class Mathcomp < Formula

  homepage "http://ssr.msr-inria.inria.fr/"
  url "http://ssr.msr-inria.inria.fr/FTP/mathcomp-1.5.tar.gz"
  sha1 "4601d61092fc3ebd7279c7c3efb53de5ec2c9912"
  version "1.5"
  depends_on "ssreflect"

  def install
    args = ["COQBIN=#{HOMEBREW_PREFIX}/bin/",
            "COQLIBINSTALL=lib/coq/user-contrib",
            "COQDOCINSTALL=share/doc",
            "DSTROOT=#{prefix}/"]
    system "make", *args
    system "make", "install", *args
  end
end
