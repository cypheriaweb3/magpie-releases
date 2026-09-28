class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.328/magpie-cli-darwin-arm64"
      sha256 "a34b1cd5e808aba182ca1cffb47bd879ae943954a33a66edba05d9eaf844e4e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.328/magpie-cli-darwin-amd64"
      sha256 "c7a7f74884b40e06bace2925104c401f4a74bba31ffba3aa7aa01243e073c99e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.328/magpie-cli-linux-arm64"
      sha256 "4b931df3bcb6e2f6b2ceb648c824044079f8d75e1e12a7b656ac7b59f1f65c16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.328/magpie-cli-linux-amd64"
      sha256 "2f533fb660146c73e09f687745c3f938c1995e819faf04ebd7a445a1a4781664"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
