class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.815/magpie-cli-darwin-arm64"
      sha256 "120897262dfbe93e3330597fa42b5cba0f637531fb4379726e5a60e6ce6bf1d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.815/magpie-cli-darwin-amd64"
      sha256 "e4771d5e2fb8c5c7ba675c5bcb45f7f6c312afdfbf1bd4d5ecdf3bfb03fcf106"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.815/magpie-cli-linux-arm64"
      sha256 "424097c693b261f54ccab50bc7b09f2e1cf89f03cac69dbb4557ec0bfcd1b771"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.815/magpie-cli-linux-amd64"
      sha256 "5b7d51a1e3d8279fe7875339f517aab51d4d45168bf5ca07a64b0f0df8c58f9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
