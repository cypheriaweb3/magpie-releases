class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.733/magpie-cli-darwin-arm64"
      sha256 "9e089aad34cc32264bdf2333256b4490d1b10f5fe0db67cfd36c2209129f415e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.733/magpie-cli-darwin-amd64"
      sha256 "d86368acb0c8fb5d31b2ea2dd84b1b272816a2ba3f1049d422cc3322df416a2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.733/magpie-cli-linux-arm64"
      sha256 "3790eda2696e25102f6e470cbd83fd6c8606f332dc0a9b54bc674f13ce4f2ac0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.733/magpie-cli-linux-amd64"
      sha256 "b0294fc93e7a6219afe375a4ffda305ae8fed1c8fdba1dceffb70f66cc919294"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
