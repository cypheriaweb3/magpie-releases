class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.370/magpie-cli-darwin-arm64"
      sha256 "e2786be1f317c9e8a87d8184260e3a41ed9dc746424a2330d961153c1cf97350"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.370/magpie-cli-darwin-amd64"
      sha256 "6326d20f032c2076dfd829c10ec483dcd2646cf47edf244e5ab6360f9c1a3bce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.370/magpie-cli-linux-arm64"
      sha256 "8b5b303e6f33a5de262870412354b67fe53cebf1544cdfca16efb611cf4fac87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.370/magpie-cli-linux-amd64"
      sha256 "a03e8f67e5c78b64341acf7d420d455b6a06dc662d91fc89e6c75d55e971fb19"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
