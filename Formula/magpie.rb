class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.307/magpie-cli-darwin-arm64"
      sha256 "26fc86593b5bdd7c605d078b761e1c6b517efaee297cb62f39b595857179df66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.307/magpie-cli-darwin-amd64"
      sha256 "c7be52e35d87f4a214a6ee8401b8bc2099c4a425b5068ddca2189bcc364d13de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.307/magpie-cli-linux-arm64"
      sha256 "6b98a391598e56e6eea0de39fb809227c5ea52fffab64755386d99617b37e5a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.307/magpie-cli-linux-amd64"
      sha256 "d75fee0ec4c87c5436b7b4dca7989f1f40b837fe926fdae32507ddcaef27d092"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
