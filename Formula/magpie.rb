class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.539/magpie-cli-darwin-arm64"
      sha256 "471c3f6f975ac69e465207d9bbc5a5f12071494cc5cb3a89aaf89bb812231b31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.539/magpie-cli-darwin-amd64"
      sha256 "a45804e4ae6a13602c0a5faf38f65ce42d4ebaf71096dc8dc9492fc27c59690f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.539/magpie-cli-linux-arm64"
      sha256 "bb0f2545c6504bf3d505998a11e143ad828e52ed7387e98547c560080f2c8c52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.539/magpie-cli-linux-amd64"
      sha256 "969bc895cd4bf4acb8775b62cdbf0e87c85dc365496ddc2a52cef7fabdafa5e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
