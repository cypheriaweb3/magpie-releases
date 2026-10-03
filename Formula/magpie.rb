class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.765/magpie-cli-darwin-arm64"
      sha256 "dea669a65c4efb39b4811214456513601391215814352e2d44680523fc8acb7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.765/magpie-cli-darwin-amd64"
      sha256 "58bb103fa633e0d8caaa26de099a5bf59cd8947efe63604e8e81341546913be5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.765/magpie-cli-linux-arm64"
      sha256 "19e166222e755244726daafa6bc7cc8135ec6f5ba38f55332c83865fe06af471"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.765/magpie-cli-linux-amd64"
      sha256 "b53f393c7761a55163ef0f1f9a6fba9bc8eb06b30e1dd0a8b56a3533cf020b70"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
