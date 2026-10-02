class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.680/magpie-cli-darwin-arm64"
      sha256 "e28e26917a792ba5b8eb8137c7c7fce6036c39c01828606c6694ff1799d9f16c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.680/magpie-cli-darwin-amd64"
      sha256 "6f7b4925adf78875c39ac9f25358661b6d1ea48e43e557beb3763e09f189e28a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.680/magpie-cli-linux-arm64"
      sha256 "a78462fa8c0fa84e17e30c4db20f87f34a5c768f74226a02ae9777d5997f0378"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.680/magpie-cli-linux-amd64"
      sha256 "7ad42f4d911029c002a3b4e621d55262a4f7ea4b4e3a2d4d71c7b4540532e229"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
