class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.583/magpie-cli-darwin-arm64"
      sha256 "bcda218f1f77c960f60b78df16c3a7347f8952ff2e97f0a4cf23f6e6b45c7cf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.583/magpie-cli-darwin-amd64"
      sha256 "51b01b7189df57ee51bf9dc3f4fb36f2ed3e7d1b33cff3bf09d4bf48378b6839"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.583/magpie-cli-linux-arm64"
      sha256 "3478633f2c626a5ffc3052506cdf4fd089bff5c8f6d6677aeb72d8a9ba34c979"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.583/magpie-cli-linux-amd64"
      sha256 "5bb4253418249db29f0851bccee5d4c3338741da959ee56b9eefd0638dd99d6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
