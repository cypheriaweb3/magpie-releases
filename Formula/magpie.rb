class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.212/magpie-cli-darwin-arm64"
      sha256 "b82e6d7cc9f635ee6621e9d691b81e6e8cbf128579d5708ff1fbc965f75a2ee3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.212/magpie-cli-darwin-amd64"
      sha256 "6546eabfa7cfea3d725fa672377ef8ac29519bdd4f5690b6b6f9d82d4a719018"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.212/magpie-cli-linux-arm64"
      sha256 "99639555e1911c7ebe17dccf795e09aa586a5e5fe62255e148c9d13e4ebf4eac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.212/magpie-cli-linux-amd64"
      sha256 "9751292a4cc506aeb218dea25dfcd4098dd21d1e4101167477357a2c4c737e60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
