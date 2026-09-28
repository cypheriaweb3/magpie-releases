class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.301/magpie-cli-darwin-arm64"
      sha256 "0ae1165fbde39559a33e516c733a4148e15186e28071bff61bbb829802a1d8a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.301/magpie-cli-darwin-amd64"
      sha256 "7ce1d15d4fe1ef2553c6bbd6092f3645c11f7b349a816c89fc07b2b6ef5c4edb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.301/magpie-cli-linux-arm64"
      sha256 "3f90ff57735b701b744fe33416be6e5aa76a7563e282273b3fc9066cc37df8c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.301/magpie-cli-linux-amd64"
      sha256 "c5f5519900bce1d08c97b25587e0c6a8292ee2595a8c5d232b3592c813d4830b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
