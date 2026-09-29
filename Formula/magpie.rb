class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.363/magpie-cli-darwin-arm64"
      sha256 "61dce6535232771284c47a2848596b74774c0c27a63fd6eaa83000d0b85d2208"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.363/magpie-cli-darwin-amd64"
      sha256 "c2b6fcea1bbc7a06b4aae5c7a6b25f4acd527cceeaccab65079252c020d72560"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.363/magpie-cli-linux-arm64"
      sha256 "7c50d7f85a71f69635e51f4e09e45b842d3c8d432adc9c1bd985c63221d09548"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.363/magpie-cli-linux-amd64"
      sha256 "ee99e08d35ebdebd7e44b71a2f616a2b365074e1a926184d21aa71c70b3fe6e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
