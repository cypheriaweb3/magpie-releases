class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.235/magpie-cli-darwin-arm64"
      sha256 "a7920ec363cd02011c3c50547139eda8f807fc1e45e63178bc2df4500c6183a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.235/magpie-cli-darwin-amd64"
      sha256 "2437a903e1eaf1bda70871bd0753b43205c52e2f54bb70c1ed7bab1c830c4cd4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.235/magpie-cli-linux-arm64"
      sha256 "373072fb6effa0016ee74fe246ae2c14108611fdc8fa73eb264a792eeec92c04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.235/magpie-cli-linux-amd64"
      sha256 "bfcc3aaba2ff1b73c921c7f637a77c659377465185fe8a67377eeedefb2a7f2c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
