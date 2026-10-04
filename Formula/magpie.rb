class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.825/magpie-cli-darwin-arm64"
      sha256 "600aad4d7b97171db9f9082ab0aaa50e71dd1978bade31e2504811fd2c165cf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.825/magpie-cli-darwin-amd64"
      sha256 "e57b836cdb722e985e7d5fdca73afe7eb5d6cc7dac82c08d4c64d34f8f913b83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.825/magpie-cli-linux-arm64"
      sha256 "4eb7f2feb6e8c98256229d0e226c898bcab722f8d69edc094a6a9437b23b458e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.825/magpie-cli-linux-amd64"
      sha256 "85c70284d93375a7b19c0542c029013960f2a464c887d84df8b6b03676de6a4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
