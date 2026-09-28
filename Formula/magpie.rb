class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.282/magpie-cli-darwin-arm64"
      sha256 "4ac1b138ca09fcef138f8501aaa10358d94119149739d116e3982720b2713ca5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.282/magpie-cli-darwin-amd64"
      sha256 "55cc4abcb432c3d8a6953fd76cb55d66c8fa7fc350d0d0accbef204516805954"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.282/magpie-cli-linux-arm64"
      sha256 "8311104c546c929f80d972537ab4bed7ee363b1aa0a783f585c11e9951c93b53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.282/magpie-cli-linux-amd64"
      sha256 "0157c4bd8394937ede16673e201c6c0dcfcc472ebb364bcd6e825d17508c7296"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
