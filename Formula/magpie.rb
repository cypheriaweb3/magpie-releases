class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.421/magpie-cli-darwin-arm64"
      sha256 "97ac8d03ae80b94ec1a0f299fe6a4ee3cbdf6430f0e62631c4c91c52cd5ad307"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.421/magpie-cli-darwin-amd64"
      sha256 "20beff81f93f0b5a031dc8b8aed5d90082d9bc7812519f7ae3712bffe62cf4c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.421/magpie-cli-linux-arm64"
      sha256 "d7f4ccfbab98c2669dcde920406a9fd3d29bcd569954f090067267f6222929fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.421/magpie-cli-linux-amd64"
      sha256 "83e2d9f36813aedef6190db334cca5593971d3a720643a5980a1118a92e5128c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
