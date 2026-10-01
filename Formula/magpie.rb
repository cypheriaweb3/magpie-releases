class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.572/magpie-cli-darwin-arm64"
      sha256 "252a093784153df0a133391c99fb7d12575c87ab3f657eac419a550802a8c839"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.572/magpie-cli-darwin-amd64"
      sha256 "f1b19146f1fbe7d5c62d574a156b98f883aa0dcd83373e20bcc5db36329c4631"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.572/magpie-cli-linux-arm64"
      sha256 "d65dd395bf94382dd9277a6007050de1309a1e11a74ece219cfbeea8939be389"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.572/magpie-cli-linux-amd64"
      sha256 "28cfa50fba7a97fe96e26bb8f1c0737d15ec9d3a83341f24acaeb4df06cdf9c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
