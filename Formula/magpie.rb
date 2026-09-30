class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.543/magpie-cli-darwin-arm64"
      sha256 "0c76ad56bc84bcb19137f0927d8aacdf70cb8ad582885d810b73a4f540a8461e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.543/magpie-cli-darwin-amd64"
      sha256 "dbd2dda86df1b9882ae90d9cf4036a55fcec4efc605a494775a6dd499ec63586"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.543/magpie-cli-linux-arm64"
      sha256 "fb5cc649e26ae4fdddad357c27f69ea8a983c891fa6814bf5865f8d54201459e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.543/magpie-cli-linux-amd64"
      sha256 "c97538201e4719c158020bf298d2db37b0b4c2bb34e04f9f963cb339f4d4fea1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
