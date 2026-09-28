class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.246/magpie-cli-darwin-arm64"
      sha256 "586547e63bcf1fc7a135ac82ddad6dd0ea92f7fbdb1b37cfaaa7013424390149"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.246/magpie-cli-darwin-amd64"
      sha256 "65384face80f89278c8826931d1be25ffaa567f0699d80cb3ce5c683e791eb6c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.246/magpie-cli-linux-arm64"
      sha256 "f1bd8076b14fe8644195838f53cadcc2842362c123b43f8673023de572daa32b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.246/magpie-cli-linux-amd64"
      sha256 "80fd9a0286636a72ea3c39a271509f96b2a63fdbcdf9a093e4b5ba4d7f15b6a2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
