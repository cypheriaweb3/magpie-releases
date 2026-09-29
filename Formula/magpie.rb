class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.420/magpie-cli-darwin-arm64"
      sha256 "ef1529bcd6477426c97f37dcfb93948d0cde995d13d0a47dbf6f6f915b777dbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.420/magpie-cli-darwin-amd64"
      sha256 "f191f93bbc77722ac65777292d65cbfceb63be57c702c36d2a97911f0b88b009"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.420/magpie-cli-linux-arm64"
      sha256 "5d891a98877f8557391f5311b24cd442ae51f33340bae0048ddb4ebfce3604eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.420/magpie-cli-linux-amd64"
      sha256 "a8f900de07632024dea4185922b0bbfe24957cf93743029d3471336536244541"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
