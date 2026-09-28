class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.334/magpie-cli-darwin-arm64"
      sha256 "27293d17b7ef75b96ad5ecb756452d54b0b0c437ea768d3991544493056045c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.334/magpie-cli-darwin-amd64"
      sha256 "f34555bb6efda707330389b1eec9007c098769a6bbb9573fd5e42eb71815cf1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.334/magpie-cli-linux-arm64"
      sha256 "9ddada00569320808029f7156fd54423d86a4f297b425a677684ac62116ac0f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.334/magpie-cli-linux-amd64"
      sha256 "44d920613023d5f651e16b5eed92a8661f52f0f54de02ecc492206194e910810"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
