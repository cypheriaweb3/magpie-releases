class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.468/magpie-cli-darwin-arm64"
      sha256 "188f4314e1c732b5429065b5d5a4cbc412c0c7d5e2b86ba36f039e0df8b19829"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.468/magpie-cli-darwin-amd64"
      sha256 "662c44ccf6199a23472091880e05d0e86e59cc1f837ae966df8f21f0c2febae6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.468/magpie-cli-linux-arm64"
      sha256 "07a01d6948d8881f231d8cd6df15a23c0b1884dc69adba31b69dbed2577d4ef6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.468/magpie-cli-linux-amd64"
      sha256 "c95eacfbd10e2d64e82fd66a4cddde5aaf5f69102e7d280a81dd32dbb2bd79d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
