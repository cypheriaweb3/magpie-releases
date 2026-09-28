class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.245/magpie-cli-darwin-arm64"
      sha256 "63c42a280ddae7874af3beb615098d6b89866ac87213a838302fe22f6240b6ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.245/magpie-cli-darwin-amd64"
      sha256 "c0224bfecca800cd5fe5d53c166a2172a0a9a0387607dc76b509e558b997f6e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.245/magpie-cli-linux-arm64"
      sha256 "a586b71619ae09d93acd7a08bdef9d8fe593df536132789f0e3e371b6591dc70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.245/magpie-cli-linux-amd64"
      sha256 "585174035070dda3b87cb0ae1a1fdafc9dbb85cb91909d26abfd783e6a7f9e19"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
