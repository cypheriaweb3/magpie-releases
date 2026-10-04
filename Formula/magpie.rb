class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.851/magpie-cli-darwin-arm64"
      sha256 "58d1b6d349016e514fd88281c125bf21033c5c48068586523d60efe9e1455b1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.851/magpie-cli-darwin-amd64"
      sha256 "4c8ad8f57d9fe66f80d5f9c01d67c45fa5488315cca190a6df863f128c12062c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.851/magpie-cli-linux-arm64"
      sha256 "8c68389eb777e66762104282138833eaa6b780be3b41db3e620d2c33724594b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.851/magpie-cli-linux-amd64"
      sha256 "bb58d255193f54964770b64df202858e0bc4fd19ae5518e31e6a6d6953e54b14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
