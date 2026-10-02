class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.672/magpie-cli-darwin-arm64"
      sha256 "0be4db84f98b6b50c062bba706d65c7909b5fcbc8887bd6fba32cdbeb13dcc79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.672/magpie-cli-darwin-amd64"
      sha256 "cfc980fea6970c892a7e410f29e49d7037f3b77d1248fd6c686862c1e6dec528"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.672/magpie-cli-linux-arm64"
      sha256 "f2754ea273ff7acbe9946d4c637ccd2f5d47430b155859a51de0074525f65870"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.672/magpie-cli-linux-amd64"
      sha256 "7766a29f3822e7d61206c870f7faa9f50e4a36e7e1eb8f7c64569a8bab5fc242"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
