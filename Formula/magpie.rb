class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.234/magpie-cli-darwin-arm64"
      sha256 "004eea7019f485929bb936e9ec92f2b811fe44e499f03da968e3264d8100b4f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.234/magpie-cli-darwin-amd64"
      sha256 "56cd532a5dad2992a33a08b6581f0f73f5dc494913db780f7e13161f72fb0a93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.234/magpie-cli-linux-arm64"
      sha256 "3e9d11ee658b68a636594ce019fc68b98d85be45a4227bdb9d74a4ee4086551e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.234/magpie-cli-linux-amd64"
      sha256 "00621560231ff0b3801b0c255a1e00dccb208691b00e5422204ccff76ad27cb2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
