class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.536/magpie-cli-darwin-arm64"
      sha256 "7d2b03ae38179ac448c48fdef1e1a37c4ac935995e1434c69e28e45186f6506e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.536/magpie-cli-darwin-amd64"
      sha256 "b50c9ae03637c31b2e13b9886445fc148472eb372f38397d7ccf940d2324fa2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.536/magpie-cli-linux-arm64"
      sha256 "23da9ff4795e8aa0bd58e210d434ceaec5cf7d84e86f3d34ffb96b8982382b9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.536/magpie-cli-linux-amd64"
      sha256 "b0ef52f6c76757e7d28a78593a1245b472c31298b9dc395efb7db08a5ca7a035"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
