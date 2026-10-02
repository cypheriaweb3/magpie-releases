class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.671/magpie-cli-darwin-arm64"
      sha256 "3f8cc5823a50c09101e3e977b96a4aa8ee10bf44da1d71fb49297f17dd845a1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.671/magpie-cli-darwin-amd64"
      sha256 "a26cad359832a8f1e591883bb89e17b9bb5487bfdd40ecd1a730ae29bcc98fca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.671/magpie-cli-linux-arm64"
      sha256 "26434112f3c4cc1c338fb7de4c13eda54af3d7f3a4ddbe8c7b11d30b93a3ece9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.671/magpie-cli-linux-amd64"
      sha256 "1b480ecd8b634533b0b464c8a2994e1f01dbc2b89f9ce75678573a6588c2b176"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
