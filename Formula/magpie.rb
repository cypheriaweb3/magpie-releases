class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.391/magpie-cli-darwin-arm64"
      sha256 "f5b90f02ec354becce026d45c2d9d2a136888e4459e92ce90b991bfa3cf7e6ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.391/magpie-cli-darwin-amd64"
      sha256 "2d971df4ebddf2c4ed38ce046dae44d56a68b01a38825690fbc4e3ccfb4abed9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.391/magpie-cli-linux-arm64"
      sha256 "c8d74e9784bf8688759ba9dcacef6d593c76c9874a128685f4217442dd4bbc3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.391/magpie-cli-linux-amd64"
      sha256 "f983ac115eceed8d513f2c6464ce3ea0656fcf09187e6367b98c888c2e06ad0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
