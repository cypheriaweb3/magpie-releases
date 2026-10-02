class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.635/magpie-cli-darwin-arm64"
      sha256 "2cb57b565e3d1ab5ecbe2493ccfceda1bad120952fed52918dc4c7b04a948b32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.635/magpie-cli-darwin-amd64"
      sha256 "89918b16f0110b215895df9f3ed340aa9bf9a7e4f240e33577d0c375809adf67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.635/magpie-cli-linux-arm64"
      sha256 "48816cbc702ddb59db8c753e3cbd21973dcf5524f6af96b26f41189e8db8701d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.635/magpie-cli-linux-amd64"
      sha256 "4cb33a0ef12a508b0690fe890932e471e6df6729e3574c4d58c1f5db7f105653"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
