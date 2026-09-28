class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.333/magpie-cli-darwin-arm64"
      sha256 "c47a3777f642c34e704074fe63e72b1d3aeb096380f3472de4ccfa4e1e44d072"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.333/magpie-cli-darwin-amd64"
      sha256 "5a7ca9c7d99bdd3c637475dfae0a1a376db4a369b08eb6c3ec9956e83bc1d8c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.333/magpie-cli-linux-arm64"
      sha256 "831e11bd6d22f4eb373ab6c11ea05fae821f1de488d62d397681832235770ab9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.333/magpie-cli-linux-amd64"
      sha256 "27741f12ed3779470683e6b35601a6b5dec6b98ab6688f31583b625ba5c11638"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
