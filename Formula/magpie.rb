class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.607/magpie-cli-darwin-arm64"
      sha256 "e62bb4a007ea2d4f6bade6e795b435163a5de4ac73a3f4d43c5fec6dc8939c6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.607/magpie-cli-darwin-amd64"
      sha256 "7f23c5d6707a30a973d4bbc58ded1cc48d76e714aff591d4ddb73f6f35a92bfe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.607/magpie-cli-linux-arm64"
      sha256 "06805f7f4f246fa5a35ce21cb7b253e2ed59992d46a6cd7d780f4717ec475305"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.607/magpie-cli-linux-amd64"
      sha256 "edfef10f358f3d419bdc0a8692b321151ab6dcb46e375ff7b4b335248b088461"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
