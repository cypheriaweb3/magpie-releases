class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.494/magpie-cli-darwin-arm64"
      sha256 "b09133670148d3738ab10b1c9e9f616bc46ca8dc2abd8f3fa774e27b6968cff9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.494/magpie-cli-darwin-amd64"
      sha256 "b826b0a115bf994876f5668d46efdb0a5710286a12fc37d4c44207d70eb8a88e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.494/magpie-cli-linux-arm64"
      sha256 "ddcb381bfdca704122b8280d0e70eef8783bef905c5163565d2a84d964814bba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.494/magpie-cli-linux-amd64"
      sha256 "aa9fc6e96c167b5d73d5b4680adddea58a4e519ea780fc3344ad20772ce18055"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
