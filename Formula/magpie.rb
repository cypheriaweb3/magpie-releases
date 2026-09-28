class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.288/magpie-cli-darwin-arm64"
      sha256 "fdf7df500316bdda222d15b2cac166af19355e4dffbb1a6b7045010d7764807b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.288/magpie-cli-darwin-amd64"
      sha256 "4f0907be234d0af26a46237f1dd2c3d8619165b01c87cae307e376bd3774cc2f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.288/magpie-cli-linux-arm64"
      sha256 "283b65b68b84aa70b00a8a9f8aca81ffbaf1d17e91a2c62f949ab5c6c54593a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.288/magpie-cli-linux-amd64"
      sha256 "ef0f7e15c1130b3319d1074fe9f82f5e04d3a7960a41ac49e8719b886cb8e23a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
