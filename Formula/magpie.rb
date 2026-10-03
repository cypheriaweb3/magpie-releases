class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.742/magpie-cli-darwin-arm64"
      sha256 "1a38a414924c1db8e279cc9aeb8e642e886ae75d57a84fe6e0b95433e681c6da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.742/magpie-cli-darwin-amd64"
      sha256 "9c9bf161e6d0f4ad8196365b4f6ecaefe626dcc480bcf89c6645ffcf67ef441e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.742/magpie-cli-linux-arm64"
      sha256 "957166ece4e69897af827d14f82dac32709d71c2f03bf8e04d1910f65b7a1dbf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.742/magpie-cli-linux-amd64"
      sha256 "79c045b5ef82c07e18c185255d10d94c22054ac1f51173a13ca34318f2f804c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
