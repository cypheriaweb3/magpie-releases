class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.185/magpie-cli-darwin-arm64"
      sha256 "23ffec4b840ecbfd3b24f6a1622e2bec93cc76de52e30e66375696a0115eeb3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.185/magpie-cli-darwin-amd64"
      sha256 "511f70618b0666ca51e1fa676a225ac1d0af442ffeaa418526b88b3ea5caf4e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.185/magpie-cli-linux-arm64"
      sha256 "77b17f245fb9c3efc056e344634496382d71060d4f4407bd9f374e8d05728d03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.185/magpie-cli-linux-amd64"
      sha256 "7b1f4846ca8e72d7ccbccaae6da289ca5b84541d9d341482b6b25941843ca8b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
