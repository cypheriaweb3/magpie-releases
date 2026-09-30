class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.537/magpie-cli-darwin-arm64"
      sha256 "1b7776979a9cdf2f123b456052ca1913d5d0ac4278b0b85bf4a94c7330aabccc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.537/magpie-cli-darwin-amd64"
      sha256 "023b2ede28843449d376d39996bf8283b17d9099fe5af19fbc71957d61636d4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.537/magpie-cli-linux-arm64"
      sha256 "b675c226ff1e6f6cf08852726cbfab9f10774930e43633933fc78e5ee12c2643"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.537/magpie-cli-linux-amd64"
      sha256 "4ec1bad6e0288044330f63698ea437045a7ff7a217aee00c1a488d68200d6820"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
