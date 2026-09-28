class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.286/magpie-cli-darwin-arm64"
      sha256 "699a8b6ea11120b89d30a7e5418a12ae9662a299600533619029d9606dd6a878"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.286/magpie-cli-darwin-amd64"
      sha256 "69d6fa36d58bbb44b970ac2d316734633b05956e0dfcd2ad4d830b8da75aebfd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.286/magpie-cli-linux-arm64"
      sha256 "bdd646b893846f0f83e9071a1599d6a2f3ce9511355235d5df66032e899eb871"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.286/magpie-cli-linux-amd64"
      sha256 "de5cf4160dcbd1566f40bdc611f70c9b7d1262972aa52ffc71621888add26a24"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
