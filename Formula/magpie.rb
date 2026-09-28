class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.263/magpie-cli-darwin-arm64"
      sha256 "0818aee5e2c40a9d0ae9fa794af3e51c8f0afb539af862e35a15797372c4b0dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.263/magpie-cli-darwin-amd64"
      sha256 "7ad58d1d3dcf0fc650fecb2aa5dfec3b40896b99aefc1caacfb85ce1aef98ada"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.263/magpie-cli-linux-arm64"
      sha256 "3f2d5010343fce20d0565d4a305d011f65c4254028ba379bdc78338ee55a6e95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.263/magpie-cli-linux-amd64"
      sha256 "4e0b5c401a1383403fc3ccc4264ee582cd264c4ab022a396d5e76ecd0a432ce6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
