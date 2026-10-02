class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.655/magpie-cli-darwin-arm64"
      sha256 "2bc93f075588c8f16b6ea35c6b03f95f013033a98a3523fe2b5a9be0103f6b9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.655/magpie-cli-darwin-amd64"
      sha256 "3468807c537e1b92eaa353d031470c2a8a89ea6092bdcbc15279e2a4ac4a3062"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.655/magpie-cli-linux-arm64"
      sha256 "3fa231d2a6b33fdcd19ff4487937864a459def52aac13ef5f5378ab192faabbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.655/magpie-cli-linux-amd64"
      sha256 "beecaae73a02327fc1224909dc3fb4cdafca572391081d781891008db3827812"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
