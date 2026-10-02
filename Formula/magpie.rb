class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.659/magpie-cli-darwin-arm64"
      sha256 "54df04b478d21447f5c8b530c65b00632506d33323f96540862dfbf7dc6811f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.659/magpie-cli-darwin-amd64"
      sha256 "7753fefb9b3236578171a4594ac2ee3892af7c62f4a8840be6acc1c56cbb62e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.659/magpie-cli-linux-arm64"
      sha256 "7c77c9f0998432aad7b631d6612cbdea22e2db84b18fcc3fd6e872983a6ea00a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.659/magpie-cli-linux-amd64"
      sha256 "2d8fd5666bc5c8b1303d36517df38ebac47ae472fe8573ddca1d042fd4235c1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
