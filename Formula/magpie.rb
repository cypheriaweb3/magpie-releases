class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.356/magpie-cli-darwin-arm64"
      sha256 "e2f723b27a0a9552056733dfd520f37f6bb6ad7e216999f0e15d46cbe475342f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.356/magpie-cli-darwin-amd64"
      sha256 "9ba488d3eb88b38a0351ad945c069f85e00a81e4d60d4878c076bbc3b4fd7558"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.356/magpie-cli-linux-arm64"
      sha256 "ae344f633194d0797de6881d7155ce008c4576169bd4444ab8cde91ce2b3acd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.356/magpie-cli-linux-amd64"
      sha256 "6b58671f329c6c8707c041bbd3a1a35a9c9b15cc0c7e3a71ee186c9772457969"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
