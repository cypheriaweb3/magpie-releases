class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.556/magpie-cli-darwin-arm64"
      sha256 "b3b799d5333e0ce7b274976c1bdee7e3a0a940490a3ba3aeb23423140e14d2c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.556/magpie-cli-darwin-amd64"
      sha256 "644fdcf4f661f57ffc28d46fc923ea0521454d2a129a7bce1655e6bbc2da1ebe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.556/magpie-cli-linux-arm64"
      sha256 "6961a471108510f5dd045ee17917816803355ccff43e08bf27bbad770f8f2417"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.556/magpie-cli-linux-amd64"
      sha256 "5a5d1ccec8b690043b0c1b271ff51ef5fbdbd90a99438473e4835fba60e7432f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
