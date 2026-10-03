class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.737/magpie-cli-darwin-arm64"
      sha256 "fa62fc37b42d0d13cf256c31ee3b8ed050ec915018c827236c5cacc9658fbe63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.737/magpie-cli-darwin-amd64"
      sha256 "aa8a5d9913ac702f5e86c12236141f41e5c738bafeb54216e107b17761db6a5a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.737/magpie-cli-linux-arm64"
      sha256 "81f7bfc3dbeec6084c07ad0be3916433bd5c3431da82d547529bbc8e695da98a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.737/magpie-cli-linux-amd64"
      sha256 "b1df525c6d1160a8d3a149c9d4737c827d41a75ba1af7b2909eee588656464f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
