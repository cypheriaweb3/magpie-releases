class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.627/magpie-cli-darwin-arm64"
      sha256 "65440962b0fd551c68756e0c0744213ce74b92a3e678f48c6b8edc22387b8906"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.627/magpie-cli-darwin-amd64"
      sha256 "be8b4cd0794dbc2d683872b1ad24ce6b5fa72c00277068a325f5ef2dabe6a547"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.627/magpie-cli-linux-arm64"
      sha256 "4d915f3986d73191256807024b9888ce46b7dcad18a4974e156e3cd88fb84c70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.627/magpie-cli-linux-amd64"
      sha256 "345dfd9902822699c14aacd5c44c1793432777654a4fccc9e94b88b34cf05129"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
