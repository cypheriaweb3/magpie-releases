class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.677/magpie-cli-darwin-arm64"
      sha256 "64d81361e6616199d6f5682a253a104ea446c7ef7bfde83d43973160ccb79033"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.677/magpie-cli-darwin-amd64"
      sha256 "ddfeada12c7a3ff3f91e1bf538bd0f3431f8034a12b84d9b370d99b6eeaedf86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.677/magpie-cli-linux-arm64"
      sha256 "918a61e1fe9108f575465f75a1b18df6d95ab25fd99e1448f90e0322f722218e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.677/magpie-cli-linux-amd64"
      sha256 "3a9c2906ac754f6ec596a06a3e910b671c10a668cffee138353ab788166d0d24"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
