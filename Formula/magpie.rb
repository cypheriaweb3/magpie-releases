class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.720/magpie-cli-darwin-arm64"
      sha256 "ba53202a42745527a34a46827133ecc0be5cfc669178b924145c06b717fd91f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.720/magpie-cli-darwin-amd64"
      sha256 "9e7e2e7e28585f4cd6314dbc120b019970fdaf02bffc45021ae950cfdc16acf4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.720/magpie-cli-linux-arm64"
      sha256 "58284a2e4564fc433ee7eedce7279cf5f81f76286c2638c2eba956bb2bc9b615"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.720/magpie-cli-linux-amd64"
      sha256 "cc8ddf0b943215f95bee3ce8fe291ac24fb381626ecd8ac711f2778c7ef77e12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
