class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.366/magpie-cli-darwin-arm64"
      sha256 "bbcbbc7fb8ad6eff516c16ed23a85faa33605ef5c5864f4ff32ea25331e5d743"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.366/magpie-cli-darwin-amd64"
      sha256 "f1432054e94d743d85b4b7747595fbf64cef184948ce0cdb2879364b74d6ccd1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.366/magpie-cli-linux-arm64"
      sha256 "b976e9775936d17e73cee10032203218001ff9d243fefbe5bcf5da956e08dfd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.366/magpie-cli-linux-amd64"
      sha256 "b69828c88f535e8e2e487b47cc6795ad7610befc4d852177999a3d802013bbc7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
