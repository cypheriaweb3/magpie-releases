class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.389/magpie-cli-darwin-arm64"
      sha256 "99af125994f29488cb41c3e413ea23cdf0ca2d1b8de37d80d09642151fb3a554"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.389/magpie-cli-darwin-amd64"
      sha256 "3ba8adab616aa148a2bb3e83191b9de51e4cc14027b29c9a468c56e53dd70e74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.389/magpie-cli-linux-arm64"
      sha256 "cccf9df2ca901b9f1e9858025f47a40d7a3cdeeb67bead3f8507c9a4b61b9466"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.389/magpie-cli-linux-amd64"
      sha256 "ae3195886e28edac250baeb15d330a37a5bbe56af4b6fd76c317b48490571588"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
