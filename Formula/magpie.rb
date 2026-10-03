class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.739/magpie-cli-darwin-arm64"
      sha256 "c01ccd3131595d8bbfad09d88c2531072b8326845607d2e683c7c36b81521629"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.739/magpie-cli-darwin-amd64"
      sha256 "5c57a0876e8b61696091e338364b6ed402db6ca98a0e2386efc16171cdbb163a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.739/magpie-cli-linux-arm64"
      sha256 "dde052966706f6d2b63c8ffa7df6f859c230082c80f2a6f49c7267ef12aeaf1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.739/magpie-cli-linux-amd64"
      sha256 "a7c10f222111ab33ceb7a7cc0a70fcbc9f52cc2202a20cea20f5e89dc3bf4cdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
