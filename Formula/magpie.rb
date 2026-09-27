class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.188/magpie-cli-darwin-arm64"
      sha256 "d7bc2d9c93788edbb383c8bc8de41264c4f8bba13576038992c9595ef1f35dc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.188/magpie-cli-darwin-amd64"
      sha256 "a8d7d7eb1e171cb203ab09d7f79e54fc66c4f75db57c2d26e2ed039b8cd979d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.188/magpie-cli-linux-arm64"
      sha256 "0e4fac7ee876788eeafe8fc3bd3de14bdd66b5908b7bb65b8be3b7ffb6eb4174"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.188/magpie-cli-linux-amd64"
      sha256 "8caa2705331bb5bc2ae896a92e3ab3c8cb4fd2d91fa66e1efa8fbad86f34701f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
