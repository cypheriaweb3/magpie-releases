class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.741/magpie-cli-darwin-arm64"
      sha256 "a244a5f2f6ed99189492fa25c2981103c8c8c0f920dfd7d14f0b92d897e16e76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.741/magpie-cli-darwin-amd64"
      sha256 "2def5fc9ddd7dcf7eb6e35956af9098a36eedc49e032dc40e9eea3b206cfbbff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.741/magpie-cli-linux-arm64"
      sha256 "d1357eb4b0a5ddc513d024cda8694ec0784004e9603c79f44beaa486ce1b0d86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.741/magpie-cli-linux-amd64"
      sha256 "e133b56db21636d8e8693b4b56b03193d6a2c282e722eb32bb2d374c7150c55a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
