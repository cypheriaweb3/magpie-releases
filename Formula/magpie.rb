class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.497/magpie-cli-darwin-arm64"
      sha256 "5e880d1b99b5f4f1750c48c986bba1e79f95ddb93ff22d8fc20d8ee54447ea22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.497/magpie-cli-darwin-amd64"
      sha256 "757849690acfec442a4e7ee32f09fa0f75fb2014abc7d90e51cb59171295eca6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.497/magpie-cli-linux-arm64"
      sha256 "194de79bf294b38c80fe8bbd99a2017440ee29bd98d2ed7c71c9df586fe8533f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.497/magpie-cli-linux-amd64"
      sha256 "9d85a111445e7b1777d7d0a4c758696431c199089ec5a3b99232fe9d354729a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
