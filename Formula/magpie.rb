class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.382/magpie-cli-darwin-arm64"
      sha256 "e994e81fe910ad80b80d2018adafda2c704effab22b9a570fd00b4f8b349c229"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.382/magpie-cli-darwin-amd64"
      sha256 "a4ff52a730e7c2cc9cbac2f27bc0835c1e8da1d6524eb77aa2913d28f04b38d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.382/magpie-cli-linux-arm64"
      sha256 "adf41bc8b821395b584f5244184279c9bb2219468cc077427dc9e3226ca55c12"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.382/magpie-cli-linux-amd64"
      sha256 "d432715ed87003958fe9ff9b3a6b84022b51da492c82c9800ba116d21c479f5a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
