class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.598/magpie-cli-darwin-arm64"
      sha256 "66e2163ee494fe7f07599bf59d6cec5da384592c532741c2b5998446c5af6b39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.598/magpie-cli-darwin-amd64"
      sha256 "6ce6b1a465b303eaf49cbb9b715f0fbe3139dd639b46f47e0c9172c6f9af4028"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.598/magpie-cli-linux-arm64"
      sha256 "ed288b4f8548dfffdac1eaed433c40c2c36470d508dac730f0ce5c911fc1f759"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.598/magpie-cli-linux-amd64"
      sha256 "eda37873b5a4fe12de801c647533262d38007c385cd764c78c4de2b583494dd7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
