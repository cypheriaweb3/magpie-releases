class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.257/magpie-cli-darwin-arm64"
      sha256 "8d1fb3fe22d83a6263b946668349411ca5cb17e5bca0a4e320baca6e749ab95d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.257/magpie-cli-darwin-amd64"
      sha256 "6d395ce1704110bbc223bbdc8d31501f7d6cf1eb0aff88944557ce516dbd39e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.257/magpie-cli-linux-arm64"
      sha256 "d73a70c398895a995c856a83a2eaf4027cb0cdc809bb5d3c53acd44c0069b8c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.257/magpie-cli-linux-amd64"
      sha256 "4783c106d204345e0ed990fb8a31bc1323c25167e54fd99066939a77bc426bc8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
