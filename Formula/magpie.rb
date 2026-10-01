class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.605/magpie-cli-darwin-arm64"
      sha256 "1c106c0345bc9096a5cf95945d2fbb80f376d0f7758339bbb80c7b35cca77388"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.605/magpie-cli-darwin-amd64"
      sha256 "fb68c30269248fe1a6834900f5812abeedda6172f2da6f6205c528c9e40731b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.605/magpie-cli-linux-arm64"
      sha256 "82500e63288429c1946a1bd22bbadeab0f5eb34ece83582afde2849e7d0889f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.605/magpie-cli-linux-amd64"
      sha256 "b04a9b480cf6c3c0f62310f0ddde55f84d1304d443c323ffec01f3732315fe76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
