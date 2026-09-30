class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.469/magpie-cli-darwin-arm64"
      sha256 "d926be035c28da205207d8244ed07cfa17d35cdecd10eceac54289b81ae0ed1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.469/magpie-cli-darwin-amd64"
      sha256 "bd5e0cb73c6a7ab2e30624c9541f875ab5e5bfc6a2ff8eba95d5dcc9eaff9ef0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.469/magpie-cli-linux-arm64"
      sha256 "2d92b8bee38c5d52d694a1e0ba93fa0d1813ebb0c25c34669c113b58a9643e7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.469/magpie-cli-linux-amd64"
      sha256 "f9ff3348482ad0198aca5e628b6d9c7e18ff733510c76c1efcc97b429e7293f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
