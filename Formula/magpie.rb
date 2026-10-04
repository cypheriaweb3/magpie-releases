class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.827/magpie-cli-darwin-arm64"
      sha256 "b3cf3336e6b5097477955dcf8195f13d6cbdd3508530525e78230495a066db2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.827/magpie-cli-darwin-amd64"
      sha256 "a5262c8840302cbb51e32f1c108307d65a230519d75eacdc07553842e1aaa0e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.827/magpie-cli-linux-arm64"
      sha256 "1ff487105e5a47e3dbe5eb8f5057f7ad579e9ce0f2c4f920f38ebb66b5b4fe4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.827/magpie-cli-linux-amd64"
      sha256 "8ea25053ffa728b2c1fb89637fca4f47e494ecfd6be0771fc65c37a40311a684"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
