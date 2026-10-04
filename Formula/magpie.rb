class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.819/magpie-cli-darwin-arm64"
      sha256 "ed97075a388055c210144c554f6abef6c5fcbe85bc5f051a7ec37bfd9b47396e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.819/magpie-cli-darwin-amd64"
      sha256 "6d219b0e8a576450110854706cf051985eb0128651cc4078713f9541b20def61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.819/magpie-cli-linux-arm64"
      sha256 "c0f1da255629eae09e4f9a372b3c64aaa5918736fabb4b8a0f18e449e035514f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.819/magpie-cli-linux-amd64"
      sha256 "78007e5ec45b8895ab869a0ad6649149b7e496a6355398250851c9165c76e6e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
