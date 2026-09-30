class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.528/magpie-cli-darwin-arm64"
      sha256 "b06410bf6a1259ec094babf63cef008597f010e14780f7df8b2868ea3bb1c23f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.528/magpie-cli-darwin-amd64"
      sha256 "46df25dcc7ef07c6ccd0b5a5d25ac20ce5bf80046ddf69ad8b548915150c22de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.528/magpie-cli-linux-arm64"
      sha256 "14f5b187699cae44a9c56d0ad2b3494e3ef66a5eda34ea61d8fe9eda59005385"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.528/magpie-cli-linux-amd64"
      sha256 "4ca9fc59656f0ff4821a57af4f82d85be0cca0274721df8df3270c80ae41e6f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
