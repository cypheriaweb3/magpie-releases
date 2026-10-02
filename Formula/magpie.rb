class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.628/magpie-cli-darwin-arm64"
      sha256 "206d5df351993ad7a9cf9e1f171ec42549fe5c14c67ff779c5119ae20b87895c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.628/magpie-cli-darwin-amd64"
      sha256 "b4aea6df7c43a12dcfe436b6db820997e831e91a067bddf077af4d5423b211a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.628/magpie-cli-linux-arm64"
      sha256 "ec20e4f2ee9e2cc41540a339cee7a6e1aaf6d7c56ebac242becbffbc776e6a0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.628/magpie-cli-linux-amd64"
      sha256 "ee18dfa3a349633bd4752a573935dd1b36d0c2866715b56e4e15261d15148787"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
