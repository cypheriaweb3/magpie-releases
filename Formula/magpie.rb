class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.587/magpie-cli-darwin-arm64"
      sha256 "260af8b9fd99c48f9b9f2bad2c31284e10714068b07a90edca398ba4b12de117"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.587/magpie-cli-darwin-amd64"
      sha256 "4a978b31524459f83bcc1b4e9774dc61bae1c0f4a89a09f591278c2a47cfe298"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.587/magpie-cli-linux-arm64"
      sha256 "c0c46d0ea446a3572981cd4ba18fdaf1a51ad805ab837ba695164e529b93e98c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.587/magpie-cli-linux-amd64"
      sha256 "6d25129c26edfc62ec319fbb6adf12143d6cc781a748d3d02893d2e330ecf00d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
