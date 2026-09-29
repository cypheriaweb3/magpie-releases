class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.360/magpie-cli-darwin-arm64"
      sha256 "2f8882d4641216f525c477155bfa6f7a08234d8d01d55a4dd9f90c62be17bf2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.360/magpie-cli-darwin-amd64"
      sha256 "2ac0b31be3924dfd4c196955cc69ebb392d8edcedce2fe2755b9ab18e49df0fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.360/magpie-cli-linux-arm64"
      sha256 "ab7d5e9fabd6a4c9a7470286fd225a78778a25ecc35330eadc6d5743a378dd81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.360/magpie-cli-linux-amd64"
      sha256 "ff0b4da49ec06b76cd03d51a3e20e99a300e765fd52f9264c0cf2fdf9515e101"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
