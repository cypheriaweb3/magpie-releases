class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.351/magpie-cli-darwin-arm64"
      sha256 "4020edb8747eb0c5f22179d51e93d6072ff00ccd1b9897b2ea35492e998d9024"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.351/magpie-cli-darwin-amd64"
      sha256 "e1bc573e9816fc21346d96de5f32933656bd5129faf0a22b0eeb8c196eeae6e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.351/magpie-cli-linux-arm64"
      sha256 "273799497b968349f9881427acf91ba5e94f3f240ce99e1bb3f81ba6011671d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.351/magpie-cli-linux-amd64"
      sha256 "782d9ec0ef566909bf67627280f38883d0a7722615e4dda5b9907b0abb67a0b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
