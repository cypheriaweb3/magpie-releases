class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.415/magpie-cli-darwin-arm64"
      sha256 "6fac892410476b48fd2bfc719c20005847adff056d7277db077ad1bc09506c67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.415/magpie-cli-darwin-amd64"
      sha256 "769f971d817d97e6a3b73070b146a0296ffa888f3c0748974151883226d837a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.415/magpie-cli-linux-arm64"
      sha256 "de388179d542062f1491084f3a01449058de9cdae8bda9b9efa8ba1bcd0f0b87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.415/magpie-cli-linux-amd64"
      sha256 "67d71d3426f216390414915d333a2dd5ce3e9150883078cc8a35ddfd6c15b19e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
