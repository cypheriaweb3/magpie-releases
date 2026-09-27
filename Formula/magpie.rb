class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.181/magpie-cli-darwin-arm64"
      sha256 "ffc12c84f1acb05f884a542312485488472a7ac1af82c6046b5babc5287ad233"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.181/magpie-cli-darwin-amd64"
      sha256 "9765fe838a986db0b95ccf2e4de95d8be4b6eb7523d3fbd6040acfa53420e4e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.181/magpie-cli-linux-arm64"
      sha256 "b2fb5769ab5c12e9ca3dcac813d0c25487ffef55b0e47703c52144a9237b6597"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.181/magpie-cli-linux-amd64"
      sha256 "53f30b36c7600e8dedc96174e5d56bcd0608b7ae95ccc43be18e778f718c7a44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
