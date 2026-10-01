class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.597/magpie-cli-darwin-arm64"
      sha256 "32dc247607b4c44495795ca4ef0f3d0d34a08874380a3eae083ca65a27d9d216"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.597/magpie-cli-darwin-amd64"
      sha256 "720b0d9fcae35c93dbbe9c67a9de6886fc0fe0b4962b259eb6075040d87fc2aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.597/magpie-cli-linux-arm64"
      sha256 "4d87ceb8732f0f692e0da09ccddd8861f59d67f6326fe6d0d9b44ebd3c0c5aeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.597/magpie-cli-linux-amd64"
      sha256 "04d0a9eda9e308f87639ad72af08900f30e553150e3136ce6eecd205f36e71c3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
