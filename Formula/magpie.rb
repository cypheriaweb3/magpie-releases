class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.836/magpie-cli-darwin-arm64"
      sha256 "916ed262865e0b03cf749e47b120cd3b65d8ce47464a3bd8d2f7ce4aefe42196"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.836/magpie-cli-darwin-amd64"
      sha256 "1e5bbd6ea4c6e43e7aca5109d5e9ad76e7d820aebaebf8ef4f83256105126d0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.836/magpie-cli-linux-arm64"
      sha256 "73c638ab96ebfa6b422c6a5dd38997d5b65391ce0eee3afba01665032039d770"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.836/magpie-cli-linux-amd64"
      sha256 "1fc199d6df0ef82b338e32873cbcb96cb3c8bfcaaa36e7e48653a02570626998"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
