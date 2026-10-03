class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.772/magpie-cli-darwin-arm64"
      sha256 "8c6eb6fd0867df7b2f64d22dcd5aef068c1fc49a478d1367633a45d48c13b975"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.772/magpie-cli-darwin-amd64"
      sha256 "872ca3b20b787fc06a7c080a0e4b7749e761ece592812c79a71a780c7915f5df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.772/magpie-cli-linux-arm64"
      sha256 "23775ae0c78a146c5f94c14febfad1dd49743942fa619ce51453354f57ed2c3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.772/magpie-cli-linux-amd64"
      sha256 "91f2e48b126b786b17cf13e6b9a8cb4f3461359ac44580d39162b34d1ea3a548"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
