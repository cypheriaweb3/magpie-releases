class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.467/magpie-cli-darwin-arm64"
      sha256 "7e312c71bd7c709367916bb7a9f9b74f6d6784fa97bae02655231ca8ba33e975"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.467/magpie-cli-darwin-amd64"
      sha256 "5df5d0481b29353606472862da094c9b986c8c8d9ddda0ccf45cbba9c9070e37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.467/magpie-cli-linux-arm64"
      sha256 "8a23fac0188d3cebd4d2d735a62b1acdbe15650a9c4f6a77b0f592c2250cf4b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.467/magpie-cli-linux-amd64"
      sha256 "43412e688eed4b94f8f6a33bc2be9ff909d1d855386567f78b348c1d9e37b8e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
