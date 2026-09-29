class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.381/magpie-cli-darwin-arm64"
      sha256 "a0ad2031cabf5af55f9f9672e7aec8282b70a5c0aeafe4686b2247b7243105ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.381/magpie-cli-darwin-amd64"
      sha256 "437328484c528c1afb971b6d8286bf4557b26b38b9c4e8daf28e5184a78a9d5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.381/magpie-cli-linux-arm64"
      sha256 "5c4ec371f549c984effdcaa4c2bc51b8d6a1b03245b3c718c1e0718bea5dfd21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.381/magpie-cli-linux-amd64"
      sha256 "02525b3046e742986dd921923869a2d0b81e8b5af9d3921bba57c9f666698864"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
