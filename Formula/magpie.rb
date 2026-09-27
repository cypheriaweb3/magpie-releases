class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.171/magpie-cli-darwin-arm64"
      sha256 "229ab712dca88debd8437e572c3f57c59242704ce13372472c775f69ed09f32e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.171/magpie-cli-darwin-amd64"
      sha256 "28cad91706821526506b40cea9167124b9f15e2c55cce53bc8d9c994bfbb511e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.171/magpie-cli-linux-arm64"
      sha256 "4545cc3d1f9cd7d8d7767e92959dc9115c1df4afa4dd99e9f46efc46d698f8fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.171/magpie-cli-linux-amd64"
      sha256 "a098cc61b6bfd7acc30c79159a0d646ce6ce7a302d797cf08964efd333b110fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
