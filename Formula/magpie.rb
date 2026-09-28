class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.241/magpie-cli-darwin-arm64"
      sha256 "1d29f0cc4a1028a17d733d43198a2018fa10dd0c7f946edebbd1038fae5e4f45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.241/magpie-cli-darwin-amd64"
      sha256 "035e3538d44ee8523e02be6decffc62c40f6238a1cee5f4933a5fbb4525eccaf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.241/magpie-cli-linux-arm64"
      sha256 "3d56533e438e99c1a8d3b249268cb7365f7d9ee9acdf048937f684bc7811ab54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.241/magpie-cli-linux-amd64"
      sha256 "3996c0fbcf0ce3faf05d216a2fe806636e6e1e6db013b64919e23f540e5dad3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
