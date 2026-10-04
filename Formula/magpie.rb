class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.854/magpie-cli-darwin-arm64"
      sha256 "01c40f20bbbb62d14b7ae2747fe0f6480cab08af36302a73b2c6538cbe451579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.854/magpie-cli-darwin-amd64"
      sha256 "6ef38035d2004fb2069664d227667bff6ff15d94f67f18c522f70e715bdddc3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.854/magpie-cli-linux-arm64"
      sha256 "e487d762db760e06a99670e3a5d3a0a80652c53ca32676ae34a89dd8de497002"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.854/magpie-cli-linux-amd64"
      sha256 "74a922b3564b3cc1e56ddaff0511792f4fcd909c4d51dbd3298210964a8bbe48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
