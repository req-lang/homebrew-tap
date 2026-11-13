class Reqlsp < Formula
  desc "Language server for the req language"
  homepage "https://qitab.io"
  version "0.1.0"

  on_macos do
    on_arm do
      url "http://file.qitab.io/reqlsp/0.1.0/reqlsp-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab9bb5593a562cc51443d990f3446ff4bc6ac2e23579849b226b72423f9f1afe"
    end
    on_intel do
      url "http://file.qitab.io/reqlsp/0.1.0/reqlsp-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "59beead7e19b3ceac1232bf2768a083a4275e5cee66fac4a421af833618450d1"
    end
  end

  def install
    bin.install "reqlsp"
  end

  test do
    assert_predicate bin/"reqlsp", :exist?
  end
end
