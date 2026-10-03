class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.795/magpie-cli-darwin-arm64"
      sha256 "a1799bbd90e2bacd6a8f02f97de48e29c776b0da5717ed25b482c6b4cc63159c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.795/magpie-cli-darwin-amd64"
      sha256 "262942adc8a212fa56a7cd56ca33254845eabbddad0bc970ec3b8b48fa0ee959"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.795/magpie-cli-linux-arm64"
      sha256 "175e6b20daa6d2a9cd0562de948d438f133aff7beef688c3b7a3b2b205ac49e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.795/magpie-cli-linux-amd64"
      sha256 "9cf41075e682c62bd9aea0924dbc3e53268ad91845261e60cad78582b4815d2a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
