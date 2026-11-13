class Reqtool < Formula
  desc "Tooling for the req language"
  homepage "https://qitab.io"
  version "1.0.0"

  on_macos do
    on_arm do
      url "http://file.qitab.io/reqtool/1.0.0/reqtool-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "c82ec2de4162d01b59681fe01c35461761693dccb5ce14117b699583b8a59b4d"
    end
    on_intel do
      url "http://file.qitab.io/reqtool/1.0.0/reqtool-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0fc70f86ee9440c0fbaa9f0f49f35cfc34e7407624596135c6b78e51aced454d"
    end
  end

  def install
    bin.install "reqtool"
  end

  test do
    assert_predicate bin/"reqtool", :exist?
  end
end
