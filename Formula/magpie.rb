class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.534/magpie-cli-darwin-arm64"
      sha256 "e074846bbcd3c96a2bd6e37bc62d7fa8de5f2951a10abcc745cb039e895e94a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.534/magpie-cli-darwin-amd64"
      sha256 "52e300030e34ae241c615a3916a86ae572a10c12554720c17d320ffe541519d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.534/magpie-cli-linux-arm64"
      sha256 "958745c207f8558bb1e20ecf74e0d48430e128dce73d250f5688bc943266b007"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.534/magpie-cli-linux-amd64"
      sha256 "0988f73893e22a060778cc2838a9a5eb5c3caa51c2f3c442757f58aece758eb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
