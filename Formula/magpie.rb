class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.274/magpie-cli-darwin-arm64"
      sha256 "e89a133dd7b14ffeb8d722a4e8226b5e20f9bc2843d4dcbde556474d1819894f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.274/magpie-cli-darwin-amd64"
      sha256 "4337752c9b54df32a3ccc4f4399de224ebcb224c72f4695a155379011ecba7c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.274/magpie-cli-linux-arm64"
      sha256 "1af34e01491715d9925b56f5e8f64f899b427a720c714288056dab3e021a3670"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.274/magpie-cli-linux-amd64"
      sha256 "32b17dd5080e8357cfa5f4df54cafa731c6de4027fea4eadc7536dd0a8d967d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
