class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.698/magpie-cli-darwin-arm64"
      sha256 "39e9ba3971162ab94e8033a7c6be25992f41b6bc9a38c44ab5679fc25ce0ce91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.698/magpie-cli-darwin-amd64"
      sha256 "f65333e5cf434c9afa537374d9f10e14ead27d026a1cc0fb991f255879d652ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.698/magpie-cli-linux-arm64"
      sha256 "412c01ba3de7e85ec39e2cdb62dea318f3e61269b466816f03413073da720d7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.698/magpie-cli-linux-amd64"
      sha256 "66e362b649414959fdfbb439f99cd1eecacc94413deb9eb686c5090307ebef37"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
