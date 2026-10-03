class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.695/magpie-cli-darwin-arm64"
      sha256 "9a4051131cb7a181b05122ad0653de44cddf84be893ffab780c340a28432077f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.695/magpie-cli-darwin-amd64"
      sha256 "91736fc1a93be30e36bb608011cb0f9464a4d6c8c4e46e1c01fc8ba75ded8bd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.695/magpie-cli-linux-arm64"
      sha256 "de8c851e55a68aab7622aa593b07d5cd38b086c5268828e9acc44bbcaafacb9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.695/magpie-cli-linux-amd64"
      sha256 "0394a08d8d08f3458de6002ae13bbddb0ac48e19192a022fde7792d16d2f34f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
