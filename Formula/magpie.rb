class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.521/magpie-cli-darwin-arm64"
      sha256 "d4709c0986caf72a78f37ce188679ed3ee562f62e605aa9f79f08016669bc256"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.521/magpie-cli-darwin-amd64"
      sha256 "ab9b4aeba1b395b042710a32b1ef237b92b567a8161109b0c449c63396090f60"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.521/magpie-cli-linux-arm64"
      sha256 "71a2c9553c872dacc154456eab4098dab8d1e83b0bcbe15f74fbe4415ea42e07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.521/magpie-cli-linux-amd64"
      sha256 "8f727740197a569c2a13b124028a84b7f414a782de5f37e47a44a8595134d047"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
