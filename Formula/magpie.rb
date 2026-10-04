class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.839/magpie-cli-darwin-arm64"
      sha256 "ae130cc3b2a6953022fcfb43c6ee217caa0274ab011d16f0419578fe58265780"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.839/magpie-cli-darwin-amd64"
      sha256 "08ef34aefdeef3ffce1c9150d66b02c27a572c98372cb9051193f7aa77c16c7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.839/magpie-cli-linux-arm64"
      sha256 "f963ada16269286f2c46d158f118e2dea5ad0b0260bb9cabb222cf1689fb25f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.839/magpie-cli-linux-amd64"
      sha256 "7399411a5f77714f80353d85407fa030039b59ff64539c778b737592ae5b6714"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
