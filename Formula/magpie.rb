class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.342/magpie-cli-darwin-arm64"
      sha256 "33ef9618c6e960e4cb08a4a233f0c5a166c94c1883b079429cecd3f7c0ed6dc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.342/magpie-cli-darwin-amd64"
      sha256 "7d94ac3d7926a181ef6489a38d44a324775ef51ee47cc8aa54a7369393621460"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.342/magpie-cli-linux-arm64"
      sha256 "7817c52ca1b145fabfc721458c4d090b9d68feac562453ab6e4bd8168f9ddc2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.342/magpie-cli-linux-amd64"
      sha256 "b97693b084e6b39fe75179c883eec42d8806bfb23900c0dbda720ff4b0898476"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
