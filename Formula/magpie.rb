class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.458/magpie-cli-darwin-arm64"
      sha256 "0c00fb8fca9bd546aa0be8fdbeadc95ef4e41e07abdaccef9385ba95874311ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.458/magpie-cli-darwin-amd64"
      sha256 "64f085ee11361d40cb7a5d525417283100e0200d104b328646b1aa42c817a643"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.458/magpie-cli-linux-arm64"
      sha256 "1d2564ed9acfc5a4fbc417056338be36d72a5fa58ddd3cb1990bd0c620d8ebc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.458/magpie-cli-linux-amd64"
      sha256 "3b6fe71ede1775a60b584f8b11fb13dd6826d4dc5d7f5e29f8d141a189c797ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
