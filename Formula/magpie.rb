class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.844/magpie-cli-darwin-arm64"
      sha256 "3d9e9217832a7d512d8ae9f17f5b3da6f496bca507de88841729df2558650ca5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.844/magpie-cli-darwin-amd64"
      sha256 "25383657f14734dd813aaabd75547607bc30cab8f04f7465c4a001d458f65efc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.844/magpie-cli-linux-arm64"
      sha256 "6bc0e93a944722452be6e642d141b75e3dad1015b0561f18f22fbdf4c05a00c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.844/magpie-cli-linux-amd64"
      sha256 "9ffd9005f8b3539922fa03c866c4601de780cd2eed6ee66f984475aa12d9f92c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
