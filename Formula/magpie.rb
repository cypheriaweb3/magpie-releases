class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.462/magpie-cli-darwin-arm64"
      sha256 "87a2a800a25c4a639b3af91560290d44edb7557b830579e365e051f6ffd6f400"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.462/magpie-cli-darwin-amd64"
      sha256 "a62135513a768c4e0f61764036f1c0d377af400fd3ebab4e163cf0fb08195e40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.462/magpie-cli-linux-arm64"
      sha256 "f045f877c07848a48003111a875975957d9bae400789bdaf375dde32abad0071"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.462/magpie-cli-linux-amd64"
      sha256 "b4fc45b212e13c898cef8726e3a00d88911b0ef4d6299d8d881d2d2a9bb4a397"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
