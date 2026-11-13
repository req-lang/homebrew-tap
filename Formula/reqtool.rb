class Reqtool < Formula
  desc "Tooling for the req language"
  homepage "https://qitab.io"
  version "1.0.0"

  on_macos do
    on_arm do
      url "http://file.qitab.io/reqtool/1.0.0/reqtool-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb60a6572202bbbc1540e29a5468192f1b9dde710fb66b8c548569b4731495c9"
    end
    on_intel do
      url "http://file.qitab.io/reqtool/1.0.0/reqtool-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "3dafbb906f4cc16774cbcb84848c40bc2049570c614b4c1a846443d7c66f173f"
    end
  end

  def install
    bin.install "reqtool"
  end

  test do
    assert_predicate bin/"reqtool", :exist?
  end
end
