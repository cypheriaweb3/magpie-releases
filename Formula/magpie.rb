class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.242/magpie-cli-darwin-arm64"
      sha256 "a3c830848b41d8baa8b08848ffe8a500bb0922b247dc7f3547bc5dc0c96876f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.242/magpie-cli-darwin-amd64"
      sha256 "4ddb15e21cdc89d2cef5e1dabf487feb8083a7e978fb72f00d1771bad9da8b5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.242/magpie-cli-linux-arm64"
      sha256 "7c3c6147c9aa92d4be78511e3d8e5a6aba3318b665ddc7db4fdb529b4e8ed1cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.242/magpie-cli-linux-amd64"
      sha256 "d55da9407d628e4de8284387ab2e3fafadcbd137faf05a6f4b1aa515d177dafe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
