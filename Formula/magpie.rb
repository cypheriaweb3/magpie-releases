class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.368/magpie-cli-darwin-arm64"
      sha256 "7c9e3cdead004f130974984ef7aaacf01354021668ce8369ce43b916825741db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.368/magpie-cli-darwin-amd64"
      sha256 "3a8daefe2bd419766055fd5aaf2f1572fc8405948b402b08114a38b0a50f2c5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.368/magpie-cli-linux-arm64"
      sha256 "b3c462662558b935a9f42da264268616136709d6a9f0642d3c71aa969911bad9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.368/magpie-cli-linux-amd64"
      sha256 "aaaeff0453c12fd633e6bff85881e45f6622f9f44b003044c90248a934da5d14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
