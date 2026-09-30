class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.542/magpie-cli-darwin-arm64"
      sha256 "d536c32a4433d636082255b140cc55743ec65e9557f0af20c3b7208537f5b017"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.542/magpie-cli-darwin-amd64"
      sha256 "4dafc8300d50f3c7ecbea1fcfee0fada6d8b7cf5635ae48b282c246dabbdd3e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.542/magpie-cli-linux-arm64"
      sha256 "b82a57a3f86066dea4df077e5c0dc21e76ed4585f23e06e20b1f3d7d0abc05f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.542/magpie-cli-linux-amd64"
      sha256 "b9c7e4c59c32d8f0ad31b35ddeb95fdf89a6a644afc0fc92542a1d37198d39dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
