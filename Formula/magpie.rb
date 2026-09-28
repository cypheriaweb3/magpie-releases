class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.322/magpie-cli-darwin-arm64"
      sha256 "b6ab6e53efb14ee2c48ded362a911186858653b45252502067b52e0364eaa4a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.322/magpie-cli-darwin-amd64"
      sha256 "181792b5288d516ff02676acf71ad1cf0f2b4aab8bde9c632df9cd67f8e8ac48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.322/magpie-cli-linux-arm64"
      sha256 "2c32150f51f7c7f2ad48976b6e1d8119f127ae3ad67826606c54a1ab24413060"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.322/magpie-cli-linux-amd64"
      sha256 "bdb70ce9c3c3a8bb69ecb93c8d476b442847622a2cd661706b9bfb7fe1f85122"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
