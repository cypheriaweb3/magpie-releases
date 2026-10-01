class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.552/magpie-cli-darwin-arm64"
      sha256 "acf9ad3df0efdaa9a402203305c68dc4c15db82e325d7fd7248c7a0744ce74d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.552/magpie-cli-darwin-amd64"
      sha256 "5765a1097d9f7c0064615f4fbe3e84e2e52ee196549322de36bcc6cd10bb5ae1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.552/magpie-cli-linux-arm64"
      sha256 "8de6f1c3bd4cec877b52f79f7cf36d1709d2488b7873dc4b4b2391d3559104e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.552/magpie-cli-linux-amd64"
      sha256 "d49def43753c12cc02199a9730629f585fb7784818a81ce09c00bd5cda1fdc49"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
