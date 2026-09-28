class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.233/magpie-cli-darwin-arm64"
      sha256 "208ddcb57822cb6ec6de2c92673a7c14a5b93ef200ac5c53289d1d19dd1bd61f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.233/magpie-cli-darwin-amd64"
      sha256 "98e8480af370b8ff89727884798aa71ce3193a6f94bf3a7740b427f77e9a3d94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.233/magpie-cli-linux-arm64"
      sha256 "9cc3f1830aad5d7775d5f86bf331848bd38d89fa9e5c3816468dfe7c8ccc0fb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.233/magpie-cli-linux-amd64"
      sha256 "55e928c96af06bfdc67a69a5d6c426a6814fd59758bafb999fb04049b45f9ca7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
