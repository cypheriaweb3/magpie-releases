class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.294/magpie-cli-darwin-arm64"
      sha256 "190a333b12e5fc8b52f82cd269b9d3fe711c28fe9df3f8e1ef40443339b7881d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.294/magpie-cli-darwin-amd64"
      sha256 "eeb2f3c1d02bc86fbfd449a5316865b18711f70c5bf4aed649f342e2d78ff0eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.294/magpie-cli-linux-arm64"
      sha256 "be9d5f028d09d1ca6087305baf8ac2b1573813522c9bafc14a1a2f6477ea871b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.294/magpie-cli-linux-amd64"
      sha256 "14109f51dd9c199a5a5e5dc512dfac9b28de1c47aefd09b79c9aca3b4fc565d5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
