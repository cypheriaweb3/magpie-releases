class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.464/magpie-cli-darwin-arm64"
      sha256 "d037429c02b0ab92212764f14884f1d736ea9f97b9b3c14d187d3f5d3c1f7ba3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.464/magpie-cli-darwin-amd64"
      sha256 "8ccc35a6cb8bc077a026ef6921fcafccad5edd1cf658a7baee85719353cdbe6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.464/magpie-cli-linux-arm64"
      sha256 "cfc2441600e35080c259a0548edac8fd2511e48b738fe1f40cdd08e980e9335f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.464/magpie-cli-linux-amd64"
      sha256 "7faae5840c3b30f06015f38fa52e9a9eb6ea12a03c6457b594484fbb2c2bc2c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
