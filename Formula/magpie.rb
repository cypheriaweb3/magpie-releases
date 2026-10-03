class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.697/magpie-cli-darwin-arm64"
      sha256 "c5fe72155bf76735bb773364eb95eb88dabb36aa00c02f54abeb70ea90115f5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.697/magpie-cli-darwin-amd64"
      sha256 "14c23b8f09816d0cf0c7271110a59d8127ac6fc8d4e2c4078d91ab023ceb2f66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.697/magpie-cli-linux-arm64"
      sha256 "456d307f552e1ee093680b165432419468f64c0d71966e0d29b95d9316d4e878"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.697/magpie-cli-linux-amd64"
      sha256 "c82ebc249e35f7d93fc271305f58999f581641b97a964b3cdfc2488bfc44faf1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
