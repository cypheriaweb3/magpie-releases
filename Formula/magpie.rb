class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.752/magpie-cli-darwin-arm64"
      sha256 "1c0a312e4501a54028d5cd5a507394630bda66536c77ab09c9090734b549103e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.752/magpie-cli-darwin-amd64"
      sha256 "daa45a2feb1f11fea05a52ec93e8b140c9c5df34f964d110be07c369765eb996"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.752/magpie-cli-linux-arm64"
      sha256 "bfa6105ffd337fe5629f5089c3537539e00d928dba6e88c73d835b78dc0685f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.752/magpie-cli-linux-amd64"
      sha256 "f59a76d92d65d3bc37a898f42447178588695f6b3773c8e6a0bd399b29339bc9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
