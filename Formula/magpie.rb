class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.367/magpie-cli-darwin-arm64"
      sha256 "bf6fd451e88457f61161fbd5e82d903ba2fb99fc9e690d65a76cd42a83e24ede"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.367/magpie-cli-darwin-amd64"
      sha256 "8a16ee29bf4f30d25693bbb254b334d6b2d828e88a258d9eef118b8dc7a685f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.367/magpie-cli-linux-arm64"
      sha256 "5555d0d52976ca2928952b5f5a039b8fa0f9e00df2360cb4e3304a4295517f0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.367/magpie-cli-linux-amd64"
      sha256 "890180db5d0bd784f1addbcc4cf97d97c21bcf6001753219fe5a5d32e44ee321"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
