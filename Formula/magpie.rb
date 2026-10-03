class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.713/magpie-cli-darwin-arm64"
      sha256 "b2d4d79038b9ba8d71428b31a0b720f23274d594fb9e1531493a7c20e4acc81e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.713/magpie-cli-darwin-amd64"
      sha256 "0dbdce999fb4d7c955c7e50ef9f0a4f0cfca7417b1dab7f84d3a55bf53c9f346"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.713/magpie-cli-linux-arm64"
      sha256 "278d20abf21abf6e40d5772b3a7bcd51a4001a3f20ad89ac99923735fbad5014"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.713/magpie-cli-linux-amd64"
      sha256 "b9884d8cc77a620fe5c233388884a93cc75057e80875fa5c3e81a8d6c1abfd56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
