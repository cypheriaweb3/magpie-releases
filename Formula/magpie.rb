class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.387/magpie-cli-darwin-arm64"
      sha256 "cc8bbebd0490ac5110e63ae0cdca3a40f368a4e7a5054fe5a4982764b33f35ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.387/magpie-cli-darwin-amd64"
      sha256 "a6f957c43f1619eb5f3d5dd88c4da569eb541326531cfa8ca55eaba54b04fc88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.387/magpie-cli-linux-arm64"
      sha256 "d457725ffc3b0415b9adb2f5f7092358ada52a6b41fc11be84a594b46b96f53f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.387/magpie-cli-linux-amd64"
      sha256 "88b3aeea03c009cacc87c1f01cb6eaad182bc20812d82e6d829b66e3f528f1da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
