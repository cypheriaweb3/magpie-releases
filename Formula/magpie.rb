class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.700/magpie-cli-darwin-arm64"
      sha256 "f218a41d4de2259c1a5ef6939b7fadc530a5a7c41c1f7fd4195b6b76304b0cf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.700/magpie-cli-darwin-amd64"
      sha256 "86d27f1f5e8a231c7fe3fc6be89d5d888aa519a48f4f8fc1a1d6bad868a77426"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.700/magpie-cli-linux-arm64"
      sha256 "96ad9d5a357a9120f099a320e2742e3a783f9dc9d3759129ee65efe119916826"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.700/magpie-cli-linux-amd64"
      sha256 "48244856e01a8a99f4c46bfd2cd69f5963240efde1547099a26510339f7f1032"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
