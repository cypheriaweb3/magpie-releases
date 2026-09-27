class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.202/magpie-cli-darwin-arm64"
      sha256 "95cf66ce5036e7c26726f11374b35a6d8ce43abd66547f1a889259d5f40781b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.202/magpie-cli-darwin-amd64"
      sha256 "36abfdffdbc66329f29aa9febb39b4566f0a9f43124f3e0dd0fb1bcd1cf72aae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.202/magpie-cli-linux-arm64"
      sha256 "cf3b8aff043e6dc5e58e362e4a8b0cb903f99cb1c0b390b6a4480d1cd36d8698"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.202/magpie-cli-linux-amd64"
      sha256 "892923e7f402eb82be317f3a77b4703f419d30614d808a5a2bb8c4ff0580e496"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
