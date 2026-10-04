class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.837/magpie-cli-darwin-arm64"
      sha256 "ce152c02b68712a55df1418e8af27b64a5f9e6ca9373d54c562e4f9ceeaba3e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.837/magpie-cli-darwin-amd64"
      sha256 "7ebb4e8a1be694f0da6ce35f977f8b55d7b91c73fbf02a4ca8784a751512fc6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.837/magpie-cli-linux-arm64"
      sha256 "fc3b57aac5bc4c26c69ac194b728c487fa945c6cee2f9eb8c50aec555893b053"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.837/magpie-cli-linux-amd64"
      sha256 "c80f49ab7a7315ea9957ecd07a903fd631b9d61d0640ee930e500f8ee1cb43d5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
