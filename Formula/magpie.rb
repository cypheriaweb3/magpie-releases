class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.385/magpie-cli-darwin-arm64"
      sha256 "752dec5fe05c98a526f66809a8a2eb19ac71f7d5285aa42edde16d54c502a4b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.385/magpie-cli-darwin-amd64"
      sha256 "d6b4f7a368abd0b97219e703e96dfbaefa0942bde293279b9c92a3e4d06ad64a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.385/magpie-cli-linux-arm64"
      sha256 "7898b52d4193e05adf3607a75258ebea53f84cb84be8c8afca985c49fd1f1012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.385/magpie-cli-linux-amd64"
      sha256 "72a012dc278d6db49d2950335f3f4bba1bb995b8aca0d7673a471a60839bc1df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
