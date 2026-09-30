class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.492/magpie-cli-darwin-arm64"
      sha256 "250be587dfe9087c828c3af35d66dd67c46944a5fda2974da6a85cc99a44e5ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.492/magpie-cli-darwin-amd64"
      sha256 "296d945e16feb59afa935990ade4e260a48c911530f96f3aa0b97c89246ca98e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.492/magpie-cli-linux-arm64"
      sha256 "8cc403c38a688ba81d12056b8b9c848522004484ad70ca1a8529279120df1de9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.492/magpie-cli-linux-amd64"
      sha256 "81ab2a660be23529a11765b0dfe7f95b90ccf6c12648e2a4cf93579db9b3bea9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
