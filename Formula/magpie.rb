class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.287/magpie-cli-darwin-arm64"
      sha256 "8d51de0024ba79e513a71d16a528fcb2077c141c0806c0a5f33ff0ebf8ae4bba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.287/magpie-cli-darwin-amd64"
      sha256 "ac1898a3e26a38b91b1106c079f040efab31e2a5068d752eeb207a2eb2dee127"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.287/magpie-cli-linux-arm64"
      sha256 "6576015e44d2f50efe61f7869faffc03966fa3e8a4ea603e3319d913b6b716d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.287/magpie-cli-linux-amd64"
      sha256 "e8449fe7bc280b1352b6195d4e2fa1a6793404db940e14ddfdb317abc6437231"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
