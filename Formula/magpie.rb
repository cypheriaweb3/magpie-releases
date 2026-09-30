class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.448/magpie-cli-darwin-arm64"
      sha256 "7c6a9fd7af3ed1b65fdebf0e23dc726202c54246e9612a46b7e69d8643603e01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.448/magpie-cli-darwin-amd64"
      sha256 "91ef2dca8ed7a09b9aeebf61c0d245a2acdb08c4cb2ac33e8560f67ac5c096c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.448/magpie-cli-linux-arm64"
      sha256 "1f78ba17fa4029f129c147c11ef29da82e523266afa1ce0b32b4df33f444dcdc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.448/magpie-cli-linux-amd64"
      sha256 "5fcb1139bb80d44471a4a4238e0371425eeda3bcb5c4aa166fb6fd7bd9d703b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
