class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.579/magpie-cli-darwin-arm64"
      sha256 "4479e7191a2f6144732fd22eed79b891948c95c976cd40175b118e00c74a23ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.579/magpie-cli-darwin-amd64"
      sha256 "da84d99a3a6169a83efe66bdf806fbe56f26d78adcb7b1cb3eafedf3c0c6456b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.579/magpie-cli-linux-arm64"
      sha256 "807c4be72e1844e41dc9f53bc2fa3bd32b17dc46c1967ebcad5caa1c8dddf9f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.579/magpie-cli-linux-amd64"
      sha256 "c2589a8d0dc76593b679efab57febd86489d487d38ccb43fb9b1b8dbf404a2d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
