class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.832/magpie-cli-darwin-arm64"
      sha256 "44b5e4bce01dee460d018b7e7d58daa54d62eae3adf1c61513862fafbf977d4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.832/magpie-cli-darwin-amd64"
      sha256 "637df1d13b0c0cf95d67aba1f5b77d6825f622a554348a4fdd3ea225a1a4dad8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.832/magpie-cli-linux-arm64"
      sha256 "32e69024d085d16ae6d8593e38b08a52277284516166fdcff469db3de04463f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.832/magpie-cli-linux-amd64"
      sha256 "6d4bfb79ed43e2a30ca4e7e1e99959c10317d9a93e31b0175409dfd1bd698690"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
