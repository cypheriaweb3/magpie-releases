class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.210/magpie-cli-darwin-arm64"
      sha256 "547e9a988f022746bb4d7058f801f8ac55b1fd77a6144b646adac696ddae0fe8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.210/magpie-cli-darwin-amd64"
      sha256 "2af564684f2962c90fb7e22393c10c94f733865f6b50c19f7dc36c19ba658e4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.210/magpie-cli-linux-arm64"
      sha256 "8460767c93431408fd867b152041831e3fd4b4d083739204919cc1cfe0a40f5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.210/magpie-cli-linux-amd64"
      sha256 "77a7ddd95817ec4c4fe10af893d4265f7af744b085700ef80b6dd565a4afdaab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
