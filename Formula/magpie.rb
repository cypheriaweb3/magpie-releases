class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.570/magpie-cli-darwin-arm64"
      sha256 "46059da4f8c23f6143408844212ed7421e605205641a5d6ed5cfce355aac9e16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.570/magpie-cli-darwin-amd64"
      sha256 "815cc5eb5b29ead652a9090f2a38d9527d17873034d07a72eacff3e780e38c2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.570/magpie-cli-linux-arm64"
      sha256 "dcc9698a66890a009242c377fdb82a71ad32fd6fe5e4163e141efa076a13138f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.570/magpie-cli-linux-amd64"
      sha256 "390aa34ec164299a31fd4a545634615aed7d3fccf17e8ecbe42c5fca4bd3c43e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
