class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.660/magpie-cli-darwin-arm64"
      sha256 "f693aa8c17c0a03aead58e75badf17967766b557e9c97488f986a35cee0f4e3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.660/magpie-cli-darwin-amd64"
      sha256 "0ad2bf094745b1805b5849c98f10204a1e5503c70e7200a3efbc081859fe2d39"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.660/magpie-cli-linux-arm64"
      sha256 "0ba913dea5933c16703256e711ba071f9f3d2154994293b22d7ab8f53adc735b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.660/magpie-cli-linux-amd64"
      sha256 "2f1a8add5bcac78b362f73cb4f4350ff66235dbd69c31b92fe59e3f3661fb83f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
