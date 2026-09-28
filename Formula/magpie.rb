class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.320/magpie-cli-darwin-arm64"
      sha256 "1a8233f60230438b93d5e228d8cf97af39cec45de59c80cd883620c888fd6f0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.320/magpie-cli-darwin-amd64"
      sha256 "64ca4110433c8a6e7d1aa784007adcbbb68b4f5b19fb8d6bae23e831a012141f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.320/magpie-cli-linux-arm64"
      sha256 "7c527a8c953bacd45caf9c23e281ae958f098481c64fbb1bf20f3015f06fb490"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.320/magpie-cli-linux-amd64"
      sha256 "93a55e57324a8f088527e31f61c6dd3ade5b63ad9b8cb1882f73429fd34f868d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
