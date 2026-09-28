class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.258/magpie-cli-darwin-arm64"
      sha256 "593d4f33e0ce80119d1cbde4bc5ae41f5a6f6688f97c09142c075a278d34d60d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.258/magpie-cli-darwin-amd64"
      sha256 "589f86b603c51f4fb41944619e9d19079778642d5329477dd5e0698f2d0e43c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.258/magpie-cli-linux-arm64"
      sha256 "28bf7e329d50a634283a77d5c51f72bf68608ec1c62bd2b7424d92f3a0a05456"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.258/magpie-cli-linux-amd64"
      sha256 "a1e166e804f145596580df3637a032a3bc7fdf65845e972ca42b9ea77ee59ebf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
