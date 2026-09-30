class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.491/magpie-cli-darwin-arm64"
      sha256 "8899473e8368dc147538b2d20568c355254a8e1e1d0ce0d439e31d940e08ad5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.491/magpie-cli-darwin-amd64"
      sha256 "ad28894b5e75d393003db81b466375e947b0b5a88a28fc920f2f2f34b64d1e8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.491/magpie-cli-linux-arm64"
      sha256 "06b8c4dc11ba27640267ad813bdef6cf56d6a8e99db516c43bb188ff8573071b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.491/magpie-cli-linux-amd64"
      sha256 "9a81160b36641741f059774a48aabba63f79b20e781c57f9299af0c672cb154a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
