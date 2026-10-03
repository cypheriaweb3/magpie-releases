class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.793/magpie-cli-darwin-arm64"
      sha256 "bb71382ccfc1287c0774269f87d8a3b6a2b3c88fbf2a62e4ffb15f52aa42409f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.793/magpie-cli-darwin-amd64"
      sha256 "ff8e9f689eb5924344892105abf06df2b0054ed963cdaf67bf869b71e2d5c42e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.793/magpie-cli-linux-arm64"
      sha256 "aca6258206ca2b33f0185b3bf1e263ec23b21d54b99b4f44adc7f01e8adf8500"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.793/magpie-cli-linux-amd64"
      sha256 "39975d0c2143d8fe0b70a2c6ff26d1f082df59b6a45ce0bdbb807db70bb7c301"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
