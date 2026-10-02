class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.679/magpie-cli-darwin-arm64"
      sha256 "9af9fe346b9cb776a2c831520e61bb9d7902c8c6e5478e7c7a7d2da282eab5d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.679/magpie-cli-darwin-amd64"
      sha256 "bc3b9ea1443916e10568db5ed18ec7deb3de8b0d7d4cc9d987c3fc6a7cdb3a0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.679/magpie-cli-linux-arm64"
      sha256 "a334b461d38721a51c2674992e7cd93142e6b254f8d2a983784f7197b0c2998c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.679/magpie-cli-linux-amd64"
      sha256 "751db803724a6b6fb395b40f4dbbb2cfb66569ba1186131f799fa03406e80981"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
