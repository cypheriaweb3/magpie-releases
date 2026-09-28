class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.239/magpie-cli-darwin-arm64"
      sha256 "250937041f847317f70a8b3a43e3379d581377f1cbd07b15c7d87042a371de85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.239/magpie-cli-darwin-amd64"
      sha256 "952c0584d211b7903c7308d2b30df3b07f98d7f13e2fed6f2f66807776ded47d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.239/magpie-cli-linux-arm64"
      sha256 "dc232896f19f22ee4b5ca645ec2aa1cc64ae20fbc5055ecdd4f7475394501afa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.239/magpie-cli-linux-amd64"
      sha256 "7bd4451058c97a6b3a79591117e0ac279eb7c51273cbc54c191e481991724592"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
