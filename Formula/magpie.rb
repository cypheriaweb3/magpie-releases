class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.770/magpie-cli-darwin-arm64"
      sha256 "0a2ba0e50c3e4de042cb1f1b22b600c72a0ff89e9f60eab9cfd3d73cefc56658"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.770/magpie-cli-darwin-amd64"
      sha256 "3bed5998102dda22967d10df6f1e96c6e017ac6f684346bb632a1aaf7862a062"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.770/magpie-cli-linux-arm64"
      sha256 "119ae88260abebd89cf3bbe0225bf0f4a0df9b6ed290932e6632618b00628a67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.770/magpie-cli-linux-amd64"
      sha256 "7506a81c72cd8cfbd7f795aacb17fe5d902d712c2776c12c37786b3a0b1a53e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
