class Reqlsp < Formula
  desc "Language server for the req language"
  homepage "https://qitab.io"
  version "0.1.0"

  on_macos do
    on_arm do
      url "http://file.qitab.io/reqlsp/0.1.0/reqlsp-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "984b32093df5077f962c8a699c13f79b0bcc2782a665c1326bf7a311fa64ef57"
    end
    on_intel do
      url "http://file.qitab.io/reqlsp/0.1.0/reqlsp-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7f3c2881c0613d6eef579e19849e034bee6277e4c9d27853e956a1b92e75e1ff"
    end
  end

  def install
    bin.install "reqlsp"
  end

  test do
    assert_predicate bin/"reqlsp", :exist?
  end
end
