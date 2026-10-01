class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.603/magpie-cli-darwin-arm64"
      sha256 "3c2397daeabd4948aef33e5f2c399b0960705602f07e8378ef54d3c12534bb4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.603/magpie-cli-darwin-amd64"
      sha256 "5e125c0317031350f016c8c3bbd0400da0e29a1e19f1a842c66872ecb9d27f85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.603/magpie-cli-linux-arm64"
      sha256 "584f45378bb8cb33ee82620fca4ddfc7a74ea0f458644f3f38e33cfd1afdfaef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.603/magpie-cli-linux-amd64"
      sha256 "0cbf56d9e6605ce00387c121b186fbfd87418cb41c43adebb22a6ac8650c6e46"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
