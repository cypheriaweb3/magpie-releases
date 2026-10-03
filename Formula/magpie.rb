class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.707/magpie-cli-darwin-arm64"
      sha256 "af012c5b68e5048f8e0ad6dd1e0506017f08fd6eba849f8950b4440eee0dd23b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.707/magpie-cli-darwin-amd64"
      sha256 "e87096b4e545953b0d3353d409a47d889bd38581fc11e1048a53d0c8146fc84c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.707/magpie-cli-linux-arm64"
      sha256 "4f60feddafe98a8ffe14da5a5f619d35c1950c0f4c09f7c05e32846b8acdf6f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.707/magpie-cli-linux-amd64"
      sha256 "1de9aedf11a452379a870d2fe14aa0e4d11c475dc1edbfa78025d7b5c0d038c3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
