class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.782/magpie-cli-darwin-arm64"
      sha256 "a554dc97435e77c9f75de8c7e384f7649d4f6ac5a35e0b321a0e1516047efa1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.782/magpie-cli-darwin-amd64"
      sha256 "4fc150984a113add56bc9143d573f480d2b9e0ddf7226abb18d2fb1d08d32162"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.782/magpie-cli-linux-arm64"
      sha256 "e6eaad1783c6c173229fc2b60555af96b7cebbda6e057809cc3dc4ae9084775e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.782/magpie-cli-linux-amd64"
      sha256 "a0ba7c75d64e107ec4fdbefdcc79b173e32063a4ce39ca514cfe14fa48941397"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
