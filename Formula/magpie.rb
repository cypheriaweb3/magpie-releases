class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.168/magpie-cli-darwin-arm64"
      sha256 "0a214b27dd9e686cc4d5857cd2d31987f94742e9c5af3fff5766c49c542b661b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.168/magpie-cli-darwin-amd64"
      sha256 "0645bc81bd0bc3e12836c108552c408423e836f5c151cfb89943349401241887"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.168/magpie-cli-linux-arm64"
      sha256 "978af0115099bb0f2a99b27fbeb7d46e7eda362eec38def5321ca06f72c092e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.168/magpie-cli-linux-amd64"
      sha256 "8a026095a56073ac9da9128495bd53e72ad8dcfa50763db41d93076b2b5aad34"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
