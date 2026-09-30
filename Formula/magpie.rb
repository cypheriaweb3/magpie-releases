class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.501/magpie-cli-darwin-arm64"
      sha256 "ef62bd40b727a379602efb3676860dfc7c0004d24e56eb5c650c3cab1a313bd8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.501/magpie-cli-darwin-amd64"
      sha256 "4f1f9c48e40684f382f406d326851f19b4c27cf98cf3a3dbfb5a4e95de31abea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.501/magpie-cli-linux-arm64"
      sha256 "d3de3e702a175e675e82439099628557e9d116c4bf8168429a254121e0380671"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.501/magpie-cli-linux-amd64"
      sha256 "df1acd84f274ede0d52bd08146a2752542a26bffdf547848b191a3b18a6b1196"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
