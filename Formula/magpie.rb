class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.509/magpie-cli-darwin-arm64"
      sha256 "e4bc8bd3be08d8ee60a878c887e89a2dcefb7dedc92cac89f5c56fbe72386e31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.509/magpie-cli-darwin-amd64"
      sha256 "48637eaaedbfb5fa604057c6c54653da9262ef64d0376ed4dbc62a774f06cf95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.509/magpie-cli-linux-arm64"
      sha256 "3cd529cfcf393f35268ab4db386fc21e1afabf52ea91f1b341507f555559f228"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.509/magpie-cli-linux-amd64"
      sha256 "92521efb29a4a31e69e4da3c013a48ccfbd9ec5e563d6e29a05d9c72164bc4a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
