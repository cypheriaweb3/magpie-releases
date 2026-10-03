class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.710/magpie-cli-darwin-arm64"
      sha256 "3035eb58149a5856c62eac645d526139e4ee8351933cf359584b8867527bac8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.710/magpie-cli-darwin-amd64"
      sha256 "b72385a5aa4f244102b69c27283338c2772f52f735d0dfa44751dd0658f451cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.710/magpie-cli-linux-arm64"
      sha256 "e8d0219dffbefae08270efae20538d524deafb0be9a6d6b1329f88c2f888a8b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.710/magpie-cli-linux-amd64"
      sha256 "5766a1c71632f8766fb1749ddb31f7106ba94fddc3ba56e2c26d47aa0ca7a30d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
