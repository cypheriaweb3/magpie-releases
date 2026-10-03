class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.736/magpie-cli-darwin-arm64"
      sha256 "9fcff38026f32d738055a47c38ac4201ea2090973009b117b8fdada701317226"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.736/magpie-cli-darwin-amd64"
      sha256 "874cdf90ba3265bf003185bcf9a443b6d23cdf626af27bc163ff4dbcd7e65ef1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.736/magpie-cli-linux-arm64"
      sha256 "8323b41b1c1b3221582ac93a0978b36b0cf3ffd503f060f1e95ff4cf51d51068"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.736/magpie-cli-linux-amd64"
      sha256 "837a8a2e11f478b4e84cf34f8b93ddf9eab0cc186348ce5b90ea2de898135c1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
