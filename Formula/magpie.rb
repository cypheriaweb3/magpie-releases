class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.214/magpie-cli-darwin-arm64"
      sha256 "f83ba9b4236b15f58e112598a17fe1e410d12c1cf9d31ac4ab048a0fce93130b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.214/magpie-cli-darwin-amd64"
      sha256 "6ed34bdda00e1da8a602acc640c365f6f6491766a2c708e7b9d79d4be68931ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.214/magpie-cli-linux-arm64"
      sha256 "1f36dbda8554a7321135fab4118ac8276b25859cd961a48c41780849cdf244f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.214/magpie-cli-linux-amd64"
      sha256 "c56db61af60f4373e5e5137fbcebe9bc6d61d276b3249f11a50b142abbd0e5a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
