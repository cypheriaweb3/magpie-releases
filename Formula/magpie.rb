class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.592/magpie-cli-darwin-arm64"
      sha256 "d01c7eb24eeecff2db969bfc9509ab4854c5ad6bcc23019b90b7c416b6c9b751"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.592/magpie-cli-darwin-amd64"
      sha256 "d260386b4c3a6115768a8b1452abced91b6d7299e1a7af6b28e94a3efff53b1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.592/magpie-cli-linux-arm64"
      sha256 "9fe5785257db27ae0226e084b1135dbf34537a472199ee006a27b1e4b1071af8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.592/magpie-cli-linux-amd64"
      sha256 "b60adaa1791d0dda66e8bcd518beff9cd6cf1b7acc56d5a9b8cddb781734c95d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
