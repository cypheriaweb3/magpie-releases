class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.622/magpie-cli-darwin-arm64"
      sha256 "2ae3b3084945f24f2bedc52801353ff61711aaa4d32b932ccd0629c1d9b64c98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.622/magpie-cli-darwin-amd64"
      sha256 "0848f80476c41f0d366cd8cede411c48b7b4693c4ce220e8cca0359e28416949"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.622/magpie-cli-linux-arm64"
      sha256 "1f7abb2c2d71951a56eb55ea808ea05d9dfd79b550287621a6591b38226fd365"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.622/magpie-cli-linux-amd64"
      sha256 "c6c26cc4784bdd7cc1f9909cebcb1441ab0c9096a0771fc0d1fe4b4c3bec31b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
