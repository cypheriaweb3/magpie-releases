class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.318/magpie-cli-darwin-arm64"
      sha256 "1cd01978da27ff83176a62b805f1f2cdccead294669e0abb9ccf708a2ed9881e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.318/magpie-cli-darwin-amd64"
      sha256 "e0bfbb65ec91cfa4036cc136ccf2d30b500ba71e65fbcaf00e8b1712093c5244"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.318/magpie-cli-linux-arm64"
      sha256 "65b47110adce328d8b2c8ea59d916bedcc4d4f6582770a60bfd81efa7d991ed4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.318/magpie-cli-linux-amd64"
      sha256 "3457c3505c41bb691037e5264359b7d5876e8b74825e3318d5d201f25d9aeb74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
