class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.814/magpie-cli-darwin-arm64"
      sha256 "4d3250b6a047b0fc08018ea813f7ee52d7462aa6c93913c5dd53051908d30688"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.814/magpie-cli-darwin-amd64"
      sha256 "b27b0f42a377151bfb2b8637654c33527a63a26d1b41dd35dc2242547e64cde3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.814/magpie-cli-linux-arm64"
      sha256 "0d192c094fc73e4fad57f898bf637391ba546e50235a1854de7a07c787016b82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.814/magpie-cli-linux-amd64"
      sha256 "2759f611b69ceb8d7ca9c14ca844bb217b04870e34a6389e93ebf98b72516c5b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
