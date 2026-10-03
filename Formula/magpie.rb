class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.730/magpie-cli-darwin-arm64"
      sha256 "b251f9925b8a68e5554b5f0a86ef0db07bedd703af4016db1a7d12febff72add"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.730/magpie-cli-darwin-amd64"
      sha256 "febb3c48ce4da9041eb1d8c8a951d0c01d09b2df256b92969ca3dcc6704f3160"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.730/magpie-cli-linux-arm64"
      sha256 "8d2784afc3b72cb4888f348a7d6b49d42d159e4e27820c91a329e6fb7901b2d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.730/magpie-cli-linux-amd64"
      sha256 "cfbaad5faaa5b0891a7f18c54821dee4cc62ef0777f6a6e69148c74a3b3715c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
