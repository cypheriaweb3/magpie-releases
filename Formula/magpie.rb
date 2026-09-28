class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.303/magpie-cli-darwin-arm64"
      sha256 "f3d139b9ee4c811495dc4faa8f52bb6b0d9210111f530dff05f3e2705015f6b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.303/magpie-cli-darwin-amd64"
      sha256 "8a940f2a13319fc3d172fb36081e962acb227ff24acb3fb356da82e811c541d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.303/magpie-cli-linux-arm64"
      sha256 "99fdfc7ea608a28da6ef41fc9511c9d1a69e8e2e014ecbe0343b43932a85d9ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.303/magpie-cli-linux-amd64"
      sha256 "8d42f9e79125116214c018aa3100380f3be94248c17547a2ad688e5b7d007e14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
