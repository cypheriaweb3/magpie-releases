class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.778/magpie-cli-darwin-arm64"
      sha256 "7b9e6ba5817a1d958b43dec246ac4e8b5e451590f269e73e5033ee9a7a9194f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.778/magpie-cli-darwin-amd64"
      sha256 "0ed5d498b3ad4b172d042d567a0186333eb27a954c72f2cc5226ae073e33cb93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.778/magpie-cli-linux-arm64"
      sha256 "be7e2680d34351e4dca03c59efe5d56e1be2ccfb53a8c48ce5c540954f9efe30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.778/magpie-cli-linux-amd64"
      sha256 "f981fdabd27d191040fa205b43b742e453aef04d19bcd683187249bb560f4d27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
