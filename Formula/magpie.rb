class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.751/magpie-cli-darwin-arm64"
      sha256 "95bcef8647650b85aecaa4818baaae3a9bb98663c87d9d5b8651eb5a1b67027d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.751/magpie-cli-darwin-amd64"
      sha256 "0232c95b8427bdf9aea9456cdd1ea2b1a93014009f1eb688a8caceea8cb8d8df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.751/magpie-cli-linux-arm64"
      sha256 "97abc4955954195f6990ee38b0912b7e5cc56e4e33ed17809963fc2bfb7bc5d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.751/magpie-cli-linux-amd64"
      sha256 "200940c430bf34dfad4e6c6528aee114fe87541d17c5ab8f4f6ce410ec41f4bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
