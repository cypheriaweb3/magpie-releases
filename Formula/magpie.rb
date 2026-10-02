class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.650/magpie-cli-darwin-arm64"
      sha256 "4a4601bb70282e26725124afe2c3c1f81b13bbea23c15d9cd16ab8e02ef2413f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.650/magpie-cli-darwin-amd64"
      sha256 "44973983ade3385d72c8aea0f34183c77225d63d9bbd8a0eae4767a576115798"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.650/magpie-cli-linux-arm64"
      sha256 "f947446ea748c36a5adc020f109bafed641e81dd9e64ba9f0841185d2d8cb52e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.650/magpie-cli-linux-amd64"
      sha256 "768b48882672fac28435e97166555e1baf42b1cc22aefb321bcd97ccb8d673d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
