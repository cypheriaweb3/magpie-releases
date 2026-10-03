class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.740/magpie-cli-darwin-arm64"
      sha256 "26768b7e4e6376ee1035f549389cf7f0de2940cfe91921d916da89e13b2123bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.740/magpie-cli-darwin-amd64"
      sha256 "3b269777d15768c67f3e43c6484b9bc8b77df87a61e00986f253458b3383ba1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.740/magpie-cli-linux-arm64"
      sha256 "d2b8a1024997ac19d47962c5c7215e79434080ec0cc952579e7b98b75da903c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.740/magpie-cli-linux-amd64"
      sha256 "1944eff4b6ea77a1465b92afa16b094dbb455f775f65e6e406655ebf23002ec8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
